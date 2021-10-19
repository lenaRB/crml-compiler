REM run this to download the files and compile everything
@echo on

SET AJARS=jars/antlr-4.9.2-complete.jar;jars/log4j-api-2.14.1.jar;build/crmlTools.jar

REM run the parser jar on tests
java -cp "%AJARS%" crml.parser.Main ./tests/examples

pause
