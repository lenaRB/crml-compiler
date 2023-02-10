# crml-compiler

## Download it via github actions

Go to: https://github.com/lenaRB/crml-compiler/actions then click on the last green action and download the artifact.

Unzip it to some place and run:
```
java -jar crml-compiler-all.jar c:/path/to/girepo/crml-compiler/tests/unit
```
A directory generated/ will be created and for each crml 
test in the directory above a Modelica file will be created 
in the generated/ directory.

## Build on Linux & MacOS
To build and run the tests of the parser on the crml files
```
# build the parser/translator and run the tests
make
# to clean the repository
make clean
```

## Build on Windows
To build and run the tests of the parser/translator on the crml files
```
project-run.bat
REM to clean call: project-clean.bat
```

# CRML specification

The documentation for CRML can be found [HERE](
# CRML Language specification

Author Daniel Bouskela, EDF


| Version | Date | Notes|
| ------ | ----- | -----|
|1.0	|22/08/2022	|First final version released|
|1.1	|06/12/2022	|Addition of keyword new. Removal of keyword nil. Use of keyword external is modified.|

## Contents

[Syntax](https://github.com/lenaRB/crml-compiler/language_specification/syntax.md)
