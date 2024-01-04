within CRML_test.Spec_doc.ClockCurrentTick_no_ext;
model ClockCurrentTick_no_ext
  Utilities.BooleanConnector e_current_tick
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  CRML.Blocks.Events.ClockToBoolean clockToBoolean
    annotation (Placement(transformation(extent={{-2,-4},{6,4}})));
  CRML.Blocks.Logical.BooleanTable      boolean4Constant1(option_width=false,
      instant={2,3.5,4,5.5})
    annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
  CRML.Blocks.Events.ClockEvent clockEvent
    annotation (Placement(transformation(extent={{-46,-6},{-34,6}})));
equation

  connect(clockToBoolean.y, e_current_tick) annotation (Line(points={{6.8,0},{
          58,0},{58,0},{110,0}}, color={217,67,180}));
  connect(boolean4Constant1.y, clockEvent.u)
    annotation (Line(points={{-79,0},{-46.6,0}}, color={217,67,180}));
  connect(clockEvent.y, clockToBoolean.u) annotation (Line(
      points={{-33.4,0},{-2.8,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ClockCurrentTick_no_ext;
