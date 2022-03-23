within TwoTanksExample.UserDefinedVerificationModels;

model GraphicalModel
  extends VVDRlib.Verification.VerificationModel;
  TwoTanksExample.Scenarios.Normal_operation normal_operation annotation(
    Placement(visible = true, transformation(origin = {-64, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 TwoTanksExample.Requirements.Volume_of_a_tank volume_of_a_tank_autogen_bind_0(tankVolume = twoTanksDesign.tank2.volume)  annotation(
    Placement(visible = true, transformation(origin = {-84, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 TwoTanksExample.Requirements.Volume_of_a_tank volume_of_a_tank_autogen_bind_1(tankVolume = twoTanksDesign.tank1.volume) annotation(
    Placement(visible = true, transformation(origin = {-84, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 TwoTanksExample.Requirements.LiquidLevel liquidLevel_autogen_bind_0(waterLevel = twoTanksDesign.tank2.levelOfLiquid) annotation(
    Placement(visible = true, transformation(origin = {-50, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoTanksExample.Requirements.LiquidLevel liquidLevel_autogen_bind_1(waterLevel = twoTanksDesign.tank1.levelOfLiquid) annotation(
    Placement(visible = true, transformation(origin = {-50, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoTanksExample.Design.TwoTanksDesign twoTanksDesign(source.flowLevel = normal_operation.flowLevel) annotation(
    Placement(visible = true, transformation(origin = {18, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 
end GraphicalModel;