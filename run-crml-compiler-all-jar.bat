
REM usage: .\run-crml-compiler-all.bat .\src\test\resources\testModels\libraries\ETL_test\DecideOver.crml

::java -jar crml-compiler-all.jar --testsuite > log.txt 2>&1

java -jar crml-compiler-all.jar --testsuiteETL > log.txt 2>&1

::java -jar crml-compiler-all.jar .\src\test\resources\testModels\spec-doc-examples\BooleanAccumulation.crml > log.txt 2>&1

