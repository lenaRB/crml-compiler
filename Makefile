# Makefile 
.PHONY : all runtool test clean

ifeq (MINGW,$(findstring MINGW,$(shell uname)))
PATH_SEPARATOR=;
else
PATH_SEPARATOR=:
endif


ANTLR_FILES=build/crml/crml.tokens \
			build/crml/crml.interp \
			build/crml/crmlLexer.interp \
            build/crml/crmlLexer.tokens

JAVA_FILES= build/crml/crmlBaseVisitor.java \
			build/crml/crmlLexer.java \
			build/crml/crmlListener.java \
			build/crml/crmlVisitor.java \
			build/crml/crmlBaseListener.java \
			build/crml/crmlParser.java			

JAVA_MAIN=  src/crml_parser/crmlListenerImpl.java \
	    		src/crml_parser/GrammarTest.java

CLASS_FILES=build/crml/crmlBaseVisitor.class \
			build/crml/crmlLexer.class \
			build/crml/crmlListener.class \
			build/crml/crmlVisitor.class \
			build/crml/crmlBaseListener.class \
			build/crml/crmlParser.class \
			build/crml_parser/GrammarTest.class

# build and test the crml parser
test: all
	java -cp "jars/antlr-4.9.2-complete.jar$(PATH_SEPARATOR)build/crml_parser.jar" crml_parser.GrammarTest ./tests/examples

# generate class files
$(CLASS_FILES): build $(JAVA_FILES) $(JAVA_MAIN)
	javac -d build -cp jars/antlr-4.9.2-complete.jar $(JAVA_FILES) $(JAVA_MAIN)

all: build jars build/crml_parser.jar jars/antlr-4.9.2-complete.jar

# download antlr jars
jars/antlr-4.9.2-complete.jar: jars
	cd jars && curl -O https://www.antlr.org/download/antlr-4.9.2-complete.jar

jars:
	mkdir -p jars

build:
	mkdir -p build

# create a jar with the parser files
build/crml_parser.jar: $(CLASS_FILES)
	jar cf build/crml_parser.jar -C build crml/ -C build crml_parser/ 

# generate all the needed Java files from the grammar
# see the available options here: https://github.com/antlr/antlr4/blob/master/doc/tool-options.md
$(ANTLR_FILES) $(JAVA_FILES): jars jars/antlr-4.9.2-complete.jar grammar/crml.g4 grammar/modelica.g4
	java -cp jars/antlr-4.9.2-complete.jar org.antlr.v4.Tool -Dlanguage=Java -long-messages -Xlog -listener -visitor -Xexact-output-dir -o build/crml/ -lib grammar grammar/crml.g4

clean:
	rm -rf build jars antlr-*.log

