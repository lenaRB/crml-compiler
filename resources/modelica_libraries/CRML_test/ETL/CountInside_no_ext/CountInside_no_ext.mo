within CRML_test.ETL.CountInside_no_ext;
model CountInside_no_ext

protected
 parameter Integer N=CRML.ETL.Types.nMaxOverlap;

public
 CRML.Blocks.Events.Before after_Pstart
   annotation (Placement(transformation(extent={{2,-10},{22,10}})));
public
 CRML.Blocks.Logical.BooleanTable b2(
    y0=false,
    option_width=false,
    instant={2,3,3.5,4.5,6,7.5})
    annotation (Placement(transformation(extent={{-100,30},{-80,50}})));
 CRML.Blocks.Logical.BooleanConstant boolean4Constant(K=false)
   annotation (Placement(transformation(extent={{-86,-10},{-66,10}})));
 CRML.Blocks.Logical.BooleanConstant reset(K=false)
   annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
 inner CRML.TimeLocators.Continuous.Master master
   annotation (Placement(transformation(extent={{40,60},{60,80}})));
 CRML.Blocks.Logical.BooleanTable b1(
    y0=false,
    option_width=false,
    instant={2.5,5})
    annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-64,-44},{-56,-36}})));
  CRML.TimeLocators.Continuous.During during
    annotation (Placement(transformation(extent={{-50,-50},{-30,-30}})));
  CRML.TimeLocators.Attributes.PeriodsStart    periodStart
    annotation (Placement(transformation(extent={{-34,-70},{-26,-62}})));
  CRML.TimeLocators.Attributes.PeriodsEnd    periodEnd
    annotation (Placement(transformation(extent={{-34,-90},{-26,-82}})));
  CRML.Blocks.Events.ShowEvent showEvent_PeriodStart
    annotation (Placement(transformation(extent={{2,-70},{10,-62}})));
  CRML.Blocks.Events.ShowEvent showEvent_PeriodEnd
    annotation (Placement(transformation(extent={{0,-90},{8,-82}})));
  CRML.Blocks.Events.EventFilter eventFilter
    annotation (Placement(transformation(extent={{40,22},{60,42}})));
  CRML.Blocks.Events.ShowEvent showEvent_FilterAfterPstart
    annotation (Placement(transformation(extent={{86,28},{94,36}})));
  CRML.Blocks.Events.ShowEvent showEvent_b2
    annotation (Placement(transformation(extent={{-2,56},{6,64}})));
public
 CRML.Blocks.Events.Before before_Pend
    annotation (Placement(transformation(extent={{20,-50},{40,-30}})));
  CRML.Blocks.Events.ShowEvent showEvent_FilterBeforePend
    annotation (Placement(transformation(extent={{106,-14},{114,-6}})));
  CRML.Blocks.Events.EventFilter eventFilter1
    annotation (Placement(transformation(extent={{60,-20},{80,0}})));
  Modelica.Blocks.Logical.And and1
    annotation (Placement(transformation(extent={{100,10},{120,30}})));
  CRML.Blocks.Events.ShowEvent showEvent_Inside
    annotation (Placement(transformation(extent={{128,16},{136,24}})));
  CRML.ETL.Connectors.IntegerOutput i_count_ticks_of_c1_inside_p1
    annotation (Placement(transformation(extent={{160,-10},{180,10}})));
 CRML.Blocks.Logical.BooleanConstant boolean4Constant1(
                                                      K=false)
   annotation (Placement(transformation(extent={{100,-40},{120,-20}})));
  CRML.Blocks.Events.EventCounter
             eventClock
    annotation (Placement(transformation(extent={{128,-10},{148,10}})));
