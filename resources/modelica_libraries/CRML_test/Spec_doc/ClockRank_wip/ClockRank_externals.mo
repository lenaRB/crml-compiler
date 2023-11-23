within CRML_test.Spec_doc.ClockRank_wip;
model ClockRank_externals
  CRML.Blocks.Logical.BooleanPulse      boolean4Constant1(period=20, startTime=
        2)
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  CRML.ETL.Connectors.ClockOutput   c
    annotation (Placement(transformation(extent={{100,40},{120,60}})));
  CRML.Blocks.Events.ClockEvent clockEvent
    annotation (Placement(transformation(extent={{24,44},{36,56}})));
equation
  connect(boolean4Constant1.y, clockEvent.u)
    annotation (Line(points={{-39,50},{23.4,50}}, color={217,67,180}));
  connect(c, clockEvent.y) annotation (Line(
      points={{110,50},{36.6,50}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ClockRank_externals;
