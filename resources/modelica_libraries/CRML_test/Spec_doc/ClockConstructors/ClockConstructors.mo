within CRML_test.Spec_doc.ClockConstructors;
partial model ClockConstructors
  Utilities.BooleanConnector b
    annotation (Placement(transformation(extent={{-120,40},{-100,20}})));
  Utilities.ClockConnector clock
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  CRML.Blocks.Events.ClockEvent clockEvent
    annotation (Placement(transformation(extent={{-6,14},{6,26}})));
  CRML.Blocks.Events.ShowEvent c
    annotation (Placement(transformation(extent={{40,-24},{48,-16}})));
equation

  connect(b, clockEvent.u) annotation (Line(points={{-110,30},{-58,30},{-58,20},
          {-6.6,20}}, color={0,0,0}));
  connect(clockEvent.y, clock) annotation (Line(
      points={{6.6,20},{54,20},{54,0},{110,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(c.u, b) annotation (Line(points={{39.6,-20},{-32,-20},{-32,30},{-110,
          30}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ClockConstructors;
