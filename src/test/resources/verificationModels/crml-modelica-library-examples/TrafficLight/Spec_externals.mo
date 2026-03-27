model Spec_externals
  Modelica.Blocks.Sources.RealExpression greenObserver(y = phys.greenLamp.i) annotation(
    Placement(transformation(extent = {{56, 10}, {30, 30}})));
  Modelica.Blocks.Logical.GreaterEqualThreshold oGreen(threshold = 9) annotation(
    Placement(transformation(extent = {{12, 16}, {4, 24}})));
  Modelica.Blocks.Sources.RealExpression yellowObservor(y = phys.yellowLamp.i) annotation(
    Placement(transformation(extent = {{56, 30}, {30, 50}})));
  Modelica.Blocks.Logical.GreaterEqualThreshold oYellow(threshold = 9) annotation(
    Placement(transformation(extent = {{12, 36}, {4, 44}})));
  Modelica.Blocks.Sources.RealExpression redObserver(y = phys.redLamp.i) annotation(
    Placement(transformation(extent = {{56, 50}, {30, 70}})));
  CRML.Examples.TrafficLight.Log2 log annotation(
    Placement(transformation(extent = {{148, 30}, {128, 50}})));
  Modelica.Blocks.Logical.GreaterEqualThreshold oRed(threshold = 9) annotation(
    Placement(transformation(extent = {{12, 56}, {4, 64}})));
  CRML.Examples.TrafficLight.Phys1 phys annotation(
    Placement(transformation(extent = {{108, 30}, {88, 50}})));
  Modelica.Blocks.Sources.BooleanExpression green_active(y = oGreen.y) annotation(
    Placement(transformation(extent = {{-30, 10}, {-50, 30}})));
  Modelica.Blocks.Sources.BooleanExpression yellow_active(y = oYellow.y) annotation(
    Placement(transformation(extent = {{-30, 30}, {-50, 50}})));
  Modelica.Blocks.Sources.BooleanExpression red_active(y = oRed.y) annotation(
    Placement(transformation(extent = {{-30, 50}, {-50, 70}})));
  Modelica.Blocks.Interfaces.BooleanOutput red annotation(
    Placement(transformation(origin = {-72, 60}, extent = {{10, -10}, {-10, 10}}), iconTransformation(origin = {-110, 60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.BooleanOutput yellow annotation(
    Placement(transformation(origin = {-72, 40}, extent = {{10, -10}, {-10, 10}}), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.BooleanOutput green annotation(
    Placement(transformation(origin = {-72, 20}, extent = {{10, -10}, {-10, 10}}), iconTransformation(origin = {-110, -60}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(greenObserver.y, oGreen.u) annotation(
    Line(points = {{28.7, 20}, {12.8, 20}}, color = {0, 0, 127}));
  connect(yellowObservor.y, oYellow.u) annotation(
    Line(points = {{28.7, 40}, {12.8, 40}}, color = {0, 0, 127}));
  connect(redObserver.y, oRed.u) annotation(
    Line(points = {{28.7, 60}, {12.8, 60}}, color = {0, 0, 127}));
  connect(phys.green, log.y_green) annotation(
    Line(points = {{109, 32}, {114, 32}, {114, 32}, {118, 32}, {118, 32}, {127, 32}}, color = {217, 67, 180}));
  connect(phys.yellow, log.y_yellow) annotation(
    Line(points = {{109, 40}, {127, 40}}, color = {217, 67, 180}));
  connect(phys.red, log.y_red) annotation(
    Line(points = {{109, 48}, {114, 48}, {114, 48}, {118, 48}, {118, 48}, {127, 48}}, color = {217, 67, 180}));
  connect(red_active.y, red) annotation(
    Line(points = {{-50, 60}, {-72, 60}}, color = {255, 0, 255}));
  connect(yellow_active.y, yellow) annotation(
    Line(points = {{-50, 40}, {-72, 40}}, color = {255, 0, 255}));
  connect(green_active.y, green) annotation(
    Line(points = {{-50, 20}, {-72, 20}}, color = {255, 0, 255}));
  annotation(
    Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}})),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(lineColor = {28, 108, 200}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, extent = {{-150, 90}, {172, -30}}), Rectangle(lineColor = {28, 108, 200}, fillColor = {170, 255, 213}, fillPattern = FillPattern.Solid, extent = {{80, 80}, {158, 0}}), Text(textColor = {28, 108, 200}, extent = {{84, 14}, {156, 4}}, textString = "Behavioral model"), Rectangle(lineColor = {28, 108, 200}, fillColor = {170, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-4, 80}, {60, 0}}), Text(textColor = {28, 108, 200}, extent = {{-10, 12}, {64, 4}}, textString = "Observation model"), Text(textColor = {28, 108, 200}, extent = {{116, 64}, {156, 56}}, textString = "I&C"), Text(textColor = {28, 108, 200}, extent = {{80, 64}, {120, 56}}, textString = "Physical"), Rectangle(lineColor = {28, 108, 200}, fillColor = {255, 213, 170}, fillPattern = FillPattern.Solid, extent = {{-54, 80}, {-26, 0}}), Text(textColor = {28, 108, 200}, extent = {{-76, 12}, {-4, 4}}, textString = "Bindings"), Text(textColor = {28, 108, 200}, extent = {{-66, -8}, {78, -26}}, textString = "Model for computing externals")}),
    experiment(StopTime = 100));
end Spec_externals;
