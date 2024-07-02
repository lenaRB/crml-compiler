within CRML_test.ETL.CheckOver;
model CheckOver_externals
  inner CRML.TimeLocators.Continuous.Master master annotation(
    Placement(transformation(origin = {50, -10}, extent = {{-10, -10}, {10, 10}})));
  CRML.Blocks.Logical.BooleanTable      boolean4Constant1(
    y0=false,
    option_width=false,
    instant={2,3.5})
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  CRML.Blocks.Logical.BooleanTable b1(
    y0=false,
    option_width=false,
    instant={2.5,5})
    annotation (Placement(transformation(extent={{-60,-60},{-40,-40}})));
  CRML.ETL.Connectors.Boolean4Output phi1
    annotation (Placement(transformation(extent={{100,40},{120,60}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-20,46},{-12,54}})));
  CRML.Blocks.Logical4.And4 and4_1
    annotation (Placement(transformation(extent={{0,32},{20,52}})));
  CRML.Blocks.Logical4.Boolean4Constant boolean4Constant3(K=CRML.ETL.Types.Boolean4.undecided)
    annotation (Placement(transformation(extent={{-34,20},{-14,40}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2
    annotation (Placement(transformation(extent={{-4,-54},{4,-46}})));
  CRML.ETL.Connectors.TimeLocatorOutput[N] P1
    annotation (Placement(transformation(extent={{100,-80},{120,-60}})));
  CRML.TimeLocators.Continuous.During during
    annotation (Placement(transformation(extent={{40,-60},{60,-40}})));protected
  parameter Integer N=CRML.ETL.Types.nMaxOverlap;
equation
  connect(boolean4Constant1.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-39,50},{-20.4,50}}, color={217,67,180}));
  connect(booleanToBoolean4_1.y, and4_1.u1)
    annotation (Line(points={{-11.6,50},{-1,50}}, color={162,29,33}));
  connect(boolean4Constant3.y, and4_1.u2) annotation (Line(points={{-13,30},{-6,
          30},{-6,34},{-1,34}}, color={162,29,33}));
  connect(and4_1.y, phi1) annotation (Line(points={{21,42},{66,42},{66,50},{110,
          50}}, color={162,29,33}));
  connect(b1.y, booleanToBoolean4_2.u)
    annotation (Line(points={{-39,-50},{-4.4,-50}}, color={217,67,180}));
  connect(booleanToBoolean4_2.y, during.u)
    annotation (Line(points={{4.4,-50},{39,-50}}, color={162,29,33}));
  connect(during.y, P1) annotation (Line(points={{50,-60},{84,-60},{84,-70},{110,
          -70}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end CheckOver_externals;
