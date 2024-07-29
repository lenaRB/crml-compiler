within Inside;
model Inside_externals

public
  CRML.Blocks.Logical.BooleanTable bool2(
    y0=false,
    option_width=false,
    instant={2,3,3.5,4.5,6,7.5})
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  CRML.Blocks.Logical.BooleanTable bool1(
    y0=false,
    option_width=false,
    instant={2.5,5})
    annotation (Placement(transformation(extent={{-60,-60},{-40,-40}})));
  CRML.ETL.Connectors.TimeLocatorOutput tl1
    annotation (Placement(transformation(extent={{100,-40},{120,-20}})));
  CRML.Blocks.Events.ShowEvent showEvent_b2
    annotation (Placement(transformation(extent={{16,56},{24,64}})));
  CRML.ETL.Connectors.ClockOutput clock1
    annotation (Placement(transformation(extent={{100,0},{120,20}})));
  CRML.Blocks.Events.ShowEvent showEvent_b1
    annotation (Placement(transformation(extent={{16,-44},{24,-36}})));
  CRML.Blocks.Events.ClockEvent clockEvent
    annotation (Placement(transformation(extent={{20,0},{40,20}})));
  CRML.TimeLocators.Continuous.During during
    annotation (Placement(transformation(extent={{40,-70},{60,-50}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-4,-64},{4,-56}})));
  inner CRML.TimeLocators.Continuous.Master master
    annotation (Placement(transformation(extent={{60,60},{80,80}})));
  CRML.CompilerCompliancy.CRMLPeriodTimePeriod cRMLPeriodTimePeriod
    annotation (Placement(transformation(extent={{40,-100},{60,-80}})));
  CRML.ETL.Connectors.CRMLPeriodOutput P1
    annotation (Placement(transformation(extent={{100,-90},{120,-70}})));
  CRML.CompilerCompliancy.CRMLClockClock cRMLClockClock
    annotation (Placement(transformation(extent={{60,30},{80,50}})));
  CRML.ETL.Connectors.CRMLClockOutput C1 annotation (Placement(transformation(
          extent={{100,30},{120,50}}), iconTransformation(extent={{100,30},{120,
            50}})));
equation
  connect(showEvent_b2.u, bool2.y) annotation (Line(points={{15.6,60},{-10,60},
          {-10,50},{-39,50}}, color={217,67,180}));
  connect(bool1.y, showEvent_b1.u) annotation (Line(points={{-39,-50},{-12,-50},
          {-12,-40},{15.6,-40}}, color={217,67,180}));
  connect(clockEvent.y, clock1) annotation (Line(
      points={{41,10},{110,10}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(clockEvent.u, bool2.y) annotation (Line(points={{19,10},{0,10},{0,50},
          {-39,50}}, color={217,67,180}));
  connect(during.y[1], tl1) annotation (Line(points={{50,-70},{50,-74},{96,-74},
          {96,-30},{110,-30}}, color={0,0,255}));
  connect(bool1.y, booleanToBoolean4_1.u) annotation (Line(points={{-39,-50},{
          -12,-50},{-12,-60},{-4.4,-60}}, color={217,67,180}));
  connect(booleanToBoolean4_1.y, during.u)
    annotation (Line(points={{4.4,-60},{39,-60}}, color={162,29,33}));
  connect(cRMLPeriodTimePeriod.y, P1) annotation (Line(points={{61,-90},{94,-90},
          {94,-80},{110,-80}}, color={255,170,255}));
  connect(cRMLPeriodTimePeriod.tl, during.y[1])
    annotation (Line(points={{50,-80},{50,-70}}, color={0,0,255}));
  connect(clockEvent.y, cRMLClockClock.c) annotation (Line(
      points={{41,10},{54,10},{54,40},{59,40}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(cRMLClockClock.y, C1) annotation (Line(
      points={{81,40},{110,40}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Inside_externals;
