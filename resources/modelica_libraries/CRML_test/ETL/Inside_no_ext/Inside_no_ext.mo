within CRML_test.ETL.Inside_no_ext;
model Inside_no_ext

protected
 parameter Integer N=CRML.ETL.Types.nMaxOverlap;

public
 CRML.Blocks.Logical.BooleanTable b2(
    y0=false,
    option_width=false,
    instant={2,3,3.5,4.5,6,7.5})
    annotation (Placement(transformation(extent={{-100,30},{-80,50}})));
 CRML.Blocks.Logical.BooleanTable b1(
    y0=false,
    option_width=false,
    instant={2.5,5})
    annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
  CRML.ETL.Connectors.ClockOutput c_filtered_ticks_of_c1_inside_p1
    annotation (Placement(transformation(extent={{160,-10},{180,10}})));
  CRML.Blocks.Events.ClockEvent clockEvent
    annotation (Placement(transformation(extent={{-38,30},{-18,50}})));
  CRML.TimeLocators.Continuous.During during
    annotation (Placement(transformation(extent={{0,-50},{20,-30}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-36,-44},{-28,-36}})));
  inner CRML.TimeLocators.Continuous.Master master
    annotation (Placement(transformation(extent={{60,60},{80,80}})));
  CRML.ETL.Blocks.Clocks.Inside inside
    annotation (Placement(transformation(extent={{80,-10},{100,10}})));
  CRML.ETL.Connectors.TimeLocatorOutput P1
    annotation (Placement(transformation(extent={{160,-70},{180,-50}})));
  CRML.ETL.Connectors.ClockOutput C1
    annotation (Placement(transformation(extent={{160,30},{180,50}})));
equation
  connect(booleanToBoolean4_1.y,during. u)
    annotation (Line(points={{-27.6,-40},{-1,-40}},
                                                  color={162,29,33}));
  connect(clockEvent.u, b2.y)
    annotation (Line(points={{-39,40},{-79,40}}, color={217,67,180}));
  connect(b1.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-79,-40},{-36.4,-40}}, color={217,67,180}));
  connect(c_filtered_ticks_of_c1_inside_p1, inside.y) annotation (Line(
      points={{170,0},{101,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(clockEvent.y, inside.u) annotation (Line(
      points={{-17,40},{12,40},{12,3},{79,3}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(during.y[1], inside.tl) annotation (Line(points={{10,-50},{10,-66},{
          66,-66},{66,-3},{79,-3}}, color={0,0,255}));
  connect(during.y[1], P1) annotation (Line(points={{10,-50},{10,-66},{66,-66},
          {66,-60},{170,-60}}, color={0,0,255}));
  connect(clockEvent.y, C1) annotation (Line(
      points={{-17,40},{170,40}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
 annotation (Icon(coordinateSystem(preserveAspectRatio=false,
        extent={{-160,-100},{160,100}},
        initialScale=0.1)),                                     Diagram(
       coordinateSystem(preserveAspectRatio=false,
        extent={{-160,-100},{160,100}},
        initialScale=0.1)));
end Inside_no_ext;
