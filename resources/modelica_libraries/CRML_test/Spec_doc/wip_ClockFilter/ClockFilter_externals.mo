within CRML_test.Spec_doc.wip_ClockFilter;
model ClockFilter_externals
  CRML.Blocks.Logical.BooleanPulse      boolean4Constant1(period=20, startTime=
        2)
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  CRML.ETL.Connectors.ClockOutput c1
    annotation (Placement(transformation(extent={{100,40},{120,60}})));
  CRML.Blocks.Events.ClockEvent clockEvent
    annotation (Placement(transformation(extent={{24,44},{36,56}})));
  CRML.Blocks.Logical.BooleanPulse      boolean4Constant2(           startTime=
        2, period=40)
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  CRML.Blocks.Events.ClockEvent clockEvent1
    annotation (Placement(transformation(extent={{24,-6},{36,6}})));
  CRML.ETL.Connectors.ClockOutput   c2
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
equation
  connect(boolean4Constant1.y, clockEvent.u)
    annotation (Line(points={{-39,50},{23.4,50}}, color={217,67,180}));
  connect(c1, clockEvent.y) annotation (Line(
      points={{110,50},{36.6,50}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(clockEvent1.u, boolean4Constant2.y)
    annotation (Line(points={{23.4,0},{-39,0}}, color={217,67,180}));
  connect(c2, clockEvent1.y) annotation (Line(
      points={{110,0},{36.6,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ClockFilter_externals;
