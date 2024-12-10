within CRML_test.FORML.FromBefore;
block FromBefore
protected
  parameter Integer N = CRML.ETL.Types.nMaxOverlap;
  CRML.ETL.Connectors.WhileOutput tl1 = tl;
public
  CRML.ETL.Connectors.ClockInput ck1 "Boolean4 condition" annotation(
    Placement(transformation(extent = {{-120, 30}, {-100, 50}}), iconTransformation(extent = {{-120, 30}, {-100, 50}})));
  CRML.ETL.Connectors.WhileInput tl annotation(
    Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
  CRML.ETL.Connectors.TimeLocatorOutput[N] p_from_b1_before_b2
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  CRML.ETL.TimeLocators.Periods periods(leftBoundaryIncluded=true,    rightBoundaryIncluded = false) annotation(
    Placement(transformation(extent = {{-10, -10}, {10, 10}})));
  Modelica.Clocked.BooleanSignals.NonPeriodic.ClockToBoolean clockToBoolean_ck1 annotation(
    Placement(transformation(extent = {{-80, 30}, {-60, 50}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_ck1 annotation(
    Placement(transformation(extent = {{-44, 36}, {-36, 44}})));
  Modelica.Clocked.BooleanSignals.NonPeriodic.ClockToBoolean clockToBoolean_ck2 annotation(
    Placement(transformation(extent = {{-80, -50}, {-60, -30}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_ck2 annotation(
    Placement(transformation(extent = {{-44, -44}, {-36, -36}})));

public
  CRML.ETL.Connectors.ClockInput ck2 "Boolean4 condition" annotation(
    Placement(transformation(extent={{-120,-50},{-100,-30}}),    iconTransformation(extent={{-120,
            -50},{-100,-30}})));
equation
  if (cardinality(tl) == 0) then
    tl.timePeriod = true;
    tl.clock = CRML.ETL.Types.Boolean4.true4;
    tl.isLeftBoundaryIncluded = true;
    tl.isRightBoundaryIncluded = true;
  end if;
  connect(ck1, clockToBoolean_ck1.u) annotation(
    Line(points = {{-110, 40}, {-82, 40}}, color = {175, 175, 175}, pattern = LinePattern.Dot, thickness = 0.5));
  connect(clockToBoolean_ck1.y, booleanToBoolean4_ck1.u) annotation(
    Line(points = {{-59, 40}, {-44.4, 40}}, color = {255, 0, 255}));
  connect(booleanToBoolean4_ck1.y, periods.u1) annotation(
    Line(points = {{-35.6, 40}, {-20, 40}, {-20, 0}, {-11, 0}}, color = {162, 29, 33}));
  connect(clockToBoolean_ck2.y, booleanToBoolean4_ck2.u) annotation(
    Line(points = {{-59, -40}, {-44.4, -40}}, color = {255, 0, 255}));
  connect(booleanToBoolean4_ck2.y, periods.u2) annotation(
    Line(points = {{-35.6, -40}, {-20, -40}, {-20, -8}, {-11, -8}}, color = {162, 29, 33}));
  connect(periods.y, p_from_b1_before_b2) annotation (Line(points={{0,-10},{0,-20},
          {80,-20},{80,0},{110,0}}, color={0,0,255}));
  connect(tl1, periods.tl) annotation(
    Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
  connect(clockToBoolean_ck2.u, ck2) annotation (Line(
      points={{-82,-40},{-110,-40}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  annotation(
    Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid, lineThickness = 5, borderPattern = BorderPattern.Raised, extent = {{-100, 100}, {100, -100}}), Rectangle(lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-70, 30}, {70, -52}}), Line(points = {{-50, -34}, {-50, -12}}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, pattern = LinePattern.Dash), Rectangle(fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, extent = {{22, 2}, {52, -12}}), Line(points = {{-50, 10}, {22, 10}}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}), Text(textColor = {175, 175, 175}, extent = {{-28, -10}, {22, -34}}, textString = "%u"), Text(extent = {{-78, 86}, {76, 38}},
          textString="from before",
          textColor={0,0,0})}),
    Diagram(coordinateSystem(preserveAspectRatio = false)),
    Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckAtEnd </b>(<b>u</b> = condition, <b>tl</b> = time_period, <b>checkAtEnd</b>); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the condition <b>u</b> is satisfied (true) at the end of the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://CRML.ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create time locators, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://CRML.ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://CRML.ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://CRML.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://CRML.Blocks.Logical4.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another <a href=\"modelica://CRML.ETL.Requirements.Check\">Check</a>, <a href=\"modelica://CRML.ETL.Requirements.CheckInteger\">CheckInteger</a> or <a href=\"modelica://CRML.ETL.Requirements.CheckReal\">CheckReal</a> block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
end FromBefore;
