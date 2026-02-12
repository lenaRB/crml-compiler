within cooling_system.Verification;

model Reqs_sri_CRML_verif
  Reqs_sri_CRML_externals externals annotation(
    Placement(transformation(origin = {-216, 20}, extent = {{-23, -20}, {23, 20}})));
  inner CRML.TimeLocators.Continuous.Master master annotation(
    Placement(transformation(origin = {-392, 168}, extent = {{232, -228}, {252, -208}})));
  CRML.Blocks.Logical.BooleanPulse booleanPulse(period = 1000, startTime = 10, width = 980) annotation(
    Placement(transformation(origin = {-414, 168}, extent = {{194, -228}, {214, -208}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
    Placement(transformation(origin = {-402, 168}, extent = {{218, -222}, {226, -214}})));
  Reqs_sri_CRML reqs annotation(
    Placement(transformation(origin = {-154, 20}, extent = {{-14, -13}, {14, 13}})));
equation
// Bindings
  reqs.v1 = externals.v1;
  reqs.v2 = externals.v2;
  reqs.pump_in_service1 = externals.pump_in_service1;
  reqs.pump_in_service2 = externals.pump_in_service2;
  reqs.pump_in_service3 = externals.pump_in_service3;
  reqs.flow1 = externals.flow1;
  reqs.flow2 = externals.flow2;
  reqs.flow3 = externals.flow3;
  reqs.T = externals.T;
  connect(booleanPulse.y, booleanToBoolean4_1.u) annotation(
    Line(points = {{-199, -50}, {-184, -50}}, color = {217, 67, 180}));
  connect(master.u, booleanToBoolean4_1.y) annotation(
    Line(points = {{-161, -50}, {-176, -50}}, color = {162, 29, 33}));
  annotation(
    Diagram(coordinateSystem(extent = {{-240, 60}, {-140, -60}}), graphics),
    Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
  experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 2));
end Reqs_sri_CRML_verif;
