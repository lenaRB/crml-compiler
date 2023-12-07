package crml.compiler;

import org.junit.platform.engine.TestExecutionResult;
import org.junit.platform.launcher.TestExecutionListener;
import org.junit.platform.launcher.TestIdentifier;
import org.junit.platform.launcher.TestPlan;

public class TestListener implements TestExecutionListener  {

    Boolean passed = true;

     @Override
    public void executionFinished(TestIdentifier testIdentifier,
            TestExecutionResult testExecutionResult) {

        if (testExecutionResult.getStatus() == TestExecutionResult.Status.FAILED)
            passed = false;
        System.out.println("---" + testIdentifier.getDisplayName());
    }

     @Override
    public void executionStarted(TestIdentifier testIdentifier){
        System.out.println("---" + testIdentifier.getDisplayName());
    }
    
    @Override
    public void testPlanExecutionFinished(TestPlan testPlan) {
        if (!passed) {
            System.out.println("!!!");
            System.out.println("Tests NOT passed!");
            System.out.println("!!!");
        } else {
            System.out.println("All tests passed!");
        }
    }

    
}
