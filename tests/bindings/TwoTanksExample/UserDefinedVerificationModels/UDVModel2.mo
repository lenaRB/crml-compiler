within TwoTanksExample.UserDefinedVerificationModels;

model UDVModel2
 extends VVDRlib.Verification.VerificationModel;
  TwoTanksExample.Scenarios.Normal_operation normal_operation annotation(
    Placement(visible = true, transformation(origin = {-62, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoTanksExample.Design.TwoTanksDesign twoTanksDesign(source.flowLevel = normal_operation.flowLevel)  annotation(
    Placement(visible = true, transformation(origin = {40, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoTanksExample.Requirements.LevelAdjustment levelAdjustment_autogen_bind_0_autogen_bind_0_autogen_bind_0(inFlow = twoTanksDesign.tank2.levelOfLiquid) annotation(
    Placement(visible = true, transformation(origin = {-42, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoTanksExample.Requirements.LevelAdjustment levelAdjustment_autogen_bind_0_autogen_bind_0_autogen_bind_1(inFlow = twoTanksDesign.tank1.levelOfLiquid) annotation(
    Placement(visible = true, transformation(origin = {-42, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
end UDVModel2;