equation
 connect(boolean4Constant.y, after_Pstart.strictlyBefore)
   annotation (Line(points={{-65,0},{1,0}},   color={217,67,180}));
  connect(after_Pstart.u2, b2.y) annotation (Line(points={{1,-8},{-46,-8},{-46,
          40},{-79,40}}, color={217,67,180}));
  connect(reset.y, after_Pstart.reset) annotation (Line(points={{-59,70},{-40,
          70},{-40,-18},{12,-18},{12,-11}}, color={217,67,180}));
  connect(b1.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-79,-40},{-64.4,-40}}, color={217,67,180}));
  connect(booleanToBoolean4_1.y, during.u)
    annotation (Line(points={{-55.6,-40},{-51,-40}}, color={162,29,33}));
  connect(periodStart.tl, during.y)
    annotation (Line(points={{-30,-62},{-40,-62},{-40,-50}}, color={0,0,255}));
  connect(periodEnd.tl, during.y)
    annotation (Line(points={{-30,-82},{-40,-82},{-40,-50}}, color={0,0,255}));
  connect(periodStart.y, after_Pstart.u1) annotation (Line(points={{-25.6,-66},
          {-12,-66},{-12,8},{1,8}}, color={217,67,180}));
  connect(periodStart.y, showEvent_PeriodStart.u)
    annotation (Line(points={{-25.6,-66},{1.6,-66}}, color={217,67,180}));
  connect(periodEnd.y, showEvent_PeriodEnd.u)
    annotation (Line(points={{-25.6,-86},{-0.4,-86}}, color={217,67,180}));
  connect(eventFilter.u, b2.y) annotation (Line(points={{39,32},{-20,32},{-20,
          40},{-79,40}}, color={217,67,180}));
  connect(after_Pstart.y, eventFilter.cond) annotation (Line(points={{23,0},{32,
          0},{32,40},{39,40}}, color={217,67,180}));
  connect(eventFilter.y, showEvent_FilterAfterPstart.u)
    annotation (Line(points={{61,32},{85.6,32}}, color={217,67,180}));
  connect(b2.y, showEvent_b2.u) annotation (Line(points={{-79,40},{-30,40},{-30,
          60},{-2.4,60}}, color={217,67,180}));
  connect(before_Pend.reset, after_Pstart.reset)
    annotation (Line(points={{30,-51},{12,-51},{12,-11}}, color={217,67,180}));
  connect(before_Pend.strictlyBefore, after_Pstart.strictlyBefore) annotation (
      Line(points={{19,-40},{-6,-40},{-6,0},{1,0}}, color={217,67,180}));
  connect(before_Pend.u1, b2.y) annotation (Line(points={{19,-32},{-4,-32},{-4,
          -8},{-46,-8},{-46,40},{-79,40}}, color={217,67,180}));
  connect(before_Pend.u2, showEvent_PeriodEnd.u) annotation (Line(points={{19,
          -48},{-6,-48},{-6,-86},{-0.4,-86}}, color={217,67,180}));
  connect(eventFilter1.y, showEvent_FilterBeforePend.u)
    annotation (Line(points={{81,-10},{105.6,-10}}, color={217,67,180}));
  connect(eventFilter1.u, b2.y) annotation (Line(points={{59,-10},{36,-10},{36,
          32},{-22,32},{-22,40},{-79,40}}, color={217,67,180}));
  connect(before_Pend.y, eventFilter1.cond) annotation (Line(points={{41,-40},{
          50,-40},{50,-2},{59,-2}}, color={217,67,180}));
  connect(and1.u1, eventFilter.y) annotation (Line(points={{98,20},{76,20},{76,
          32},{61,32}}, color={255,0,255}));
  connect(and1.u2, showEvent_FilterBeforePend.u) annotation (Line(points={{98,
          12},{88,12},{88,-10},{105.6,-10}}, color={255,0,255}));
  connect(and1.y, showEvent_Inside.u)
    annotation (Line(points={{121,20},{127.6,20}}, color={255,0,255}));
  connect(i_count_ticks_of_c1_inside_p1, eventClock.y) annotation (Line(
      points={{170,0},{149,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(eventClock.u, and1.y) annotation (Line(points={{127,0},{124,0},{124,
          20},{121,20}}, color={217,67,180}));
  connect(eventClock.reset, boolean4Constant1.y) annotation (Line(points={{138,
          -11},{130,-11},{130,-30},{121,-30}}, color={217,67,180}));
 annotation (Icon(coordinateSystem(preserveAspectRatio=false,
        extent={{-160,-100},{160,100}},
        initialScale=0.1)),                                     Diagram(
       coordinateSystem(preserveAspectRatio=false,
        extent={{-160,-100},{160,100}},
        initialScale=0.1)));
end CountInside_no_ext;
