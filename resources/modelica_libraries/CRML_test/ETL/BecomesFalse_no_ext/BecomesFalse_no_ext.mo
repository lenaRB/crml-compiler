within CRML_test.ETL.BecomesFalse_no_ext;
model BecomesFalse_no_ext
  CRML.Blocks.Events.ClockEvent clockEvent1
    annotation (Placement(transformation(extent={{24,44},{36,56}})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent(x(start=true))
    annotation (Placement(transformation(extent={{-4,46},{4,54}})));
  CRML.Blocks.Logical.BooleanTable b1(
    y0=false,
    instant={2.5,5,7.5,9},
    option_width=false)
    annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-44,46},{-36,54}})));
  CRML.Blocks.Events.ClockEvent clockEvent2
    annotation (Placement(transformation(extent={{24,4},{36,16}})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent1(x(start=true))
    annotation (Placement(transformation(extent={{-4,6},{4,14}})));
  CRML.Blocks.Logical.BooleanConstant b2
    annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2
    annotation (Placement(transformation(extent={{-44,6},{-36,14}})));
  CRML.ETL.Connectors.ClockOutput c1
    annotation (Placement(transformation(extent={{100,40},{120,60}})));
  CRML.ETL.Connectors.ClockOutput c2
    annotation (Placement(transformation(extent={{100,0},{120,20}})));
  CRML.Blocks.Logical4.Not4 not4_1
    annotation (Placement(transformation(extent={{-30,40},{-10,60}})));
  CRML.Blocks.Logical4.Not4 not4_2
    annotation (Placement(transformation(extent={{-30,0},{-10,20}})));
equation
  connect(clockEvent1.u, event4ToEvent.y)
    annotation (Line(points={{23.4,50},{4.4,50}}, color={217,67,180}));
  connect(clockEvent2.u, event4ToEvent1.y)
    annotation (Line(points={{23.4,10},{4.4,10}}, color={217,67,180}));
  connect(clockEvent1.y, c1) annotation (Line(
      points={{36.6,50},{110,50}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(clockEvent2.y, c2) annotation (Line(
      points={{36.6,10},{110,10}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(b2.y, booleanToBoolean4_2.u)
    annotation (Line(points={{-59,10},{-44.4,10}}, color={217,67,180}));
  connect(booleanToBoolean4_2.y, not4_2.u)
    annotation (Line(points={{-35.6,10},{-31,10}}, color={162,29,33}));
  connect(not4_2.y, event4ToEvent1.u)
    annotation (Line(points={{-9,10},{-4.4,10}}, color={162,29,33}));
  connect(b1.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-59,50},{-44.4,50}}, color={217,67,180}));
  connect(booleanToBoolean4_1.y, not4_1.u)
    annotation (Line(points={{-35.6,50},{-31,50}}, color={162,29,33}));
  connect(not4_1.y, event4ToEvent.u)
    annotation (Line(points={{-9,50},{-4.4,50}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BecomesFalse_no_ext;
