within CRML_test.ETL.BecomesTrueInside_no_ext;
model BecomesTrueInside_no_ext
  CRML.Blocks.Logical.BooleanTable b2(
    y0=false,
    instant={3.5,4.5},
    option_width=false)
    annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-24,6},{-16,14}})));
  CRML.Blocks.Logical.BooleanConstant b3
    annotation (Placement(transformation(extent={{-80,-40},{-60,-20}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2
    annotation (Placement(transformation(extent={{-24,-34},{-16,-26}})));
  CRML.Blocks.Logical.BooleanConstant b4(K=false)
    annotation (Placement(transformation(extent={{-80,-80},{-60,-60}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3
    annotation (Placement(transformation(extent={{-24,-74},{-16,-66}})));
  CRML.ETL.Connectors.ClockOutput c_b2_becomes_true_inside_p1
    annotation (Placement(transformation(extent={{100,20},{120,40}})));
  CRML.ETL.Connectors.ClockOutput c_b3_becomes_true_inside_p1
    annotation (Placement(transformation(extent={{100,-20},{120,0}})));
  CRML.ETL.Connectors.ClockOutput c_b4_becomes_true_inside_p1
    annotation (Placement(transformation(extent={{100,-60},{120,-40}})));
  CRML.Blocks.Logical.BooleanTable b1(
    y0=false,
    option_width=false,
    instant={2.5,5,7.5,9})
    annotation (Placement(transformation(extent={{-180,50},{-160,70}})));
  CRML.TimeLocators.Continuous.During during
    annotation (Placement(transformation(extent={{-80,50},{-60,70}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4
    annotation (Placement(transformation(extent={{-124,56},{-116,64}})));
  CRML.ETL.Blocks.Events.BecomesTrueInside becomesTrueInside1
    annotation (Placement(transformation(extent={{0,20},{20,40}})));
  CRML.ETL.Blocks.Events.BecomesTrueInside becomesTrueInside2
    annotation (Placement(transformation(extent={{0,-20},{20,0}})));
  CRML.ETL.Blocks.Events.BecomesTrueInside becomesTrueInside3
    annotation (Placement(transformation(extent={{0,-60},{20,-40}})));
equation
  connect(b2.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-59,10},{-24.4,10}}, color={217,67,180}));
  connect(b3.y, booleanToBoolean4_2.u) annotation (Line(points={{-59,-30},{
          -24.4,-30}},                                color={217,67,180}));
  connect(b4.y, booleanToBoolean4_3.u)
    annotation (Line(points={{-59,-70},{-24.4,-70}}, color={217,67,180}));
  connect(b1.y, booleanToBoolean4_4.u)
    annotation (Line(points={{-159,60},{-124.4,60}}, color={217,67,180}));
  connect(booleanToBoolean4_4.y,during. u)
    annotation (Line(points={{-115.6,60},{-81,60}},
                                                  color={162,29,33}));
  connect(during.y[1], becomesTrueInside1.tl)
    annotation (Line(points={{-70,50},{-70,25},{-1,25}}, color={0,0,255}));
  connect(becomesTrueInside1.y, c_b2_becomes_true_inside_p1) annotation (Line(
      points={{21,30},{110,30}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(becomesTrueInside2.y, c_b3_becomes_true_inside_p1) annotation (Line(
      points={{21,-10},{110,-10}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(becomesTrueInside3.y, c_b4_becomes_true_inside_p1) annotation (Line(
      points={{21,-50},{110,-50}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(booleanToBoolean4_3.y, becomesTrueInside3.u) annotation (Line(points=
          {{-15.6,-70},{-10,-70},{-10,-46},{-1,-46},{-1,-45}}, color={162,29,33}));
  connect(booleanToBoolean4_2.y, becomesTrueInside2.u) annotation (Line(points=
          {{-15.6,-30},{-8,-30},{-8,-5},{-1,-5}}, color={162,29,33}));
  connect(booleanToBoolean4_1.y, becomesTrueInside1.u) annotation (Line(points=
          {{-15.6,10},{-6,10},{-6,35},{-1,35}}, color={162,29,33}));
  connect(becomesTrueInside2.tl, becomesTrueInside1.tl) annotation (Line(points=
         {{-1,-15},{-40,-15},{-40,25},{-1,25}}, color={0,0,255}));
  connect(becomesTrueInside3.tl, becomesTrueInside1.tl) annotation (Line(points=
         {{-1,-55},{-40,-55},{-40,25},{-1,25}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-250,
            -100},{250,100}})),                                  Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-250,-100},{250,
            100}})));
end BecomesTrueInside_no_ext;
