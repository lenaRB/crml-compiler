within CRML_test.ETL.DecideOver_no_ext;
model DecideOver_no_ext
  import CRML_test;

protected
  parameter Integer N=CRML.ETL.Types.nMaxOverlap;

public
  CRML.Blocks.Logical.BooleanTable      boolean4Constant1(
    y0=false,
    option_width=false,
    instant={2,3.5})
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  CRML.Blocks.Logical.BooleanTable      boolean4Constant2(
    y0=false,
    option_width=false,
    instant={2.5,5})
    annotation (Placement(transformation(extent={{-60,-60},{-40,-40}})));
  CRML.ETL.Connectors.Boolean4Output phi1
    annotation (Placement(transformation(extent={{80,40},{100,60}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-20,46},{-12,54}})));
  CRML.Blocks.Logical4.And4 and4_1
    annotation (Placement(transformation(extent={{0,32},{20,52}})));
  CRML.Blocks.Logical4.Boolean4Constant boolean4Constant3(K=CRML.ETL.Types.Boolean4.undecided)
    annotation (Placement(transformation(extent={{-34,20},{-14,40}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2
    annotation (Placement(transformation(extent={{-4,-54},{4,-46}})));
  CRML.ETL.Connectors.TimeLocatorOutput[N] P1
    annotation (Placement(transformation(extent={{80,-80},{100,-60}})));
  CRML.TimeLocators.Continuous.During during
    annotation (Placement(transformation(extent={{40,-60},{60,-40}})));
  CRML.ETL.Connectors.Boolean4Output b_decide_over
    annotation (Placement(transformation(extent={{320,-10},{340,10}})));
  CRML.TimeLocators.Attributes.PeriodsEnd periodsEnd
    annotation (Placement(transformation(extent={{156,-68},{164,-60}})));
  CRML.Blocks.Logical4.Or4 or4_n
    annotation (Placement(transformation(extent={{200,-10},{220,10}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3
    annotation (Placement(transformation(extent={{180,-64},{188,-56}})));
equation
  connect(boolean4Constant1.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-39,50},{-20.4,50}}, color={217,67,180}));
  connect(booleanToBoolean4_1.y, and4_1.u1)
    annotation (Line(points={{-11.6,50},{-1,50}}, color={162,29,33}));
  connect(boolean4Constant3.y, and4_1.u2) annotation (Line(points={{-13,30},{-6,
          30},{-6,34},{-1,34}}, color={162,29,33}));
  connect(and4_1.y, phi1) annotation (Line(points={{21,42},{66,42},{66,50},{90,50}},
                color={162,29,33}));
  connect(boolean4Constant2.y, booleanToBoolean4_2.u)
    annotation (Line(points={{-39,-50},{-4.4,-50}}, color={217,67,180}));
  connect(booleanToBoolean4_2.y, during.u)
    annotation (Line(points={{4.4,-50},{39,-50}}, color={162,29,33}));
  connect(during.y, P1)
    annotation (Line(points={{50,-60},{50,-70},{90,-70}}, color={0,0,255}));
  connect(P1, periodsEnd.tl) annotation (Line(points={{90,-70},{126,-70},{126,-60},
          {160,-60}}, color={0,0,255}));
  connect(periodsEnd.y, booleanToBoolean4_3.u) annotation (Line(points={{164.4,-64},
          {172,-64},{172,-60},{179.6,-60}}, color={217,67,180}));
  connect(phi1, or4_n.u1) annotation (Line(points={{90,50},{144,50},{144,8},{199,
          8}}, color={162,29,33}));
  connect(booleanToBoolean4_3.y, or4_n.u2) annotation (Line(points={{188.4,-60},
          {194,-60},{194,-8},{199,-8}}, color={162,29,33}));
  connect(or4_n.y, b_decide_over)
    annotation (Line(points={{221,0},{330,0}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false,
        extent={{-100,-100},{320,100}},
        initialScale=0.1)),                                      Diagram(
        coordinateSystem(preserveAspectRatio=false,
        extent={{-100,-100},{320,100}},
        initialScale=0.1)));
end DecideOver_no_ext;
