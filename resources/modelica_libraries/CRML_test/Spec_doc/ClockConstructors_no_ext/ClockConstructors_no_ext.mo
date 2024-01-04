within CRML_test.Spec_doc.ClockConstructors_no_ext;
model ClockConstructors_no_ext
  Utilities.ClockConnector clock
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  CRML.Blocks.Events.ClockEvent clockEvent
    annotation (Placement(transformation(extent={{-6,14},{6,26}})));
  CRML.Blocks.Events.ShowEvent c
    annotation (Placement(transformation(extent={{40,-24},{48,-16}})));
  CRML.Blocks.Logical.BooleanTable      boolean4Constant1(option_width=false,
      instant={2,3.5})
    annotation (Placement(transformation(extent={{-100,10},{-80,30}})));
equation

  connect(clockEvent.y, clock) annotation (Line(
      points={{6.6,20},{54,20},{54,0},{110,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(boolean4Constant1.y, clockEvent.u)
    annotation (Line(points={{-79,20},{-6.6,20}}, color={217,67,180}));
  connect(c.u, clockEvent.u) annotation (Line(points={{39.6,-20},{-12,-20},{-12,
          20},{-6.6,20}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ClockConstructors_no_ext;
