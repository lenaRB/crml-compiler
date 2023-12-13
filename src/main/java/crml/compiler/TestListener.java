package crml.compiler;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

import org.junit.platform.commons.PreconditionViolationException;
import org.junit.platform.engine.TestExecutionResult;
import org.junit.platform.engine.UniqueId;
import org.junit.platform.engine.TestExecutionResult.Status;
import org.junit.platform.launcher.TestExecutionListener;
import org.junit.platform.launcher.TestIdentifier;
import org.junit.platform.launcher.TestPlan;

import com.aventstack.extentreports.AnalysisStrategy;
import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.reporter.ExtentSparkReporter;

import static com.aventstack.extentreports.Status.FAIL;
import static com.aventstack.extentreports.Status.INFO;
import static com.aventstack.extentreports.Status.WARNING;

public class TestListener implements TestExecutionListener  {

    private final ExtentSparkReporter reporter = new ExtentSparkReporter("build"+ java.io.File.separator+ "test_report.html");
    private final ExtentReports extentReport = new ExtentReports();
    private static final Map<TestIdentifier, TestExecutionResult> RESULTS = new HashMap<>();
    private static final Map<TestIdentifier, String> SKIPPED = new HashMap<>();

    @Override
    public void testPlanExecutionStarted(TestPlan testPlan) {
        this.extentReport.attachReporter(reporter);
        this.extentReport.setAnalysisStrategy(AnalysisStrategy.CLASS);
        testPlan.getChildren(getRoot(testPlan)).forEach(testIdentifier -> {
            RESULTS.put(testIdentifier, null);
        });

    }

    @Override
    public void testPlanExecutionFinished(TestPlan testPlan) {
        testPlan.getChildren(getRoot(testPlan)).forEach(klass -> {
            if (SKIPPED.containsKey(klass)) {
                extentReport.createTest(getKlassName(klass.getUniqueId())).skip(SKIPPED.get(klass));
            } else if (RESULTS.containsKey(klass)) {
                final ExtentTest testKlass = extentReport.createTest(getKlassName(klass.getUniqueId()));
                testPlan.getDescendants(klass).forEach(test -> processTestNode(testKlass, test));
            }
        });
        extentReport.flush();
    }

    private void processTestNode(ExtentTest testKlass, TestIdentifier test) {
        final ExtentTest node = testKlass.createNode(test.getDisplayName());
        if(test.isContainer()){
            return;
        }
        if (SKIPPED.containsKey(test)) {
            node.skip(SKIPPED.get(test));
            return;
        }
        final TestExecutionResult testResult = RESULTS.get(test);
        if (testResult == null) {
            node.log(INFO, "No test results found");
            return;
        }
       
        if(testResult.getStatus()==Status.SUCCESSFUL)
            node.pass(testResult.toString());
        else if(testResult.getStatus()==Status.ABORTED)
            node.log(WARNING, testResult.toString());
        else if(testResult.getStatus()==Status.FAILED){
            node.fail(testResult.toString());
            if(testResult.getThrowable().isPresent())
            node.log(FAIL, testResult.getThrowable().get());
        }
        else 
            throw new PreconditionViolationException("Unsupported execution status:" + testResult.getStatus());
    }

    @Override
    public void dynamicTestRegistered(TestIdentifier testIdentifier) {
    }

    @Override
    public void executionSkipped(TestIdentifier testIdentifier, String reason) {
        SKIPPED.put(testIdentifier, reason);
    }

    @Override
    public void executionStarted(TestIdentifier testIdentifier) {
    }

    @Override
    public void executionFinished(TestIdentifier testIdentifier, TestExecutionResult testExecutionResult) {
        RESULTS.put(testIdentifier, testExecutionResult);
    }

    private String getKlassName(String uniqueId) {
        return getKlassName(UniqueId.parse(uniqueId));
    }

    private String getKlassName(UniqueId uniqueId) {
        return uniqueId
                .getSegments().stream()
                .filter(segment -> segment.getType().equals("class"))
                .map(UniqueId.Segment::getValue)
                .collect(Collectors.joining());
    }

    private TestIdentifier getRoot(TestPlan testPlan) {
        return testPlan.getRoots().stream().findFirst().orElseThrow();
    }
    
}
