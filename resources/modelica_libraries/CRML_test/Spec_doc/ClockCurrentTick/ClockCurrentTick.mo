within CRML_test.Spec_doc.ClockCurrentTick;
partial model ClockCurrentTick
  Utilities.ClockConnector   c
    annotation (Placement(transformation(extent={{-120,10},{-100,-10}})));
  Utilities.BooleanConnector e_current_tick
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  CRML.Blocks.Events.ClockToBoolean clockToBoolean
    annotation (Placement(transformation(extent={{-2,-4},{6,4}})));
equation

  connect(clockToBoolean.u, c) annotation (Line(
      points={{-2.8,0},{-110,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(clockToBoolean.y, e_current_tick) annotation (Line(points={{6.8,0},{
          58,0},{58,0},{110,0}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ClockCurrentTick;
