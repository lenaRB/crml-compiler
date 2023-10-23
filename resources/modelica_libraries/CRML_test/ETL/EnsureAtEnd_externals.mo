within CRML_test.ETL;
model EnsureAtEnd_externals

  CRML.Blocks.Logical.BooleanStep eventPeriodic(startTime=5)
    annotation (Placement(transformation(extent={{-80,-40},{-60,-20}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 conv_u
    annotation (Placement(transformation(extent={{-44,-34},{-36,-26}})));
  CRML.Blocks.Events.EventTable eventTable(option_width=false)
    annotation (Placement(transformation(extent={{-80,50},{-60,70}})));
  CRML.Blocks.Events.EventTable eventTable1(option_width=false, instant={10})
    annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 conv_e1
    annotation (Placement(transformation(extent={{-44,46},{-36,54}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 conv_e2
    annotation (Placement(transformation(extent={{-44,38},{-36,46}})));
  CRML.ETL.Connectors.Boolean4Output event1
    annotation (Placement(transformation(extent={{100,50},{120,70}})));
  CRML.ETL.Connectors.Boolean4Output event2
    annotation (Placement(transformation(extent={{100,10},{120,30}})));
  CRML.ETL.Connectors.Boolean4Output u
    annotation (Placement(transformation(extent={{100,-40},{120,-20}})));
equation
  connect(eventPeriodic.y, conv_u.u)
    annotation (Line(points={{-59,-30},{-44.4,-30}}, color={217,67,180}));
  connect(eventTable.y, conv_e1.u) annotation (Line(points={{-59,60},{-50,60},{
          -50,50},{-44.4,50}}, color={217,67,180}));
  connect(eventTable1.y, conv_e2.u) annotation (Line(points={{-59,30},{-50,30},
          {-50,42},{-44.4,42}}, color={217,67,180}));
  connect(conv_u.y, u) annotation (Line(points={{-35.6,-30},{36,-30},{36,-30},{
          110,-30}}, color={162,29,33}));
  connect(conv_e2.y, event2) annotation (Line(points={{-35.6,42},{40,42},{40,20},
          {110,20}}, color={162,29,33}));
  connect(conv_e1.y, event1) annotation (Line(points={{-35.6,50},{40,50},{40,60},
          {110,60}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                               Rectangle(extent={{-100,100},{100,-100}},
            lineColor={28,108,200}),                                      Text(
          extent={{-28,-8},{28,24}},
          lineColor={28,108,200},
          textString="%name")}),                                  Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    experiment(StopTime=14));
end EnsureAtEnd_externals;
