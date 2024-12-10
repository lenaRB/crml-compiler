within CRML_test.FORML.AfterFor;
model AfterFor_externals

protected
  parameter Integer N=CRML.ETL.Types.nMaxOverlap;

public
  CRML.Blocks.Logical.BooleanTable b1(
    y0=false,
    option_width=false,
    instant={2,3.5})
    annotation (Placement(transformation(extent={{-60,50},{-40,70}})));
  CRML.Blocks.Math.Constant duration(k=3)
    annotation (Placement(transformation(extent={{-60,-70},{-40,-50}})));
  CRML.ETL.Connectors.ClockOutput ck1
    annotation (Placement(transformation(extent={{100,40},{120,60}})));
  CRML.ETL.Connectors.RealOutput d1
    annotation (Placement(transformation(extent={{100,-80},{120,-60}})));
  CRML.Blocks.Events.ClockEvent clockEvent_1
    annotation (Placement(transformation(extent={{-6,54},{6,66}})));
equation
  connect(b1.y, clockEvent_1.u)
    annotation (Line(points={{-39,60},{-6.6,60}}, color={217,67,180}));
  connect(clockEvent_1.y, ck1) annotation (Line(
      points={{6.6,60},{40,60},{40,50},{110,50}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(duration.y, d1) annotation (Line(points={{-39,-60},{94,-60},{94,-70},
          {110,-70}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end AfterFor_externals;
