REM run this to download the files and compile everything
@echo on

REM run the parser jar on tests
java -cp "jars/antlr-4.9.2-complete.jar;build/crml_parser.jar" crml_parser.GrammarTest ./tests

pause
