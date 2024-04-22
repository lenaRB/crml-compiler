within CRML_test.ETL.BecomesTrueInside;
partial model BecomesTrueInside
  Utilities.Boolean4Connector b1
    annotation (Placement(transformation(extent={{-120,10},{-100,-10}})));
  Utilities.ClockConnector c_b1_becomes_true_inside_p1
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent_1
    annotation (Placement(transformation(extent={{-64,-4},{-56,4}})));
  replaceable Inside.Inside2 inside
    annotation (Placement(transformation(extent={{2,-50},{22,-30}})));
  Utilities.Boolean4Connector b2
    annotation (Placement(transformation(extent={{-10,10},{10,-10}},
        rotation=-90,
        origin={-110,-60})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent_2
    annotation (Placement(transformation(extent={{-64,-64},{-56,-56}})));
equation
  connect(b1, event4ToEvent_1.u)
    annotation (Line(points={{-110,0},{-64.4,0}}, color={0,0,0}));
  connect(b2, event4ToEvent_2.u)
    annotation (Line(points={{-110,-60},{-64.4,-60}}, color={0,0,0}));
  connect(event4ToEvent_2.y, inside.b1) annotation (Line(points={{-55.6,-60},{
          -22,-60},{-22,-43},{1,-43}}, color={217,67,180}));
  connect(event4ToEvent_1.y, inside.b2) annotation (Line(points={{-55.6,0},{-22,
          0},{-22,-37},{1,-37}}, color={217,67,180}));
  connect(inside.c_filtered_ticks_of_c1_inside_p1, c_b1_becomes_true_inside_p1)
    annotation (Line(
      points={{23,-40},{64,-40},{64,0},{110,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BecomesTrueInside;
