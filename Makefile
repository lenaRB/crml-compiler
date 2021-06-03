# Makefile 
.PHONY : all runtool test clean

ifeq (MINGW,$(findstring MINGW,$(shell uname)))
PATH_SEPARATOR=;
else
PATH_SEPARATOR=:
endif

ifeq (,$(TEST))
TEST=./tests
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

JAVA_MAIN=  src/crml/parser/Main.java \
						src/crml/translator/crmlListenerImpl.java \
						src/crml/translator/crmlVisitorImpl.java \
						src/crml/translator/Main.java \
						src/crml/translator/Value.java

CLASS_FILES=build/crml/crmlBaseVisitor.class \
			build/crml/crmlLexer.class \
			build/crml/crmlListener.class \
			build/crml/crmlVisitor.class \
			build/crml/crmlBaseListener.class \
			build/crml/crmlParser.class \
			build/crml/parser/Main.class \
			build/crml/translator/Value.class \
			build/crml/translator/Main.class \
			build/crml/translator/crmlListenerImpl.class \
			build/crml/translator/crmlVisitorImpl.class 

# build and test the crml parser
test: all
	java -cp "jars/antlr-4.9.2-complete.jar$(PATH_SEPARATOR)build/crmlTools.jar" crml.parser.Main ./tests/examples

# build and run one test of the crml parser
testone: all
	java -cp "jars/antlr-4.9.2-complete.jar$(PATH_SEPARATOR)build/crmlTools.jar" crml.parser.Main $(TEST)
	
# translate 
translateall: all
	java -cp "jars/antlr-4.9.2-complete.jar$(PATH_SEPARATOR)build/crmlTools.jar" crml.translator.Main ./tests/unit

# generate class files
$(CLASS_FILES): build $(JAVA_FILES) $(JAVA_MAIN)
	javac -d build -cp jars/antlr-4.9.2-complete.jar $(JAVA_FILES) $(JAVA_MAIN)

all: build jars build/crmlTools.jar jars/antlr-4.9.2-complete.jar

# download antlr jars
jars/antlr-4.9.2-complete.jar: jars
	cd jars && curl -O https://www.antlr.org/download/antlr-4.9.2-complete.jar

jars:
	mkdir -p jars

build:
	mkdir -p build

# create a jar with the parser files
build/crmlTools.jar: $(CLASS_FILES)
	jar cf build/crmlTools.jar -C build crml/

# generate all the needed Java files from the grammar
# see the available options here: https://github.com/antlr/antlr4/blob/master/doc/tool-options.md
$(ANTLR_FILES) $(JAVA_FILES): jars jars/antlr-4.9.2-complete.jar grammar/crml.g4 grammar/modelica.g4
	java -cp jars/antlr-4.9.2-complete.jar org.antlr.v4.Tool -Dlanguage=Java -long-messages -Xlog -listener -visitor -Xexact-output-dir -o build/crml/ -lib grammar grammar/crml.g4

clean:
	rm -rf build jars antlr-*.log

