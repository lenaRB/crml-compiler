model TwoTanksRequirements

record TankModel
 Real tankVolume;
end TankModel;
parameter Integer N;
input TankModel tm  [N] ;

 CRML.ETL.Types.Boolean4 R1 = CRML.ETL.Types.cvBooleanToBoolean4(tm[1] .tankVolume>= 7.5); 
 CRML.ETL.Types.Boolean4 R2 = CRML.ETL.Types.cvBooleanToBoolean4(tm[2] .tankVolume>= 7.5); 
end TwoTanksRequirements;