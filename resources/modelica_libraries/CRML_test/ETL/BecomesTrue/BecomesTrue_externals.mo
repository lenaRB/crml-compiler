within CRML_test.ETL.BecomesTrue;
model BecomesTrue_externals
  CRML.Blocks.Events.EventPeriodic eventPeriodic1(period=3, startTime=2)
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  CRML.ETL.Connectors.Boolean4Output b1
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-4,-4},{4,4}})));
  CRML.Blocks.Events.ShowEvent showEvent_eventPeriodic_b1
    annotation (Placement(transformation(extent={{-20,-44},{-12,-36}})));
equation
  connect(eventPeriodic1.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-39,0},{-4.4,0}}, color={217,67,180}));
  connect(booleanToBoolean4_1.y, b1)
    annotation (Line(points={{4.4,0},{110,0}}, color={162,29,33}));
  connect(showEvent_eventPeriodic_b1.u, eventPeriodic1.y) annotation (Line(
        points={{-20.4,-40},{-30,-40},{-30,0},{-39,0}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BecomesTrue_externals;
