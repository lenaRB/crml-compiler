within cooling_system.Verification.Observers;
model FlowToSpeed

  parameter Modelica.Units.SI.Length radius=0.175
    "radius of the section";

  Modelica.Blocks.Interfaces.RealInput u annotation (
    Placement(transformation(origin = {-106, 12}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 12}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealOutput y annotation (
    Placement(transformation(origin = {104, 4}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {118, 12}, extent = {{-18, -18}, {18, 18}})));
  Modelica.Blocks.Sources.Constant const(k=1e-3)
    annotation (Placement(transformation(extent={{-100,-30},{-80,-10}})));
  Modelica.Blocks.Math.Product product1
    annotation (Placement(transformation(extent={{-40,-14},{-20,6}})));
  Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{40,-30},{60,-10}})));
  Modelica.Blocks.Sources.Constant Pi(k=Modelica.Constants.pi)
    annotation (Placement(transformation(extent={{-100,-62},{-80,-42}})));
  Modelica.Blocks.Math.Product product2
    annotation (Placement(transformation(extent={{-12,-76},{8,-56}})));
  Modelica.Blocks.Sources.Constant const2(k=radius)
    annotation (Placement(transformation(extent={{-100,-94},{-80,-74}})));
  Modelica.Blocks.Math.Product pow2
    annotation (Placement(transformation(extent={{-60,-94},{-40,-74}})));
equation
  connect(const.y, product1.u2) annotation (Line(points={{-79,-20},{-50,-20},{-50,
          -10},{-42,-10}}, color={0,0,127}));
  connect(u, product1.u1) annotation (Line(points={{-106,12},{-50,12},{-50,2},{-42,
          2}}, color={0,0,127}));
  connect(product1.y, division.u1) annotation (Line(points={{-19,-4},{30,-4},{30,
          -14},{38,-14}}, color={0,0,127}));
  connect(division.y, y) annotation (Line(points={{61,-20},{90,-20},{90,4},{104,
          4}}, color={0,0,127}));
  connect(division.u2, product2.y) annotation (Line(points={{38,-26},{16,-26},{16,
          -66},{9,-66}}, color={0,0,127}));
  connect(Pi.y, product2.u1) annotation (Line(points={{-79,-52},{-24,-52},{-24,-60},
          {-14,-60}}, color={0,0,127}));
  connect(const2.y, pow2.u1) annotation (Line(points={{-79,-84},{-72,-84},{-72,-78},
          {-62,-78}}, color={0,0,127}));
  connect(const2.y, pow2.u2) annotation (Line(points={{-79,-84},{-72,-84},{-72,-90},
          {-62,-90}}, color={0,0,127}));
  connect(pow2.y, product2.u2) annotation (Line(points={{-39,-84},{-22,-84},{-22,
          -72},{-14,-72}}, color={0,0,127}));
annotation (
    Icon(graphics={  Rectangle(fillColor = {192, 191, 188}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 129}, extent = {{-111, 31}, {111, -31}}, textString = "%name")}),
      Diagram(graphics={Text(
          extent={{-98,34},{-70,20}},
          textColor={28,108,200},
          textString="kg/s"), Text(
          extent={{66,36},{94,22}},
          textColor={28,108,200},
          textString="m/s")}));
end FlowToSpeed;
