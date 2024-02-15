within CRML_test.ETL.CheckOver_no_ext;
model CheckOver_no_ext
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
  CRML.Blocks.Logical4.And4_n and4(N=N)
    annotation (Placement(transformation(extent={{282,-10},{302,10}})));
  CRML_test.ETL.EvaluateOver.EvalUndefined
                         [N] eval
    annotation (Placement(transformation(extent={{242,-10},{262,10}})));
  CRML.Blocks.Routing.Boolean4Replicator boolean4Replicator(nout=N)
    annotation (Placement(transformation(extent={{120,-10},{140,10}})));
  CRML.Blocks.Logical.BooleanConstant[N] booleanConstant(each K=false)
    annotation (Placement(transformation(extent={{176,10},{196,30}})));
  CRML.Blocks.Logical4.BooleanToBoolean4[N] booleanToBoolean3_1
    annotation (Placement(transformation(extent={{212,16},{220,24}})));
  CRML.ETL.Connectors.Boolean4Output b_check_over
    annotation (Placement(transformation(extent={{316,-10},{336,10}})));
equation
  connect(boolean4Constant1.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-39,50},{-20.4,50}}, color={217,67,180}));
  connect(booleanToBoolean4_1.y, and4_1.u1)
    annotation (Line(points={{-11.6,50},{-1,50}}, color={162,29,33}));
  connect(boolean4Constant3.y, and4_1.u2) annotation (Line(points={{-13,30},{-6,
          30},{-6,34},{-1,34}}, color={162,29,33}));
  connect(and4_1.y, phi1) annotation (Line(points={{21,42},{66,42},{66,50},{90,
          50}}, color={162,29,33}));
  connect(boolean4Constant2.y, booleanToBoolean4_2.u)
    annotation (Line(points={{-39,-50},{-4.4,-50}}, color={217,67,180}));
  connect(booleanToBoolean4_2.y, during.u)
    annotation (Line(points={{4.4,-50},{39,-50}}, color={162,29,33}));
  connect(during.y, P1) annotation (Line(points={{50,-60},{84,-60},{84,-70},{90,
          -70}}, color={0,0,255}));
  connect(eval.y,and4. u)
    annotation (Line(points={{263,0},{281,0}},
                                             color={162,29,33}));
  connect(and4.y,b_check_over)
    annotation (Line(points={{303,0},{326,0}},color={162,29,33}));
  connect(boolean4Replicator.y,eval. u)
    annotation (Line(points={{141,0},{241,0}},color={162,29,33}));
  connect(booleanConstant.y,booleanToBoolean3_1. u)
    annotation (Line(points={{197,20},{211.6,20}},color={217,67,180}));
  connect(booleanToBoolean3_1.y,eval. a) annotation (Line(points={{220.4,20},{
          236,20},{236,8},{241,8}},
                                  color={162,29,33}));
  connect(P1, eval.tl) annotation (Line(points={{90,-70},{166,-70},{166,40},{
          252,40},{252,10}}, color={0,0,255}));
  connect(boolean4Replicator.u, phi1)
    annotation (Line(points={{118,0},{118,50},{90,50}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false,
        extent={{-100,-100},{320,100}},
        initialScale=0.1)),                                      Diagram(
        coordinateSystem(preserveAspectRatio=false,
        extent={{-100,-100},{320,100}},
        initialScale=0.1)));
end CheckOver_no_ext;
