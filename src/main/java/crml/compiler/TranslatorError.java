package crml.compiler;


import org.antlr.v4.runtime.RuleContext;

public class TranslatorError {

    RuleContext ctx;
    String msg;
	TranslatorError (RuleContext ctx, String msg) {
		this.ctx = ctx;
		this.msg = msg;
	}
}
