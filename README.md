# crml-compiler


## Download it via github actions

Go to: [![Makefile CI](https://github.com/lenaRB/crml-compiler/actions/workflows/makefile.yml/badge.svg)](https://github.com/lenaRB/crml-compiler/actions/workflows/makefile.yml) then click on the last green action and download the artifact.

Unzip it to some place and run:
```
java -jar crml-compiler-all.jar --testsuite
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

The documentation for CRML can be found [HERE](https://github.com/lenaRB/crml-compiler/tree/main/language_specification)

## Diagram Generator

In the `Diagram generator` folder, you will find the CRML code diagram generator along with its supporting files.  
For detailed instructions on how to use it, please refer to the [`instruction.md`](Diagram%20generator/instruction.md) file inside the folder.

