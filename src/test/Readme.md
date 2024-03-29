## Test structure

The JUnit test suite takes each use case and goes through the following steps:

- Translate model to Modelica 
- Load Model and check it
- If the corresponding system model is present simulate model and compare result file 

For each model the following files are generated:

- ```model.mo``` : the translated crml model
- ```model_load.mos``` : the script for loading the crml model
- ```moddel_external.txt```: list of external variables
- ```model_simulate.mos```: script for simulating the system and comparing results

When adding a new test case:

- the CRML Model should be added to the ```testModels``` folder
- the simulation models and comparison results should be added ```verificationModels``` with the following structure:
```
    verificationModels
      | <test_folder>/<model>_validation - these files will be copied into the test directory 
          | model_validation.mo - contains the overall system to be simulated
          | ... - any other files necessary
    ref_results
       | <test_folder>/<model>_verif_ref.mat - the file containing the reference results
    
```

Check the ```Boolean_accumulation```example for reference

## Running JUnit tests

To load and simulate models you need to have the [OpenModelica](https://github.com/OpenModelica/OpenModelica) compiler installed 
