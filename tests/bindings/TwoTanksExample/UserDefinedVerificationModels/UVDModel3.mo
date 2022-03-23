within TwoTanksExample.UserDefinedVerificationModels;

model UVDModel3
  extends VVDRlib.Verification.VerificationModel;
 TwoTanksExample.Scenarios.Overflow overflow annotation(
    Placement(visible = true, transformation(origin = {-62, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoTanksExample.Design.TwoTanksDesign twoTanksDesign(source.flowLevel = overflow.flowLevel)  annotation(
    Placement(visible = true, transformation(origin = {40, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoTanksExample.Requirements.LevelAdjustment levelAdjustment_autogen_bind_0(inFlow = twoTanksDesign.tank2.levelOfLiquid) annotation(
    Placement(visible = true, transformation(origin = {-42, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoTanksExample.Requirements.LevelAdjustment levelAdjustment_autogen_bind_1(inFlow = twoTanksDesign.tank1.levelOfLiquid) annotation(
    Placement(visible = true, transformation(origin = {-44, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
end UVDModel3;