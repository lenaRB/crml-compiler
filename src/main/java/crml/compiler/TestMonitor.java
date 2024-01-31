package crml.compiler;

import java.lang.reflect.Field;

import org.junit.jupiter.api.extension.AfterEachCallback;
import org.junit.jupiter.api.extension.ExtensionContext;

public class TestMonitor implements AfterEachCallback  {
    @Override
    public void afterEach(final ExtensionContext context) throws Exception {
        Object testInstance = context.getRequiredTestInstance();

        System.out.println("--------DEBUG");

        try{
         System.out.println("Instance name :" + testInstance.getClass().getName());
         Field resultField = testInstance.getClass().getDeclaredField("files");
         String resultValue = (String) resultField.get(testInstance);
         System.out.println("---------- Value of result: " + resultValue);
        } catch (Exception e) {
           System.out.println("ERROR-------- " + e.getMessage());
        }

        
    }  
}
