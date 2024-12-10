within CRML_test.FORML.FromUntil_no_ext;
model FromUntil_no_ext2
protected
  parameter Integer N = CRML.ETL.Types.nMaxOverlap;
public
  CRML.Blocks.Logical.BooleanTable b1(
    y0=false,
    option_width=false,
    instant={2,3.5,4,5,5.5,5.6,8,8.1,16})
    annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
  CRML.Blocks.Logical.BooleanTable b2(
    y0=false,
    option_width=false,
    instant={2.5,5,6,7,7.5,10})
    annotation (Placement(transformation(extent={{-80,-60},{-60,-40}})));
  CRML.Blocks.Events.ClockEvent clockEvent_1
    annotation (Placement(transformation(extent={{-26,24},{-14,36}})));
  CRML.Blocks.Events.ClockEvent clockEvent_2
    annotation (Placement(transformation(extent={{-26,-56},{-14,-44}})));
  FromUntil.FromUntil2    fromUntil2_1
    annotation (Placement(transformation(extent={{40,-10},{60,10}})));
  CRML.ETL.Connectors.TimeLocatorOutput[N] p_from_b1_until_b2
    annotation (Placement(transformation(extent={{92,-10},{112,10}})));
equation

  connect(b1.y,clockEvent_1. u)
    annotation (Line(points={{-59,30},{-26.6,30}},color={217,67,180}));
  connect(b2.y,clockEvent_2. u)
    annotation (Line(points={{-59,-50},{-26.6,-50}},color={217,67,180}));
  connect(clockEvent_1.y, fromUntil2_1.ck1) annotation (Line(
      points={{-13.4,30},{34,30},{34,4},{39,4}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(clockEvent_2.y, fromUntil2_1.ck2) annotation (Line(
      points={{-13.4,-50},{34,-50},{34,-4},{39,-4}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(fromUntil2_1.p_from_b1_until_b2, p_from_b1_until_b2)
    annotation (Line(points={{61,0},{102,0}}, color={0,0,255}));
end FromUntil_no_ext2;
