REM run this to download the files and compile everything
@echo off
set JAVA_FILES=build/crml/crmlBaseVisitor.java build/crml/crmlLexer.java build/crml/crmlListener.java build/crml/crmlVisitor.java build/crml/crmlBaseListener.java build/crml/crmlParser.java
set JAVA_MAIN=src/crml/parser/Main.java src/crml/translator/crmlListenerImpl.java src/crml/translator/crmlVisitorImpl.java src/crml/translator/Value.java src/crml/translator/Main.java

REM create the build directory
if not exist ".\build\" (
  echo Creating the build directory
  md build
)

REM create the jars directory
if not exist ".\jars\" (
  echo Creating the jars directory
  md jars
)

REM download the ANTLR jars
if not exist ".\jars\antlr-4.9.2-complete.jar" (
  echo Fetching antlr jars
  curl -O https://www.antlr.org/download/antlr-4.9.2-complete.jar
  move /Y .\antlr-4.9.2-complete.jar .\jars\
)

REM download the ANTLR jars
if not exist ".\jars\log4j-slf4j-impl-2.14.1.jar" (
  echo Fetching log4j2 jars
  curl -O https://laotzu.ftp.acc.umu.se/mirror/apache.org/logging/log4j/2.14.1/apache-log4j-2.14.1-bin.zip
  move /Y .\apache-log4j-2.14.1-bin.zip .\jars\
  jar xvf .\jars\apache-log4j-2.14.1-bin.zip
  move /Y .\apache-log4j-2.14.1-bin\*.* .\jars\
  rmdir /S /Q .\apache-log4j-2.14.1-bin
)

@echo on

SET JJARS=jars/antlr-4.9.2-complete.jar;jars/log4j-api-2.14.1.jar

REM generate the code from the grammar
java -cp "%JJARS%" org.antlr.v4.Tool -Dlanguage=Java -long-messages -Xlog -listener -visitor -Xexact-output-dir -o build/crml/ -lib grammar grammar/crml.g4

REM compile the parser
javac -d build -cp "%JJARS%" %JAVA_FILES% %JAVA_MAIN%

REM build the parser jar
jar cf build/crmlTools.jar -C build crml/

pause
