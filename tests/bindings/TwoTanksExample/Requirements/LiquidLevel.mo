within TwoTanksExample.Requirements;

model LiquidLevel "The level of the liquid shall never exceed 80% height"
 extends VVDRlib.Verification.Requirement;
 input Real waterLevel;
 //input Real tankVolume;
 parameter Real tankVolume = 2;
 equation
  status = if (waterLevel < 0.8*tankVolume) then
   VVDRlib.ReqStatus.NOT_VIOLATED else VVDRlib.ReqStatus.VIOLATED;
end LiquidLevel;