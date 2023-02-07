within SysCon2018;
model SysCon
  parameter Integer n = 2;
  CRML.TimeLocators.Continuous.During      during_system_inOperation
    annotation (Placement(transformation(extent={{-40,80},{-20,100}})));
  CRML.Requirements.CheckCountLowerEqual
                                     checkInPCount(threshold=n)
    annotation (Placement(transformation(extent={{-40,50},{-20,70}})));
  CRML.Blocks.Logical4.And4           and4
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
equation
  connect(during_system_inOperation.y, checkInPCount.tl)
    annotation (Line(points={{-30,80},{-30,70}}, color={0,0,255}));
  connect(ensure.y, and4.u2) annotation (Line(points={{21,-80},{64,-80},{64,-8},
          {69,-8}},  color={162,29,33}));
  connect(during_pump_isStarted.y, ensure.tl)
    annotation (Line(points={{10,-60},{10,-70}}, color={0,0,255}));
  connect(checkInPCount.y, and4.u1) annotation (Line(points={{-19,60},{64,60},{64,
          8},{69,8}},    color={162,29,33}));
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
          textString="requirement_value")}));
end SysCon;
