within SysCon2018;
model SysConMain
  SysCon sysCon annotation (Placement(transformation(extent={{-10,0},{10,20}})));
  CRML.Blocks.Logical.BooleanPulse      system_inOperation(
    width=3600,
    startTime=60,
    period=4000)
    annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
  CRML.Blocks.Logical.BooleanPulse pump_isStarted1(
    width=1140,
    period=1200,
    startTime=600)
    annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
  CRML.Blocks.Math.Constant pump_temperature(k=40)
    annotation (Placement(transformation(extent={{-80,-40},{-60,-20}})));
  CRML.Blocks.Logical4.ShowBoolean4 showValue
    annotation (Placement(transformation(extent={{40,0},{60,20}})));
  Modelica.Blocks.Logical.And pump_isStarted
    annotation (Placement(transformation(extent={{-42,6},{-34,14}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-28,16},{-20,24}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2
    annotation (Placement(transformation(extent={{-28,6},{-20,14}})));
equation
  connect(pump_temperature.y, sysCon.pump_temperature) annotation (Line(points={{-59,-30},
          {-26,-30},{-26,2},{-11,2}},            color={0,0,0}));
  connect(sysCon.requirement_value, showValue.u)
    annotation (Line(points={{11,10},{39.5,10}},
                                               color={162,29,33}));
  connect(pump_isStarted1.y, pump_isStarted.u2) annotation (Line(points={{-59,
          10},{-50,10},{-50,6.8},{-42.8,6.8}}, color={255,0,128}));
  connect(system_inOperation.y, pump_isStarted.u1) annotation (Line(points={{
          -59,50},{-46,50},{-46,10},{-42.8,10}}, color={255,0,128}));
  connect(system_inOperation.y, booleanToBoolean4_1.u) annotation (Line(points=
          {{-59,50},{-40,50},{-40,20},{-28.4,20}}, color={217,67,180}));
  connect(sysCon.system_inOperation, booleanToBoolean4_1.y) annotation (Line(
        points={{-11,19},{-11,18.5},{-19.6,18.5},{-19.6,20}}, color={162,29,33}));
  connect(pump_isStarted.y, booleanToBoolean4_2.u)
    annotation (Line(points={{-33.6,10},{-28.4,10}}, color={255,0,255}));
  connect(sysCon.pump_isStarted, booleanToBoolean4_2.y)
    annotation (Line(points={{-11,10},{-19.6,10}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Ellipse(lineColor = {75,138,73},
                fillColor={255,255,255},
                fillPattern = FillPattern.Solid,
                extent={{-100,-100},{100,100}}),
        Polygon(lineColor = {0,0,255},
                fillColor = {75,138,73},
                pattern = LinePattern.None,
                fillPattern = FillPattern.Solid,
                points={{-36,60},{64,0},{-36,-60},{-36,60}})}),  Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end SysConMain;
