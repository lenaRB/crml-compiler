within CRML_test.Spec_doc.ClockRank_wip;
partial model ClockRank
  Utilities.ClockConnector c1
    annotation (Placement(transformation(extent={{-120,10},{-100,-10}})));
  Utilities.IntegerConnector r
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  CRML.Blocks.Events.ClockToBoolean clockToBoolean
    annotation (Placement(transformation(extent={{-54,-4},{-46,4}})));
  CRML.Blocks.Events.EventCounter eventCounter
    annotation (Placement(transformation(extent={{20,-10},{40,10}})));
equation

  connect(eventCounter.y, r) annotation (Line(points={{41,0},{74,0},{74,0},{110,
          0}}, color={255,127,0}));
  connect(clockToBoolean.y, eventCounter.u)
    annotation (Line(points={{-45.2,0},{19,0}}, color={217,67,180}));
  connect(clockToBoolean.u, c1) annotation (Line(
      points={{-54.8,0},{-110,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ClockRank;
