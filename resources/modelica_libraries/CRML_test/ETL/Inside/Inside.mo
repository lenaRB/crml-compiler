within CRML_test.ETL.Inside;
partial model Inside

protected
  parameter Integer N=CRML.ETL.Types.nMaxOverlap;

public
  CRML.Blocks.Events.EventFilter eventFilter
    annotation (Placement(transformation(extent={{12,20},{32,40}})));
  CRML.Blocks.Events.EventFilter eventFilter1
    annotation (Placement(transformation(extent={{12,-40},{32,-20}})));
  CRML.ETL.TimeLocators.Attributes.PeriodStart periodStart
    annotation (Placement(transformation(extent={{-94,-44},{-86,-36}})));
  CRML.ETL.TimeLocators.Attributes.PeriodEnd periodEnd
    annotation (Placement(transformation(extent={{-84,-52},{-76,-44}})));
  CRML.Blocks.Events.Before after_Pstart
    annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
  CRML.Blocks.Logical.BooleanConstant boolean4Constant(K=false)
    annotation (Placement(transformation(extent={{-96,-10},{-76,10}})));
  Modelica.Blocks.Logical.And
                           and4_1
    annotation (Placement(transformation(extent={{48,-10},{68,10}})));
  CRML.Blocks.Events.Before before_Pend
    annotation (Placement(transformation(extent={{-30,-50},{-10,-30}})));
  CRML.Blocks.Logical.BooleanConstant reset(K=false)
    annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
  inner CRML.TimeLocators.Continuous.Master master
    annotation (Placement(transformation(extent={{40,60},{60,80}})));
  CRML.ETL.Connectors.ClockOutput c_filtered_ticks_of_c1_inside_p1
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  CRML.Blocks.Events.ClockEvent
             eventClock
    annotation (Placement(transformation(extent={{74,-10},{94,10}})));
  Utilities.ClockConnector       C1
    annotation (Placement(transformation(extent={{-120,20},{-100,40}})));
  CRML.Blocks.Events.ClockToBoolean clockToBoolean
    annotation (Placement(transformation(extent={{-84,26},{-76,34}})));
  Utilities.TimeLocatorConnector       P1
    annotation (Placement(transformation(extent={{-120,-40},{-100,-20}})));
  CRML.Blocks.Logical.Hold hold
    annotation (Placement(transformation(extent={{-62,24},{-50,36}})));
equation
  connect(boolean4Constant.y, after_Pstart.strictlyBefore)
    annotation (Line(points={{-75,0},{-31,0}}, color={217,67,180}));
  connect(after_Pstart.y, eventFilter.cond) annotation (Line(points={{-9,0},{4,0},
          {4,38},{11,38}}, color={217,67,180}));
  connect(before_Pend.strictlyBefore, boolean4Constant.y) annotation (Line(
        points={{-31,-40},{-60,-40},{-60,0},{-75,0}}, color={217,67,180}));
  connect(before_Pend.y, eventFilter1.cond) annotation (Line(points={{-9,-40},{0,
          -40},{0,-22},{11,-22}}, color={217,67,180}));
  connect(after_Pstart.reset, reset.y) annotation (Line(points={{-20,-11},{-34,
          -11},{-34,70},{-59,70}}, color={217,67,180}));
  connect(before_Pend.reset, reset.y) annotation (Line(points={{-20,-51},{-34,
          -51},{-34,70},{-59,70}}, color={217,67,180}));
  connect(eventFilter1.y, and4_1.u2) annotation (Line(points={{33,-30},{38,-30},
          {38,-8},{46,-8}}, color={217,67,180}));
  connect(and4_1.u1, eventFilter.y) annotation (Line(points={{46,0},{40,0},{40,
          30},{33,30}}, color={255,0,255}));
  connect(and4_1.y, eventClock.u)
    annotation (Line(points={{69,0},{73,0}}, color={255,0,255}));
  connect(c_filtered_ticks_of_c1_inside_p1, eventClock.y) annotation (Line(
      points={{110,0},{95,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(C1, clockToBoolean.u) annotation (Line(
      points={{-110,30},{-84.8,30}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(clockToBoolean.y, hold.u)
    annotation (Line(points={{-75.2,30},{-63.2,30}}, color={217,67,180}));
  connect(periodEnd.y, before_Pend.u2)
    annotation (Line(points={{-75.6,-48},{-31,-48}}, color={217,67,180}));
  connect(eventFilter.u, hold.y)
    annotation (Line(points={{11,30},{-49.4,30}}, color={217,67,180}));
  connect(eventFilter1.u, hold.y) annotation (Line(points={{11,-30},{0,-30},{0,30},
          {-49.4,30}}, color={217,67,180}));
  connect(periodStart.y, after_Pstart.u1) annotation (Line(points={{-85.6,-40},
          {-82,-40},{-82,-20},{-48,-20},{-48,8},{-31,8}}, color={217,67,180}));
  connect(after_Pstart.u2, hold.y) annotation (Line(points={{-31,-8},{-40,-8},{-40,
          30},{-49.4,30}}, color={217,67,180}));
  connect(before_Pend.u1, hold.y) annotation (Line(points={{-31,-32},{-40,-32},{
          -40,30},{-49.4,30}}, color={217,67,180}));
  connect(periodStart.tl, P1) annotation (Line(points={{-90,-36},{-90,-30},{-110,
          -30}}, color={0,0,255}));
  connect(periodEnd.tl, P1) annotation (Line(points={{-80,-44},{-80,-30},{-110,-30}},
        color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Inside;
