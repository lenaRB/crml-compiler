within CRML_test.ETL.Inside;
partial model Inside

protected
  parameter Integer N=CRML.ETL.Types.nMaxOverlap;

public
  CRML.Blocks.Events.EventFilter eventFilter
    annotation (Placement(transformation(extent={{-12,-10},{8,10}})));
  CRML.ETL.TimeLocators.Attributes.PeriodTimePeriod
                                               periodTimePeriod
    annotation (Placement(transformation(extent={{-84,-44},{-76,-36}})));
  CRML.ETL.Connectors.ClockOutput c_filtered_ticks_of_c1_inside_p1
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  CRML.Blocks.Events.ClockEvent
             eventClock
    annotation (Placement(transformation(extent={{60,-10},{80,10}})));
  Utilities.ClockConnector       C1
    annotation (Placement(transformation(extent={{-120,20},{-100,40}})));
  Utilities.TimeLocatorConnector       P1
    annotation (Placement(transformation(extent={{-120,-40},{-100,-20}})));
  Modelica.Clocked.BooleanSignals.NonPeriodic.ClockToBoolean clockToBoolean
    annotation (Placement(transformation(extent={{-60,20},{-40,40}})));
equation
  connect(c_filtered_ticks_of_c1_inside_p1, eventClock.y) annotation (Line(
      points={{110,0},{81,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(periodTimePeriod.tl, P1) annotation (Line(points={{-80,-36},{-80,-30},
          {-110,-30}}, color={0,0,255}));
  connect(C1, clockToBoolean.u)
    annotation (Line(points={{-110,30},{-62,30}}, color={0,0,0}));
  connect(periodTimePeriod.y, eventFilter.cond) annotation (Line(points={{-75.6,
          -40},{-20,-40},{-20,8},{-13,8}}, color={217,67,180}));
  connect(eventFilter.u, clockToBoolean.y) annotation (Line(points={{-13,0},{
          -26,0},{-26,30},{-39,30}}, color={217,67,180}));
  connect(eventFilter.y, eventClock.u)
    annotation (Line(points={{9,0},{59,0}}, color={217,67,180}));
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
        Line(points={{-86,-52},{-50,-52},{-50,-8},{60,-8},{60,-54},{88,-54}},
            color={0,0,0}),
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
          extent={{-38,2},{-18,-18}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{4,2},{24,-18}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid)}),                      Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Inside;
