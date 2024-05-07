within CRML_test.ETL.CountInside;
partial model CountInside

protected
  parameter Integer N=CRML.ETL.Types.nMaxOverlap;

public
  Utilities.TimeLocatorConnector
                              P1
    annotation (Placement(transformation(extent={{-120,-20},{-100,-40}})));
  Utilities.ClockConnector    C1
    annotation (Placement(transformation(extent={{-120,40},{-100,20}})));
  CRML.ETL.Connectors.IntegerOutput i_count_ticks_of_c1_inside_p1
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  CRML.ETL.Blocks.Clocks.Inside inside
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  CRML.Blocks.Events.EventCounter eventCounter
    annotation (Placement(transformation(extent={{40,-10},{60,10}})));
  Modelica.Clocked.BooleanSignals.NonPeriodic.ClockToBoolean clockToBoolean
    annotation (Placement(transformation(extent={{-4,-4},{4,4}})));
  CRML.Blocks.Logical.BooleanConstant booleanConstant(K=false)
    annotation (Placement(transformation(extent={{20,-60},{40,-40}})));
equation
  connect(eventCounter.y, i_count_ticks_of_c1_inside_p1)
    annotation (Line(points={{61,0},{110,0}}, color={255,127,0}));
  connect(inside.y, clockToBoolean.u) annotation (Line(
      points={{-39,0},{-4.8,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(clockToBoolean.y, eventCounter.u)
    annotation (Line(points={{4.4,0},{39,0}}, color={217,67,180}));
  connect(inside.u, C1) annotation (Line(
      points={{-61,3},{-80,3},{-80,30},{-110,30}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(inside.tl, P1) annotation (Line(points={{-61,-3},{-80,-3},{-80,-30},{
          -110,-30}}, color={0,0,255}));
  connect(booleanConstant.y, eventCounter.reset)
    annotation (Line(points={{41,-50},{50,-50},{50,-11}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-250,170},{250,110}},
          textString="%name",
          lineColor={0,0,255}),                                              Line(points={{-72,34},
              {-28,34},{-28,78},{-28,78},{-28,34},{74,34}},
                                   color={0,140,72},
          pattern=LinePattern.Dot),
        Ellipse(
          extent={{-38,88},{-18,68}},
          lineColor={0,140,72},
          fillColor={0,140,72},
          fillPattern=FillPattern.Solid),
        Line(points={{-86,-32},{-50,-32},{-50,12},{60,12},{60,-34},{88,-34}},
            color={28,108,200}),
        Ellipse(
          extent={{4,88},{24,68}},
          lineColor={0,140,72},
          fillColor={0,140,72},
          fillPattern=FillPattern.Solid),
        Line(
          points={{14,78},{14,34}},
          color={0,140,72},
          pattern=LinePattern.Dot),
        Ellipse(
          extent={{64,88},{84,68}},
          lineColor={0,140,72},
          fillColor={0,140,72},
          fillPattern=FillPattern.Solid),
        Line(
          points={{74,78},{74,34}},
          color={0,140,72},
          pattern=LinePattern.Dot),
        Ellipse(
          extent={{-82,88},{-62,68}},
          lineColor={0,140,72},
          fillColor={0,140,72},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-72,78},{-72,34}},
          color={0,140,72},
          pattern=LinePattern.Dot),
        Ellipse(
          extent={{-38,22},{-18,2}},
          lineColor={0,140,72},
          fillPattern=FillPattern.Solid,
          fillColor={255,255,255}),
        Ellipse(
          extent={{4,22},{24,2}},
          lineColor={0,140,72},
          fillPattern=FillPattern.Solid,
          fillColor={255,255,255}),
        Line(points={{-86,-80},{-30,-80},{-30,-66},{12,-66},{12,-54},{76,-54},{
              76,-54}}, color={244,125,35})}),                   Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end CountInside;
