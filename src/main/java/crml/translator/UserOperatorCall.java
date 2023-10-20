package crml.translator;
import java.util.List;

import grammar.crmlParser;
import grammar.crmlParser.ExpContext;

public class UserOperatorCall {
    public UserOperatorCall(String string, List<ExpContext> args2) {
        this.name=string;
        this.args=args2;
    }
    
    String name;
    List<crmlParser.ExpContext> args;
}
