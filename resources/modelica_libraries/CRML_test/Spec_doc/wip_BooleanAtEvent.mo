within CRML_test.Spec_doc;
package wip_BooleanAtEvent
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
    connect(booleanClockedDelay.u, b1) annotation (Line(points={{-9,0},{-60,0},
            {-60,30},{-110,30}}, color={217,67,180}));
    connect(booleanClockedDelay.clock, clockToBoolean.y) annotation (Line(
          points={{-9,8},{-40,8},{-40,-30},{-71.2,-30}}, color={217,67,180}));
    connect(booleanClockedDelay.delay, integerConstant.y) annotation (Line(
          points={{-9,-8},{-20,-8},{-20,-60},{-39,-60}}, color={255,127,0}));
    connect(booleanClockedDelay.y, b_at_event)
      annotation (Line(points={{13,0},{110,0}}, color={217,67,180}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end BooleanAtEvent;

  model BooleanAtEvent_externals
    CRML.Blocks.Logical.BooleanPulse      boolean4Constant1(
      startTime=2,
      period=1.5,
      width=1)
      annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
    CRML.Blocks.Logical.BooleanPulse      boolean4Constant2(period=1.5, startTime=
         1)
      annotation (Placement(transformation(extent={{-60,-60},{-40,-40}})));
    CRML.ETL.Connectors.BooleanOutput  b1
      annotation (Placement(transformation(extent={{100,40},{120,60}})));
    CRML.ETL.Connectors.ClockOutput c
      annotation (Placement(transformation(extent={{100,-60},{120,-40}})));
    CRML.Blocks.Events.ClockEvent clockEvent
      annotation (Placement(transformation(extent={{0,-70},{40,-30}})));
    CRML.Blocks.Events.ShowEvent showEvent_b
      annotation (Placement(transformation(extent={{-16,-78},{-8,-70}})));
    CRML.Blocks.Events.ShowEvent showEvent_b1
      annotation (Placement(transformation(extent={{-18,26},{-10,34}})));
  equation
    connect(boolean4Constant2.y, clockEvent.u)
      annotation (Line(points={{-39,-50},{-2,-50}}, color={217,67,180}));
    connect(clockEvent.y, c) annotation (Line(
        points={{42,-50},{74,-50},{74,-50},{110,-50}},
        color={175,175,175},
        pattern=LinePattern.Dot,
        thickness=0.5));
    connect(showEvent_b.u, clockEvent.u) annotation (Line(points={{-16.4,-74},{
            -20,-74},{-20,-50},{-2,-50}}, color={217,67,180}));
    connect(boolean4Constant1.y, b1)
      annotation (Line(points={{-39,50},{110,50}}, color={217,67,180}));
    connect(showEvent_b1.u, b1) annotation (Line(points={{-18.4,30},{-20,30},{-20,
            50},{110,50}}, color={217,67,180}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end BooleanAtEvent_externals;

  model BooleanAtEvent_verif
    extends BooleanAtEvent;
    BooleanAtEvent_externals externals
      annotation (Placement(transformation(extent={{-200,0},{-140,60}})));
  equation
    // Bindings
    b1 = externals.b1;
    c =externals.c;
      annotation (Placement(transformation(extent={{0,-20},{60,40}})),
                Icon(coordinateSystem(preserveAspectRatio=false,
          extent={{-200,-100},{100,100}},
          initialScale=0.1),                                      graphics={
          Ellipse(lineColor = {75,138,73},
                  fillColor={255,255,255},
                  fillPattern = FillPattern.Solid,
                  extent = {{-100,-100},{100,100}}),
          Polygon(lineColor = {0,0,255},
                  fillColor = {75,138,73},
                  pattern = LinePattern.None,
                  fillPattern = FillPattern.Solid,
                  points = {{-36,60},{64,0},{-36,-60},{-36,60}})}), Diagram(
          coordinateSystem(preserveAspectRatio=false,
          extent={{-200,-100},{100,100}},
          initialScale=0.1)),
      experiment(StopTime=14));
  end BooleanAtEvent_verif;
end wip_BooleanAtEvent;
