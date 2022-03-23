model SystemModelTwoTanks
TwoTanksExample.Design.TwoTanksDesign system;
TwoTanksRequirements ttr (tm={TwoTanksRequirements.TankModel(waterLevel = system.tank1.levelOfLiquid, tankVolume=system.tank1.area*system.tank1.height), 
  TwoTanksRequirements.TankModel(waterLevel = system.tank2.levelOfLiquid, tankVolume=system.tank2.area*system.tank2.height)});



end SystemModelTwoTanks;