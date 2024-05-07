within CRML_test.ETL.CountInside_no_ext;
model CountInside_no_ext


public
  CRML.ETL.Connectors.IntegerOutput i_count_ticks_of_c1_inside_p1
    annotation (Placement(transformation(extent={{160,-10},{180,10}})));
  CRML.ETL.Blocks.Clocks.CountInside countInside
    annotation (Placement(transformation(extent={{60,-10},{80,10}})));
public
  CRML.Blocks.Logical.BooleanTable bool2(
    y0=false,
    option_width=false,
    instant={2,3,3.5,4.5,6,7.5})
    annotation (Placement(transformation(extent={{-140,30},{-120,50}})));
  CRML.Blocks.Logical.BooleanTable P1(
    y0=false,
    option_width=false,
    instant={2.5,5})
    annotation (Placement(transformation(extent={{-140,-70},{-120,-50}})));
  CRML.Blocks.Events.ShowEvent showEvent_b2
    annotation (Placement(transformation(extent={{-64,46},{-56,54}})));
  CRML.Blocks.Events.ShowEvent showEvent_b1
    annotation (Placement(transformation(extent={{-64,-54},{-56,-46}})));
  CRML.Blocks.Events.ClockEvent c1
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  CRML.TimeLocators.Continuous.During during
    annotation (Placement(transformation(extent={{-40,-80},{-20,-60}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-84,-74},{-76,-66}})));
  inner CRML.TimeLocators.Continuous.Master master
    annotation (Placement(transformation(extent={{-20,50},{0,70}})));
equation
  connect(showEvent_b2.u,bool2. y) annotation (Line(points={{-64.4,50},{-90,50},
          {-90,40},{-119,40}},color={217,67,180}));
  connect(P1.y, showEvent_b1.u) annotation (Line(points={{-119,-60},{-92,-60},{
          -92,-50},{-64.4,-50}}, color={217,67,180}));
  connect(c1.u, bool2.y) annotation (Line(points={{-61,0},{-80,0},{-80,40},{-119,
          40}}, color={217,67,180}));
  connect(P1.y, booleanToBoolean4_1.u) annotation (Line(points={{-119,-60},{-92,
          -60},{-92,-70},{-84.4,-70}}, color={217,67,180}));
  connect(booleanToBoolean4_1.y,during. u)
    annotation (Line(points={{-75.6,-70},{-41,-70}},
                                                  color={162,29,33}));
  connect(c1.y, countInside.u) annotation (Line(
      points={{-39,0},{-39,3},{59,3}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(during.y[1], countInside.tl) annotation (Line(points={{-30,-80},{-30,-86},
          {48,-86},{48,-3},{59,-3}}, color={0,0,255}));
  connect(countInside.y, i_count_ticks_of_c1_inside_p1)
    annotation (Line(points={{81,0},{170,0}}, color={255,127,0}));
 annotation (Icon(coordinateSystem(preserveAspectRatio=false,
        extent={{-160,-100},{160,100}},
        initialScale=0.1)),                                     Diagram(
       coordinateSystem(preserveAspectRatio=false,
        extent={{-160,-100},{160,100}},
        initialScale=0.1)));
end CountInside_no_ext;
