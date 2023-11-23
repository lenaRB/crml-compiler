within SysCon2018;
model SysCon
  parameter Integer n = 2;
  CRML.TimeLocators.Continuous.During      during_system_inOperation
    annotation (Placement(transformation(extent={{-40,80},{-20,100}})));
  CRML.Requirements.CheckCountLowerEqual
                                     checkInPCount(threshold=n)
    annotation (Placement(transformation(extent={{-40,50},{-20,70}})));
  CRML.Blocks.Logical4.And4_n         and4(N=3)
    annotation (Placement(transformation(extent={{70,-10},{90,10}})));
  CRML.ETL.Connectors.Boolean4Input system_inOperation
    annotation (Placement(transformation(extent={{-120,80},{-100,100}})));
  CRML.ETL.Connectors.Boolean4Input pump_isStarted "Boolean condition"
    annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
  CRML.Requirements.Ensure    ensure
    annotation (Placement(transformation(extent={{0,-90},{20,-70}})));
  CRML.Blocks.Math.Constant      T1(k=50)
    annotation (Placement(transformation(extent={{-78,-100},{-62,-84}})));
  CRML.ETL.Connectors.RealInput  pump_temperature
    annotation (Placement(transformation(extent={{-120,-90},{-100,-70}})));
  Modelica.Blocks.Logical.Less less
    annotation (Placement(transformation(extent={{-40,-90},{-20,-70}})));
  CRML.ETL.Connectors.Boolean4Output  requirement_value
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  CRML.TimeLocators.Continuous.During      during_pump_isStarted
    annotation (Placement(transformation(extent={{0,-60},{20,-40}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-14,-84},{-6,-76}})));
  CRML.TimeLocators.Continuous.AfterFor afterFor_r4
    annotation (Placement(transformation(extent={{30,30},{50,50}})));
  CRML.Blocks.Math.Constant      T2(k=40)
    annotation (Placement(transformation(extent={{-76,-46},{-60,-30}})));
  CRML.Blocks.Math.Constant      d1(k=900)
    annotation (Placement(transformation(extent={{-76,24},{-60,40}})));
  Modelica.Blocks.Logical.Less less1
    annotation (Placement(transformation(extent={{-40,-40},{-20,-20}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2
    annotation (Placement(transformation(extent={{-12,6},{-4,14}})));
  CRML.Blocks.Logical4.Not4 not4_1
    annotation (Placement(transformation(extent={{0,0},{20,20}})));
  CRML.Requirements.CheckDurationLower checkDurationLower_r4(threshold=60)
    annotation (Placement(transformation(extent={{30,0},{50,20}})));
equation
  connect(during_system_inOperation.y, checkInPCount.tl)
    annotation (Line(points={{-30,80},{-30,70}}, color={0,0,255}));
  connect(during_pump_isStarted.y, ensure.tl)
    annotation (Line(points={{10,-60},{10,-70}}, color={0,0,255}));
  connect(system_inOperation, during_system_inOperation.u)
    annotation (Line(points={{-110,90},{-41,90}}, color={162,29,33}));
  connect(pump_isStarted, checkInPCount.u) annotation (Line(points={{-110,0},{-80,
          0},{-80,60},{-41,60}}, color={162,29,33}));
  connect(pump_isStarted, during_pump_isStarted.u) annotation (Line(points={{-110,
          0},{-80,0},{-80,-50},{-1,-50}}, color={162,29,33}));
  connect(pump_temperature, less.u1)
    annotation (Line(points={{-110,-80},{-42,-80}}, color={0,0,0}));
  connect(T1.y, less.u2) annotation (Line(points={{-61.2,-92},{-50,-92},{-50,-88},
          {-42,-88}}, color={0,0,0}));
  connect(and4.y, requirement_value)
    annotation (Line(points={{91,0},{110,0}}, color={162,29,33}));
  connect(less.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-19,-80},{-14.4,-80}}, color={255,0,255}));
  connect(ensure.u, booleanToBoolean4_1.y)
    annotation (Line(points={{-1,-80},{-5.6,-80}}, color={162,29,33}));
  connect(less1.u2, T2.y)
    annotation (Line(points={{-42,-38},{-59.2,-38}}, color={0,0,127}));
  connect(less1.u1, less.u1) annotation (Line(points={{-42,-30},{-52,-30},{-52,
          -80},{-42,-80}}, color={0,0,127}));
  connect(less1.y, booleanToBoolean4_2.u) annotation (Line(points={{-19,-30},{
          -16,-30},{-16,10},{-12.4,10}}, color={255,0,255}));
  connect(not4_1.y, checkDurationLower_r4.u)
    annotation (Line(points={{21,10},{29,10}}, color={162,29,33}));
  connect(afterFor_r4.duration, d1.y)
    annotation (Line(points={{29,32},{-59.2,32}}, color={0,0,0}));
  connect(checkInPCount.y, and4.u[1]) annotation (Line(points={{-19,60},{66,60},
          {66,-0.666667},{69,-0.666667}}, color={162,29,33}));
  connect(checkDurationLower_r4.y, and4.u[2]) annotation (Line(points={{51,10},
          {66,10},{66,0},{69,0}}, color={162,29,33}));
  connect(ensure.y, and4.u[3]) annotation (Line(points={{21,-80},{66,-80},{66,
          0.666667},{69,0.666667}}, color={162,29,33}));
  connect(booleanToBoolean4_2.y, not4_1.u)
    annotation (Line(points={{-3.6,10},{-1,10}}, color={162,29,33}));
  connect(checkDurationLower_r4.tl, afterFor_r4.y)
    annotation (Line(points={{40,20},{40,30}}, color={0,0,255}));
  connect(afterFor_r4.u, checkDurationLower_r4.u) annotation (Line(points={{29,
          40},{26,40},{26,10},{29,10}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,140,72},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(lineColor = {0,0,255},
                fillColor = {75,138,73},
                pattern = LinePattern.None,
                fillPattern = FillPattern.Solid,
                points={{-40,60},{60,0},{-40,-60},{-40,60}})}),  Diagram(
        coordinateSystem(preserveAspectRatio=false), graphics={
        Text(
          extent={{-138,110},{-92,98}},
          lineColor={28,108,200},
          textString="system_inOperation"),
        Text(
          extent={{-140,18},{-96,12}},
          lineColor={28,108,200},
          textString="pump_isStarted"),
        Text(
          extent={{-136,-58},{-92,-68}},
          lineColor={28,108,200},
          textString="pump_temperature"),
        Text(
          extent={{86,20},{128,12}},
          lineColor={28,108,200},
          textString="requirement_value"),
        Text(
          extent={{-80,122},{32,104}},
          lineColor={28,108,200},
          textString="R1: While the sytem is in operation,
the pump must not be started more than twice.",
          horizontalAlignment=TextAlignment.Left),
        Text(
          extent={{-80,-102},{40,-120}},
          lineColor={28,108,200},
          horizontalAlignment=TextAlignment.Left,
          textString="R3: While the pump is in operation (i.e. started),
its temperature must always stay below 50°C"),
        Text(
          extent={{0,90},{154,60}},
          lineColor={28,108,200},
          horizontalAlignment=TextAlignment.Left,
          textString="R4: While the system is in operation,
after the pump temperature rises above 40°C,
the temperature should not stay above this value
for a duration of more than 1 mn cumulated over the next 15 mn.")}));
end SysCon;
