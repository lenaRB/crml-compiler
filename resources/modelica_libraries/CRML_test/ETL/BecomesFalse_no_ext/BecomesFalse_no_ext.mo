within CRML_test.ETL.BecomesFalse_no_ext;
model BecomesFalse_no_ext
  CRML.Blocks.Events.ClockEvent c1
    annotation (Placement(transformation(extent={{24,44},{36,56}})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent(x(start=true))
    annotation (Placement(transformation(extent={{-4,46},{4,54}})));
  CRML.Blocks.Logical.BooleanTable b1(
    y0=false,
    instant={2.5,5,7.5,9},
    option_width=false)
    annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-40,46},{-32,54}})));
  CRML.Blocks.Events.ShowEvent show_c1
    annotation (Placement(transformation(extent={{56,32},{64,40}})));
  CRML.Blocks.Events.ClockEvent c2
    annotation (Placement(transformation(extent={{24,4},{36,16}})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent1(x(start=true))
    annotation (Placement(transformation(extent={{-4,6},{4,14}})));
  CRML.Blocks.Logical.BooleanConstant b2
    annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2
    annotation (Placement(transformation(extent={{-40,6},{-32,14}})));
  CRML.Blocks.Events.ShowEvent show_c2
    annotation (Placement(transformation(extent={{56,-8},{64,0}})));
  CRML.Blocks.Events.ClockEvent c3
    annotation (Placement(transformation(extent={{24,-36},{36,-24}})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent2(x(start=true))
    annotation (Placement(transformation(extent={{-4,-34},{4,-26}})));
  CRML.Blocks.Logical.BooleanConstant b3(K=false)
    annotation (Placement(transformation(extent={{-80,-40},{-60,-20}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3
    annotation (Placement(transformation(extent={{-40,-34},{-32,-26}})));
  CRML.Blocks.Events.ShowEvent show_c3
    annotation (Placement(transformation(extent={{56,-48},{64,-40}})));
  CRML.Blocks.Logical4.Not4 not4_1
    annotation (Placement(transformation(extent={{-28,40},{-8,60}})));
  CRML.Blocks.Logical4.Not4 not4_2
    annotation (Placement(transformation(extent={{-28,0},{-8,20}})));
  CRML.Blocks.Logical4.Not4 not4_3
    annotation (Placement(transformation(extent={{-28,-40},{-8,-20}})));
equation
  connect(c1.u, event4ToEvent.y)
    annotation (Line(points={{23.4,50},{4.4,50}}, color={217,67,180}));
  connect(b1.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-59,50},{-40.4,50}}, color={217,67,180}));
  connect(show_c1.u, event4ToEvent.y) annotation (Line(points={{55.6,36},{12,36},
          {12,50},{4.4,50}}, color={217,67,180}));
  connect(c2.u, event4ToEvent1.y) annotation (Line(points={{23.4,10},{20,10},{
          20,10},{20,10},{20,10},{4.4,10}}, color={217,67,180}));
  connect(b2.y, booleanToBoolean4_2.u) annotation (Line(points={{-59,10},{-40.4,
          10}},                                       color={217,67,180}));
  connect(show_c2.u, event4ToEvent1.y) annotation (Line(points={{55.6,-4},{16,
          -4},{16,10},{4.4,10}},
                            color={217,67,180}));
  connect(c3.u, event4ToEvent2.y)
    annotation (Line(points={{23.4,-30},{4.4,-30}}, color={217,67,180}));
  connect(b3.y, booleanToBoolean4_3.u)
    annotation (Line(points={{-59,-30},{-40.4,-30}}, color={217,67,180}));
  connect(show_c3.u, event4ToEvent2.y) annotation (Line(points={{55.6,-44},{14,
          -44},{14,-30},{4.4,-30}}, color={217,67,180}));
  connect(booleanToBoolean4_1.y, not4_1.u)
    annotation (Line(points={{-31.6,50},{-29,50}}, color={162,29,33}));
  connect(event4ToEvent.u, not4_1.y)
    annotation (Line(points={{-4.4,50},{-7,50}}, color={162,29,33}));
  connect(booleanToBoolean4_2.y, not4_2.u)
    annotation (Line(points={{-31.6,10},{-29,10}}, color={162,29,33}));
  connect(event4ToEvent1.u, not4_2.y)
    annotation (Line(points={{-4.4,10},{-7,10}}, color={162,29,33}));
  connect(booleanToBoolean4_3.y, not4_3.u)
    annotation (Line(points={{-31.6,-30},{-29,-30}}, color={162,29,33}));
  connect(event4ToEvent2.u, not4_3.y)
    annotation (Line(points={{-4.4,-30},{-7,-30}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BecomesFalse_no_ext;
