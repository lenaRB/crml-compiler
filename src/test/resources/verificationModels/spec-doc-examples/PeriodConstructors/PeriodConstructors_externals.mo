within CRML_test.Spec_doc.PeriodConstructors;
model PeriodConstructors_externals
  CRML.Blocks.Events.EventPeriodic eventPeriodic1(period=20, startTime=2)
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  Utilities.Boolean4Connector e1
    annotation (Placement(transformation(extent={{100,40},{120,60}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{16,46},{24,54}})));
  CRML.Blocks.Events.EventPeriodic eventPeriodic2(period=20, startTime=3.5)
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2
    annotation (Placement(transformation(extent={{16,-4},{24,4}})));
  Utilities.Boolean4Connector e2
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  CRML.Blocks.Events.ShowEvent showEvent_e1
    annotation (Placement(transformation(extent={{-8,16},{0,24}})));
  CRML.Blocks.Events.ShowEvent showEvent_e2
    annotation (Placement(transformation(extent={{-8,-44},{0,-36}})));
equation
  connect(eventPeriodic1.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-39,50},{15.6,50}}, color={217,67,180}));
  connect(booleanToBoolean4_1.y, e1)
    annotation (Line(points={{24.4,50},{110,50}}, color={162,29,33}));
  connect(eventPeriodic2.y, booleanToBoolean4_2.u)
    annotation (Line(points={{-39,0},{15.6,0}}, color={217,67,180}));
  connect(booleanToBoolean4_2.y, e2)
    annotation (Line(points={{24.4,0},{110,0}}, color={162,29,33}));
  connect(showEvent_e1.u, eventPeriodic1.y) annotation (Line(points={{-8.4,20},
          {-24,20},{-24,50},{-39,50}}, color={217,67,180}));
  connect(eventPeriodic2.y, showEvent_e2.u) annotation (Line(points={{-39,0},{
          -24,0},{-24,-40},{-8.4,-40}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end PeriodConstructors_externals;
