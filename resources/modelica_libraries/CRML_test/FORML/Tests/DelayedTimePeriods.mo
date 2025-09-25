within CRML_test.FORML.Tests;
model DelayedTimePeriods
  import CRML;
  CRML.Blocks.Events.EventTable event1(option_width = false, instant = {0.5, 4, 5, 7, 10}) annotation(
    Placement(transformation(extent = {{-100, 30}, {-80, 50}})));
  CRML.Blocks.Events.ShowEvent showEvent1 annotation(
    Placement(transformation(extent = {{-64, 46}, {-56, 54}})));
  CRML.ETL.TimeLocators.Periods fromFor
    annotation (Placement(transformation(extent={{40,0},{60,20}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
    Placement(transformation(extent = {{16, 6}, {24, 14}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
    Placement(transformation(extent = {{16, -2}, {24, 6}})));
  CRML.ETL.TimeLocators.Periods fromFor_duration(durationSpecified=true,
      discreteClockSpecified=false)
    annotation (Placement(transformation(extent={{40,-40},{60,-20}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
    Placement(transformation(extent = {{16, -34}, {24, -26}})));
  CRML.Blocks.Math.Constant duration(k=5)
    annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
  CRML.Blocks.Events.ShowEvent showDelayedEvent1
    annotation (Placement(transformation(extent={{-28,10},{-20,18}})));
  CRML.Blocks.Events.EventDelay eventDelay
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
equation
  connect(event1.y, showEvent1.u) annotation(
    Line(points = {{-79, 40}, {-70, 40}, {-70, 50}, {-64.4, 50}}, color = {217, 67, 180}));
  connect(booleanToBoolean4_2.y, fromFor.u1)
    annotation (Line(points={{24.4,10},{39,10}}, color={162,29,33}));
  connect(booleanToBoolean4_1.y, fromFor.u2)
    annotation (Line(points={{24.4,2},{39,2}}, color={162,29,33}));
  connect(booleanToBoolean4_4.y, fromFor_duration.u1)
    annotation (Line(points={{24.4,-30},{39,-30}}, color={162,29,33}));
  connect(duration.y, fromFor_duration.continuousDuration) annotation (Line(
        points={{-79,-40},{36,-40},{36,-38},{39,-38}}, color={0,0,0}));
  connect(eventDelay.delay, duration.y) annotation (Line(points={{-61,-8},{-66,
          -8},{-66,-40},{-79,-40}}, color={0,0,0}));
  connect(eventDelay.u, event1.y) annotation (Line(points={{-61,0},{-68,0},{-68,
          10},{-79,10},{-79,40}}, color={217,67,180}));
  connect(booleanToBoolean4_2.u, event1.y) annotation (Line(points={{15.6,10},{
          2,10},{2,32},{-79,32},{-79,40}}, color={217,67,180}));
  connect(booleanToBoolean4_1.u, eventDelay.y) annotation (Line(points={{15.6,2},
          {-36,2},{-36,0},{-39,0}}, color={217,67,180}));
  connect(showDelayedEvent1.u, eventDelay.y) annotation (Line(points={{-28.4,14},
          {-30,14},{-30,2},{-36,2},{-36,0},{-39,0}}, color={217,67,180}));
  connect(booleanToBoolean4_4.u, event1.y) annotation (Line(points={{15.6,-30},
          {-8,-30},{-8,32},{-79,32},{-79,40}}, color={217,67,180}));
  annotation(
    Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
    Diagram(coordinateSystem(preserveAspectRatio = false)),
    experiment(StopTime = 20));
end DelayedTimePeriods;
