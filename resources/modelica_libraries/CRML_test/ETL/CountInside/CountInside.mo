within CRML_test.ETL.CountInside;
partial model CountInside

protected
  parameter Integer N=CRML.ETL.Types.nMaxOverlap;

public
  Utilities.BooleanConnector  b1
    annotation (Placement(transformation(extent={{-120,-20},{-100,-40}})));
  CRML.Blocks.Events.EventFilter eventFilter
    annotation (Placement(transformation(extent={{12,20},{32,40}})));
  CRML.Blocks.Events.EventFilter eventFilter1
    annotation (Placement(transformation(extent={{12,-40},{32,-20}})));
  CRML.TimeLocators.Attributes.PeriodsStart    periodStart
    annotation (Placement(transformation(extent={{-64,-60},{-56,-52}})));
  CRML.TimeLocators.Attributes.PeriodsEnd    periodEnd
    annotation (Placement(transformation(extent={{-64,-80},{-56,-72}})));
  CRML.Blocks.Events.Before after_Pstart
    annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
  CRML.Blocks.Logical.BooleanConstant boolean4Constant(K=false)
    annotation (Placement(transformation(extent={{-86,-10},{-66,10}})));
  Modelica.Blocks.Logical.And
                           and4_1
    annotation (Placement(transformation(extent={{48,-10},{68,10}})));
  CRML.Blocks.Events.Before before_Pend
    annotation (Placement(transformation(extent={{-30,-50},{-10,-30}})));
  Utilities.BooleanConnector  b2
    annotation (Placement(transformation(extent={{-120,40},{-100,20}})));
  CRML.TimeLocators.Continuous.During during
    annotation (Placement(transformation(extent={{-80,-40},{-60,-20}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-94,-34},{-86,-26}})));
  CRML.Blocks.Logical.BooleanConstant reset(K=false)
    annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
  CRML.ETL.Connectors.IntegerOutput i_count_ticks_of_c1_inside_p1
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  CRML.Blocks.Events.EventCounter eventCounter
    annotation (Placement(transformation(extent={{74,-10},{94,10}})));
  inner CRML.TimeLocators.Continuous.Master master(defaultInputValue=true)
    annotation (Placement(transformation(extent={{50,70},{70,90}})));
equation
  connect(periodStart.y, after_Pstart.u1) annotation (Line(points={{-55.6,-56},
          {-52,-56},{-52,8},{-31,8}},color={217,67,180}));
  connect(boolean4Constant.y, after_Pstart.strictlyBefore)
    annotation (Line(points={{-65,0},{-31,0}}, color={217,67,180}));
  connect(after_Pstart.y, eventFilter.cond) annotation (Line(points={{-9,0},{4,0},
          {4,38},{11,38}}, color={217,67,180}));
  connect(periodEnd.y, before_Pend.u2) annotation (Line(points={{-55.6,-76},{
          -48,-76},{-48,-48},{-31,-48}},
                                     color={217,67,180}));
  connect(before_Pend.strictlyBefore, boolean4Constant.y) annotation (Line(
        points={{-31,-40},{-50,-40},{-50,0},{-65,0}}, color={217,67,180}));
  connect(before_Pend.y, eventFilter1.cond) annotation (Line(points={{-9,-40},{0,
          -40},{0,-22},{11,-22}}, color={217,67,180}));
  connect(eventFilter1.u, eventFilter.u) annotation (Line(points={{11,-30},{-2,-30},
          {-2,30},{11,30}}, color={217,67,180}));
  connect(before_Pend.u1, after_Pstart.u2) annotation (Line(points={{-31,-32},{-40,
          -32},{-40,-8},{-31,-8}}, color={217,67,180}));
  connect(after_Pstart.u2, b2) annotation (Line(points={{-31,-8},{-40,-8},{-40,30},
          {-110,30}}, color={217,67,180}));
  connect(during.u, booleanToBoolean4_1.y)
    annotation (Line(points={{-81,-30},{-85.6,-30}}, color={162,29,33}));
  connect(during.y, periodStart.tl) annotation (Line(points={{-70,-40},{-70,-46},
          {-60,-46},{-60,-52}}, color={0,0,255}));
  connect(periodEnd.tl, during.y) annotation (Line(points={{-60,-72},{-60,-66},
          {-70,-66},{-70,-40}}, color={0,0,255}));
  connect(booleanToBoolean4_1.u, b1)
    annotation (Line(points={{-94.4,-30},{-110,-30}}, color={217,67,180}));
  connect(after_Pstart.reset, reset.y) annotation (Line(points={{-20,-11},{-34,
          -11},{-34,70},{-59,70}}, color={217,67,180}));
  connect(before_Pend.reset, reset.y) annotation (Line(points={{-20,-51},{-34,
          -51},{-34,70},{-59,70}}, color={217,67,180}));
  connect(eventFilter.u, b2)
    annotation (Line(points={{11,30},{-110,30}}, color={217,67,180}));
  connect(eventFilter1.y, and4_1.u2) annotation (Line(points={{33,-30},{38,-30},
          {38,-8},{46,-8}}, color={217,67,180}));
  connect(and4_1.u1, eventFilter.y) annotation (Line(points={{46,0},{40,0},{40,
          30},{33,30}}, color={255,0,255}));
  connect(i_count_ticks_of_c1_inside_p1, eventCounter.y)
    annotation (Line(points={{110,0},{95,0}}, color={255,127,0}));
  connect(and4_1.y, eventCounter.u)
    annotation (Line(points={{69,0},{73,0}}, color={255,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end CountInside;
