within CRML_test.Spec_doc.BooleanAtEvent;
partial model BooleanAtEvent
  Utilities.BooleanConnector  b1
    annotation (Placement(transformation(extent={{-10,10},{10,-10}},
        rotation=-90,
        origin={-110,30})));
  Utilities.ClockConnector c
    annotation (Placement(transformation(extent={{-120,-20},{-100,-40}})));
  Utilities.BooleanConnector b_at_event
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  CRML.Blocks.Logical.BooleanClockedDelay booleanClockedDelay
    annotation (Placement(transformation(extent={{-8,-10},{12,10}})));
  CRML.Blocks.Events.ClockToBoolean clockToBoolean
    annotation (Placement(transformation(extent={{-80,-34},{-72,-26}})));
  CRML.Blocks.MathInteger.IntegerConstant integerConstant(K=0)
    annotation (Placement(transformation(extent={{-60,-70},{-40,-50}})));
equation
  connect(c, clockToBoolean.u) annotation (Line(points={{-110,-30},{-80.8,-30},{
          -80.8,-30}}, color={0,0,0}));
  connect(booleanClockedDelay.u, b1) annotation (Line(points={{-9,0},{-60,0},{
          -60,30},{-110,30}}, color={217,67,180}));
  connect(booleanClockedDelay.clock, clockToBoolean.y) annotation (Line(points=
          {{-9,8},{-40,8},{-40,-30},{-71.2,-30}}, color={217,67,180}));
  connect(booleanClockedDelay.delay, integerConstant.y) annotation (Line(points
        ={{-9,-8},{-20,-8},{-20,-60},{-39,-60}}, color={255,127,0}));
  connect(booleanClockedDelay.y, b_at_event)
    annotation (Line(points={{13,0},{110,0}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BooleanAtEvent;
