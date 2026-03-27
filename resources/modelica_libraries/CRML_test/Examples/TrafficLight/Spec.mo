within CRML_test.Examples.TrafficLight;

model Spec
  CRML.TimeLocators.Continuous.AfterBefore afterBefore annotation(
    Placement(transformation(extent = {{-40, 64}, {-20, 84}})));
  CRML.Requirements.CheckCountEqual checkInPCount(threshold = 0) annotation(
    Placement(transformation(extent = {{-40, 24}, {-20, 44}})));
  CRML.TimeLocators.Continuous.AfterFor afterFor annotation(
    Placement(transformation(extent = {{-40, -40}, {-20, -20}})));
  CRML.Blocks.Math.Constant const(k = 30) annotation(
    Placement(transformation(extent = {{-80, -60}, {-60, -40}})));
  CRML.Requirements.Ensure checkBoolean annotation(
    Placement(transformation(extent = {{-40, -80}, {-20, -60}})));
  CRML.TimeLocators.Continuous.AfterFor When annotation(
    Placement(transformation(extent = {{100, 70}, {120, 90}})));
  CRML.Blocks.Math.Constant const1(k = 0.2) annotation(
    Placement(transformation(extent = {{20, 14}, {40, 34}})));
  CRML.Requirements.CheckAtEnd checkInPCount1 annotation(
    Placement(transformation(extent = {{100, 0}, {120, 20}})));
  CRML.Blocks.Math.Constant const2(k = 30) annotation(
    Placement(transformation(extent = {{22, 50}, {42, 70}})));
  CRML.ETL.Connectors.BooleanInput red "External Boolean variable" annotation(
    Placement(transformation(extent = {{-120, 70}, {-100, 90}})));
  CRML.ETL.Connectors.BooleanInput green annotation(
    Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
  CRML.ETL.Connectors.BooleanInput yellow "Boolean condition" annotation(
    Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
  CRML.Blocks.Logical4.ShowBoolean4 show_req1 annotation(
    Placement(transformation(extent = {{-8, 20}, {14, 48}})));
  CRML.Blocks.Logical4.ShowBoolean4 show_req2 annotation(
    Placement(transformation(extent = {{-10, -82}, {14, -58}})));
  CRML.Blocks.Logical4.ShowBoolean4 show_req3 annotation(
    Placement(transformation(origin = {-2, 14}, extent = {{140, -2}, {162, 22}})));
  CRML.Blocks.Logical4.And4 and4_1 annotation(
    Placement(transformation(extent = {{20, -58}, {40, -38}})));
  CRML.Blocks.Logical4.And4 and4_2 annotation(
    Placement(transformation(extent = {{112, -50}, {132, -30}})));
  CRML.Blocks.Logical4.ShowBoolean4 show_req annotation(
    Placement(transformation(extent = {{138, -52}, {160, -28}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
    Placement(transformation(extent = {{-84, 76}, {-76, 84}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
    Placement(transformation(extent = {{-84, 62}, {-76, 70}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
    Placement(transformation(extent = {{-84, -84}, {-76, -76}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
    Placement(transformation(extent = {{-84, -4}, {-76, 4}})));
  CRML.Blocks.Events.EventDelay booleanDelay annotation(
    Placement(transformation(extent = {{58, 70}, {78, 90}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_5 annotation(
    Placement(transformation(extent = {{84, 76}, {92, 84}})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent annotation(
    Placement(transformation(extent = {{42, 76}, {50, 84}})));
  CRML.ETL.Connectors.Boolean4Output req1 annotation(
    Placement(transformation(origin = {170, 60}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {170, 60}, extent = {{-10, -10}, {10, 10}})));
  CRML.ETL.Connectors.Boolean4Output req2 annotation(
    Placement(transformation(origin = {170, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {170, 0}, extent = {{-10, -10}, {10, 10}})));
  CRML.ETL.Connectors.Boolean4Output req3 annotation(
    Placement(transformation(origin = {170, -60}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {170, -60}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(afterBefore.y, checkInPCount.tl) annotation(
    Line(points = {{-30, 64}, {-30, 44}}, color = {0, 0, 255}));
  connect(const.y, afterFor.duration) annotation(
    Line(points = {{-59, -50}, {-50, -50}, {-50, -38}, {-41, -38}}, color = {0, 0, 0}));
  connect(afterFor.y, checkBoolean.tl) annotation(
    Line(points = {{-30, -40}, {-30, -60}}, color = {0, 0, 255}));
  connect(const1.y, When.duration) annotation(
    Line(points = {{41, 24}, {90, 24}, {90, 72}, {99, 72}}, color = {0, 0, 0}));
  connect(checkInPCount.y, show_req1.u) annotation(
    Line(points = {{-19, 34}, {-8.55, 34}}, color = {162, 29, 33}));
  connect(checkBoolean.y, show_req2.u) annotation(
    Line(points = {{-19, -70}, {-10.6, -70}}, color = {162, 29, 33}));
  connect(checkBoolean.y, and4_1.u2) annotation(
    Line(points = {{-19, -70}, {-16, -70}, {-16, -56}, {19, -56}}, color = {162, 29, 33}));
  connect(checkInPCount.y, and4_1.u1) annotation(
    Line(points = {{-19, 34}, {-16, 34}, {-16, -40}, {19, -40}}, color = {162, 29, 33}));
  connect(and4_2.y, show_req.u) annotation(
    Line(points = {{133, -40}, {137.45, -40}}, color = {162, 29, 33}));
  connect(and4_1.y, and4_2.u2) annotation(
    Line(points = {{41, -48}, {111, -48}}, color = {162, 29, 33}));
  connect(checkInPCount.u, booleanToBoolean4_1.y) annotation(
    Line(points = {{-41, 34}, {-72, 34}, {-72, 80}, {-75.6, 80}}, color = {162, 29, 33}));
  connect(booleanToBoolean4_1.u, red) annotation(
    Line(points = {{-84.4, 80}, {-110, 80}}, color = {217, 67, 180}));
  connect(yellow, booleanToBoolean4_2.u) annotation(
    Line(points = {{-110, 0}, {-94, 0}, {-94, 66}, {-84.4, 66}}, color = {217, 67, 180}));
  connect(booleanToBoolean4_2.y, afterBefore.u2) annotation(
    Line(points = {{-75.6, 66}, {-41, 66}}, color = {162, 29, 33}));
  connect(green, booleanToBoolean4_3.u) annotation(
    Line(points = {{-110, -80}, {-84.4, -80}}, color = {217, 67, 180}));
  connect(booleanToBoolean4_3.y, checkBoolean.u) annotation(
    Line(points = {{-75.6, -80}, {-52, -80}, {-52, -70}, {-41, -70}}, color = {162, 29, 33}));
  connect(booleanToBoolean4_3.y, afterFor.u) annotation(
    Line(points = {{-75.6, -80}, {-52, -80}, {-52, -30}, {-41, -30}}, color = {162, 29, 33}));
  connect(booleanToBoolean4_3.y, afterBefore.u1) annotation(
    Line(points = {{-75.6, -80}, {-52, -80}, {-52, 74}, {-41, 74}}, color = {162, 29, 33}));
  connect(checkInPCount1.u, booleanToBoolean4_4.y) annotation(
    Line(points = {{99, 10}, {90, 10}, {90, 0}, {-75.6, 0}}, color = {162, 29, 33}));
  connect(booleanToBoolean4_4.u, yellow) annotation(
    Line(points = {{-84.4, 0}, {-110, 0}}, color = {217, 67, 180}));
  connect(When.y, checkInPCount1.tl) annotation(
    Line(points = {{110, 70}, {110, 20}}, color = {0, 0, 255}));
  connect(const2.y, booleanDelay.delay) annotation(
    Line(points = {{43, 60}, {50, 60}, {50, 72}, {57, 72}}, color = {0, 0, 0}));
  connect(checkInPCount1.y, show_req3.u) annotation(
    Line(points = {{121, 10}, {129, 10}, {129, 24}, {137, 24}}, color = {162, 29, 33}));
  connect(checkInPCount1.y, and4_2.u1) annotation(
    Line(points = {{121, 10}, {128, 10}, {128, -22}, {98, -22}, {98, -32}, {111, -32}}, color = {162, 29, 33}));
  connect(booleanDelay.y, booleanToBoolean4_5.u) annotation(
    Line(points = {{79, 80}, {83.6, 80}}, color = {217, 67, 180}));
  connect(booleanToBoolean4_5.y, When.u) annotation(
    Line(points = {{92.4, 80}, {99, 80}}, color = {162, 29, 33}));
  connect(event4ToEvent.y, booleanDelay.u) annotation(
    Line(points = {{50.4, 80}, {57, 80}}, color = {217, 67, 180}));
  connect(booleanToBoolean4_3.y, event4ToEvent.u) annotation(
    Line(points = {{-75.6, -80}, {-52, -80}, {-52, 88}, {28, 88}, {28, 80}, {41.6, 80}}, color = {162, 29, 33}));
  connect(checkInPCount.y, req1) annotation(
    Line(points = {{-18, 34}, {-10, 34}, {-10, 100}, {140, 100}, {140, 60}, {170, 60}}, color = {162, 29, 33}));
  connect(checkBoolean.y, req2) annotation(
    Line(points = {{-18, -70}, {-12, -70}, {-12, -20}, {140, -20}, {140, 0}, {170, 0}}, color = {162, 29, 33}));
  connect(checkInPCount1.y, req3) annotation(
    Line(points = {{122, 10}, {128, 10}, {128, -22}, {98, -22}, {98, -60}, {170, -60}}, color = {162, 29, 33}));
  annotation(
    Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {160, 100}}), graphics = {Rectangle(origin = {30, 0},lineColor = {28, 108, 200}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, extent = {{-130, 100}, {130, -100}}), Ellipse(origin = {32, 0},lineColor = {238, 46, 47}, fillColor = {238, 46, 47}, fillPattern = FillPattern.Solid, extent = {{-20, 98}, {20, 58}}), Ellipse(origin = {32, 0},lineColor = {244, 125, 35}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid, extent = {{-20, 18}, {20, -20}}), Ellipse(origin = {32, 0},lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid, extent = {{-20, -60}, {20, -98}}), Text(textColor = {28, 108, 200}, extent = {{-92, 126}, {90, 108}}, textString = "%name")}),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {160, 100}}), graphics = {Rectangle(lineColor = {28, 108, 200}, fillColor = {255, 255, 170}, fillPattern = FillPattern.Solid, extent = {{-86, -16}, {-14, -94}}), Rectangle(lineColor = {28, 108, 200}, fillColor = {255, 255, 170}, fillPattern = FillPattern.Solid, extent = {{-86, 96}, {-14, -10}}), Text(textColor = {28, 108, 200}, extent = {{-72, -2}, {-30, -6}}, textString = "After green, next step is yellow"), Text(textColor = {28, 108, 200}, extent = {{-82, -82}, {-16, -94}}, textString = "Step green should stay active for at least 30 seconds"), Rectangle(lineColor = {28, 108, 200}, fillColor = {255, 255, 170}, fillPattern = FillPattern.Solid, extent = {{16, 96}, {134, -16}}), Text(textColor = {28, 108, 200}, extent = {{24, -4}, {76, -8}}, textString = "After green becomes active + 30 seconds,"), Text(textColor = {28, 108, 200}, extent = {{25, -8}, {81, -14}}, textString = "next step should turn yellow within 0.2 seconds"), Text(textColor = {28, 108, 200}, extent = {{-126, 100}, {-96, 92}}, textString = "red"), Text(textColor = {28, 108, 200}, extent = {{-126, -58}, {-96, -66}}, textString = "green"), Text(textColor = {28, 108, 200}, extent = {{-126, 22}, {-96, 14}}, textString = "yellow"), Text(textColor = {28, 108, 200}, extent = {{-84, 96}, {-58, 86}}, textString = "req1"), Text(textColor = {28, 108, 200}, extent = {{28, 96}, {54, 86}}, textString = "req3"), Text(textColor = {28, 108, 200}, extent = {{-84, -18}, {-58, -28}}, textString = "req2")}),
    experiment(StopTime = 100));
end Spec;
