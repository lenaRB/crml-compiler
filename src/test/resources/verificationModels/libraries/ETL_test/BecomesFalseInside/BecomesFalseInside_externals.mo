within BecomesFalseInside;
model BecomesFalseInside_externals
  CRML.ETL.Connectors.Boolean4Output b1
    annotation (Placement(transformation(extent={{100,30},{120,50}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-4,36},{4,44}})));
public
  CRML.Blocks.Logical.BooleanTable booleanTable2(
    y0=false,
    option_width=false,
    instant={3.5,4.5})
    annotation (Placement(transformation(extent={{-60,30},{-40,50}})));
  CRML.ETL.Connectors.TimeLocatorOutput tl1
    annotation (Placement(transformation(extent={{100,-50},{120,-30}})));
  CRML.Blocks.Logical.BooleanTable booleanTable(option_width=false, instant={
        2.5,5,7.5,9})
    annotation (Placement(transformation(extent={{-60,-30},{-40,-10}})));
  CRML.Blocks.Events.ShowEvent showEvent_b1
    annotation (Placement(transformation(extent={{16,-14},{24,-6}})));
  CRML.TimeLocators.Continuous.During during
    annotation (Placement(transformation(extent={{40,-40},{60,-20}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3
    annotation (Placement(transformation(extent={{-4,-34},{4,-26}})));
  CRML.CompilerCompliancy.CRMLPeriodTimePeriod cRMLPeriodTimePeriod
    annotation (Placement(transformation(extent={{40,-80},{60,-60}})));
  CRML.ETL.Connectors.CRMLPeriodOutput P1
    annotation (Placement(transformation(extent={{100,-90},{120,-70}})));
equation
  connect(booleanToBoolean4_1.y, b1)
    annotation (Line(points={{4.4,40},{110,40}},
                                               color={162,29,33}));
  connect(booleanTable2.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-39,40},{-4.4,40}}, color={217,67,180}));
  connect(booleanTable.y, showEvent_b1.u) annotation (Line(points={{-39,-20},{
          -12,-20},{-12,-10},{15.6,-10}}, color={217,67,180}));
  connect(booleanTable.y, booleanToBoolean4_3.u) annotation (Line(points={{-39,
          -20},{-12,-20},{-12,-30},{-4.4,-30}}, color={217,67,180}));
  connect(booleanToBoolean4_3.y,during. u)
    annotation (Line(points={{4.4,-30},{39,-30}}, color={162,29,33}));
  connect(tl1, during.y[1])
    annotation (Line(points={{110,-40},{50,-40}}, color={0,0,255}));
  connect(during.y[1], cRMLPeriodTimePeriod.tl)
    annotation (Line(points={{50,-40},{50,-60}}, color={0,0,255}));
  connect(cRMLPeriodTimePeriod.y, P1) annotation (Line(points={{61,-70},{80,-70},
          {80,-80},{110,-80}}, color={255,170,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BecomesFalseInside_externals;
