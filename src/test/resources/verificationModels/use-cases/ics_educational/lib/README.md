To load the model in OpenModelica, drag the following files into the OMEdit interface:
* ThermoSysPro.mo
* lib/BFE/package.mo
* cooling_system/package.mo
* CRML.mo (only for the corrected version)

From the model tree in OMEdit...
* The behavior models of the SRI are located in cooling_system/Behavior/SRIN4_v4:
  * **SRI** is the model that will be provided to the students.
  * **SRI_corrige** is the corrected model (the main difference lies in the cmdVannes block).
  * The model **SRI_init** can be ignored (it is not required for simulation with OpenModelica).
* The verification models (scenarios, requirements...) are located in cooling_system/Verification/:
  * **Verif** (and everything it contains) will be provided to the students.
  * **Verif_corrige** (and everything it contains) is the corrected model.