within CRML_test.ETL.BecomesTrueInside;
partial model BecomesTrueInside
  Utilities.Boolean4Connector b1
    annotation (Placement(transformation(extent={{-120,10},{-100,-10}})));
  Utilities.ClockConnector c_b1_becomes_true_inside_p1
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent
    annotation (Placement(transformation(extent={{-54,-4},{-46,4}})));
  replaceable ETL.Inside.Inside inside
    annotation (Placement(transformation(extent={{4,-50},{24,-30}})));
  Utilities.Boolean4Connector b2
    annotation (Placement(transformation(extent={{-10,10},{10,-10}},
        rotation=-90,
        origin={-110,-60})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent1
    annotation (Placement(transformation(extent={{-66,-64},{-58,-56}})));
equation
  connect(b1, event4ToEvent.u)
    annotation (Line(points={{-110,0},{-54.4,0}}, color={0,0,0}));
  connect(b2, event4ToEvent1.u)
    annotation (Line(points={{-110,-60},{-66.4,-60}}, color={0,0,0}));
  connect(event4ToEvent1.y, inside.b1) annotation (Line(points={{-57.6,-60},{
          -22,-60},{-22,-43},{3,-43}}, color={217,67,180}));
  connect(event4ToEvent.y, inside.b2) annotation (Line(points={{-45.6,0},{-22,0},
          {-22,-37},{3,-37}}, color={217,67,180}));
  connect(inside.c_filtered_ticks_of_c1_inside_p1, c_b1_becomes_true_inside_p1)
    annotation (Line(
      points={{25,-40},{64,-40},{64,0},{110,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BecomesTrueInside;
