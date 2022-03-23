within TwoTanksExample.UserDefinedVerificationModels;

model UDVModel1
  extends VVDRlib.Verification.VerificationModel;
  TwoTanksExample.Design.TwoTanksDesign twoTanksDesign(source.flowLevel = overflow.flowLevel)  annotation(
    Placement(visible = true, transformation(origin = {40, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
   TwoTanksExample.Scenarios.Overflow overflow annotation(
    Placement(visible = true, transformation(origin = {-50, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
   TwoTanksExample.Requirements.Volume_of_a_tank volume_of_a_tank_autogen_bind_0(tankVolume = twoTanksDesign.tank2.volume)  annotation(
    Placement(visible = true, transformation(origin = {-24, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
   TwoTanksExample.Requirements.Volume_of_a_tank volume_of_a_tank_autogen_bind_1(tankVolume = twoTanksDesign.tank1.volume) annotation(
    Placement(visible = true, transformation(origin = {-24, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoTanksExample.Requirements.LiquidLevel liquidLevel1_autogen_bind_0(waterLevel = twoTanksDesign.tank2.levelOfLiquid) annotation(
    Placement(visible = true, transformation(origin = {-48, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoTanksExample.Requirements.LiquidLevel liquidLevel1_autogen_bind_1(waterLevel = twoTanksDesign.tank1.levelOfLiquid) annotation(
    Placement(visible = true, transformation(origin = {-48, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

end UDVModel1;