import math
import matplotlib.pyplot as plt
import OMSimulator as oms
import numpy as np
import time

oms.setCommandLineOption("--suppressPath=true --algLoopSolver=kinsol --dumpAlgLoops=true")
oms.setTempDirectory("/Users/olero90/eclipse-workspace/crml-compiler/SSP_example/")

# redirect logging to file and limit the file size to 65MB
oms.setLogFile('mc.log', 65)
print(oms.version)

model = oms.newModel('SRI')
root = model.addSystem('root', oms.Types.System.WC)
root.addSubModel('system', 'SRIN4_0v3_SRI_0v3_0init.fmu')

model.resultFile = '' # no result file
model.instantiate()

model.instantiate()
model.initialize()

model.terminate()
model.delete()
