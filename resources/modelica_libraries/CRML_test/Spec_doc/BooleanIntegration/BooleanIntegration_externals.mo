within CRML_test.Spec_doc.BooleanIntegration;
model BooleanIntegration_externals
  CRML.Blocks.Logical.BooleanPulse      boolean4Constant1
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  Utilities.Boolean4Connector a
    annotation (Placement(transformation(extent={{100,40},{120,60}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{12,46},{20,54}})));
  Utilities.TimeLocatorConnector P
    annotation (Placement(transformation(extent={{100,-60},{120,-40}})));
  CRML.Blocks.Events.EventPeriodic eventPeriodic1(period=20, startTime=2)
    annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
  CRML.Blocks.Events.EventPeriodic eventPeriodic2(period=20, startTime=3.5)
    annotation (Placement(transformation(extent={{-60,-50},{-40,-30}})));
  CRML.Blocks.Events.ShowEvent showEvent_e1
    annotation (Placement(transformation(extent={{-8,-24},{0,-16}})));
  CRML.Blocks.Events.ShowEvent showEvent_e2
    annotation (Placement(transformation(extent={{-8,-84},{0,-76}})));
  CRML.ETL.TimeLocators.Periods periods
    annotation (Placement(transformation(extent={{40,-20},{60,0}})));
public
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2
    annotation (Placement(transformation(extent={{10,6},{18,14}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3
    annotation (Placement(transformation(extent={{10,-44},{18,-36}})));
  inner CRML.TimeLocators.Continuous.Master master
    annotation (Placement(transformation(extent={{40,70},{60,90}})));
  CRML.Blocks.Logical.BooleanPulse booleanPulse(
    width=6,
    period=20,
    startTime=2)
    annotation (Placement(transformation(extent={{-20,70},{0,90}})));
  CRML.Blocks.Logical4.BooleanToBoolean4
                                    booleanToBoolean4_7
    annotation (Placement(transformation(extent={{12,76},{20,84}})));
equation
  connect(boolean4Constant1.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-39,50},{11.6,50}}, color={217,67,180}));
  connect(a, booleanToBoolean4_1.y)
    annotation (Line(points={{110,50},{20.4,50}}, color={162,29,33}));
  connect(showEvent_e1.u,eventPeriodic1. y) annotation (Line(points={{-8.4,-20},
          {-24,-20},{-24,10},{-39,10}},
                                      color={217,67,180}));
  connect(eventPeriodic2.y,showEvent_e2. u) annotation (Line(points={{-39,-40},
          {-24,-40},{-24,-80},{-8.4,-80}},
                                    color={217,67,180}));
  connect(eventPeriodic1.y,booleanToBoolean4_2. u)
    annotation (Line(points={{-39,10},{9.6,10}}, color={217,67,180}));
  connect(eventPeriodic2.y,booleanToBoolean4_3. u)
    annotation (Line(points={{-39,-40},{9.6,-40}},
                                               color={217,67,180}));
  connect(booleanToBoolean4_3.y,periods. u2) annotation (Line(points={{18.4,-40},
          {28,-40},{28,-18},{39,-18}},
                                   color={162,29,33}));
  connect(booleanToBoolean4_2.y,periods. u1) annotation (Line(points={{18.4,10},
          {30,10},{30,-10},{39,-10}},
                                    color={162,29,33}));
  connect(P, periods.y[1])
    annotation (Line(points={{110,-50},{50,-50},{50,-20}}, color={0,0,255}));
  connect(booleanPulse.y, booleanToBoolean4_7.u)
    annotation (Line(points={{1,80},{11.6,80}}, color={217,67,180}));
  connect(master.u, booleanToBoolean4_7.y)
    annotation (Line(points={{39,80},{20.4,80}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BooleanIntegration_externals;
