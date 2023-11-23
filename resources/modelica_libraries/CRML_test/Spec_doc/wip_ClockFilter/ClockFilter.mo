within CRML_test.Spec_doc.wip_ClockFilter;
partial model ClockFilter
  Utilities.ClockConnector c1
    annotation (Placement(transformation(extent={{-120,60},{-100,40}})));
  Utilities.BooleanConnector c_filter
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  CRML.Blocks.Events.ClockToBoolean clockToBoolean_c1
    annotation (Placement(transformation(extent={{-2,46},{6,54}})));
  CRML.Blocks.Events.EventFilter eventFilter
    annotation (Placement(transformation(extent={{50,-10},{70,10}})));
  Utilities.ClockConnector   c2
    annotation (Placement(transformation(extent={{-120,-40},{-100,-60}})));
  CRML.Blocks.Events.ClockToBoolean clockToBoolean_c2
    annotation (Placement(transformation(extent={{-4,-54},{4,-46}})));
equation

  connect(clockToBoolean_c1.u, c1) annotation (Line(
      points={{-2.8,50},{-110,50}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(c2, clockToBoolean_c2.u)
    annotation (Line(points={{-110,-50},{-4.8,-50}}, color={0,0,0}));
  connect(eventFilter.y, c_filter) annotation (Line(points={{71,0},{90,0},{90,0},
          {110,0}}, color={217,67,180}));
  connect(clockToBoolean_c1.y, eventFilter.u) annotation (Line(points={{6.8,50},
          {28,50},{28,0},{49,0}}, color={217,67,180}));
  connect(clockToBoolean_c2.y, eventFilter.cond) annotation (Line(points={{4.8,
          -50},{26,-50},{26,8},{49,8}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ClockFilter;
