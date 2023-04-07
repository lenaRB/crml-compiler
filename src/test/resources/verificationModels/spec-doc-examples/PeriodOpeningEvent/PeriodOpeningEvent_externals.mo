within CRML_test.Spec_doc.PeriodOpeningEvent;
model PeriodOpeningEvent_externals
  CRML.Blocks.Events.EventPeriodic eventPeriodic1(period=20, startTime=2)
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  CRML.ETL.Connectors.TimeLocatorOutput[N] P
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  CRML.Blocks.Events.EventPeriodic eventPeriodic2(period=20, startTime=3.5)
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  CRML.Blocks.Events.ShowEvent showEvent_e1
    annotation (Placement(transformation(extent={{-8,16},{0,24}})));
  CRML.Blocks.Events.ShowEvent showEvent_e2
    annotation (Placement(transformation(extent={{-8,-44},{0,-36}})));
  CRML.ETL.TimeLocators.Periods periods
    annotation (Placement(transformation(extent={{40,20},{60,40}})));
protected
    parameter Integer N=CRML.ETL.Types.nMaxOverlap;
public
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{10,46},{18,54}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2
    annotation (Placement(transformation(extent={{10,-4},{18,4}})));
equation
  connect(showEvent_e1.u, eventPeriodic1.y) annotation (Line(points={{-8.4,20},{
          -24,20},{-24,50},{-39,50}}, color={217,67,180}));
  connect(eventPeriodic2.y, showEvent_e2.u) annotation (Line(points={{-39,0},{-24,
          0},{-24,-40},{-8.4,-40}}, color={217,67,180}));
  connect(P, periods.y)
    annotation (Line(points={{110,0},{50,0},{50,20}}, color={0,0,255}));
  connect(eventPeriodic1.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-39,50},{9.6,50}}, color={217,67,180}));
  connect(eventPeriodic2.y, booleanToBoolean4_2.u)
    annotation (Line(points={{-39,0},{9.6,0}}, color={217,67,180}));
  connect(booleanToBoolean4_2.y, periods.u2) annotation (Line(points={{18.4,0},
          {28,0},{28,22},{39,22}}, color={162,29,33}));
  connect(booleanToBoolean4_1.y, periods.u1) annotation (Line(points={{18.4,50},
          {30,50},{30,30},{39,30}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end PeriodOpeningEvent_externals;
