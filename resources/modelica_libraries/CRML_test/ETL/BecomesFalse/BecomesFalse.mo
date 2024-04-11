within CRML_test.ETL.BecomesFalse;
partial model BecomesFalse
  Utilities.Boolean4Connector b1
    annotation (Placement(transformation(extent={{-120,10},{-100,-10}})));
  Utilities.ClockConnector c_b1_becomes_false
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  CRML.Blocks.Events.ClockEvent clockEvent
    annotation (Placement(transformation(extent={{-6,-6},{6,6}})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent
    annotation (Placement(transformation(extent={{-54,-4},{-46,4}})));
  CRML.Blocks.Logical4.Not4 not4_1
    annotation (Placement(transformation(extent={{-88,-10},{-68,10}})));
equation
  connect(clockEvent.y, c_b1_becomes_false) annotation (Line(
      points={{6.6,0},{110,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(clockEvent.u, event4ToEvent.y)
    annotation (Line(points={{-6.6,0},{-45.6,0}}, color={217,67,180}));
  connect(event4ToEvent.u, not4_1.y)
    annotation (Line(points={{-54.4,0},{-67,0}}, color={162,29,33}));
  connect(b1, not4_1.u)
    annotation (Line(points={{-110,0},{-89,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BecomesFalse;
