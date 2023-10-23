within CRML_test.Spec_doc.BooleanAtEvent;
model BooleanAtEvent_externals
  CRML.Blocks.Logical.BooleanPulse      boolean4Constant1(
    startTime=2,
    period=1.5,
    width=1)
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  CRML.Blocks.Logical.BooleanPulse      boolean4Constant2(period=1.5, startTime=
       1)
    annotation (Placement(transformation(extent={{-60,-60},{-40,-40}})));
  CRML.ETL.Connectors.BooleanOutput  b1
    annotation (Placement(transformation(extent={{100,40},{120,60}})));
  CRML.ETL.Connectors.ClockOutput c
    annotation (Placement(transformation(extent={{100,-60},{120,-40}})));
  CRML.Blocks.Events.ClockEvent clockEvent
    annotation (Placement(transformation(extent={{0,-70},{40,-30}})));
  CRML.Blocks.Events.ShowEvent showEvent_b
    annotation (Placement(transformation(extent={{-16,-78},{-8,-70}})));
  CRML.Blocks.Events.ShowEvent showEvent_b1
    annotation (Placement(transformation(extent={{-18,26},{-10,34}})));
equation
  connect(boolean4Constant2.y, clockEvent.u)
    annotation (Line(points={{-39,-50},{-2,-50}}, color={217,67,180}));
  connect(clockEvent.y, c) annotation (Line(
      points={{42,-50},{74,-50},{74,-50},{110,-50}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(showEvent_b.u, clockEvent.u) annotation (Line(points={{-16.4,-74},{
          -20,-74},{-20,-50},{-2,-50}}, color={217,67,180}));
  connect(boolean4Constant1.y, b1)
    annotation (Line(points={{-39,50},{110,50}}, color={217,67,180}));
  connect(showEvent_b1.u, b1) annotation (Line(points={{-18.4,30},{-20,30},{-20,
          50},{110,50}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BooleanAtEvent_externals;
