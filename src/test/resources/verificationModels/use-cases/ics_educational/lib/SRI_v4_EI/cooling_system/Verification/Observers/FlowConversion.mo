within cooling_system.Verification.Observers;
model FlowConversion


  Modelica.Blocks.Interfaces.RealInput u annotation (
    Placement(transformation(origin = {-106, 12}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 12}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealOutput y annotation (
    Placement(transformation(origin = {104, 4}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {118, 12}, extent = {{-18, -18}, {18, 18}})));
  Modelica.Blocks.Sources.Constant const(k=1e-3)
    annotation (Placement(transformation(extent={{-90,-30},{-70,-10}})));
  Modelica.Blocks.Math.Product product1
    annotation (Placement(transformation(extent={{-40,-14},{-20,6}})));
  Modelica.Blocks.Sources.Constant const1(k=3600)
    annotation (Placement(transformation(extent={{-40,-56},{-20,-36}})));
  Modelica.Blocks.Math.Product product2
    annotation (Placement(transformation(extent={{18,-20},{38,0}})));
equation
  connect(const.y, product1.u2) annotation (Line(points={{-69,-20},{-50,-20},{-50,
          -10},{-42,-10}}, color={0,0,127}));
  connect(u, product1.u1) annotation (Line(points={{-106,12},{-50,12},{-50,2},{-42,
          2}}, color={0,0,127}));
  connect(product1.y, product2.u1)
    annotation (Line(points={{-19,-4},{16,-4}}, color={0,0,127}));
  connect(y, product2.y) annotation (Line(points={{104,4},{44,4},{44,-10},{39,-10}},
        color={0,0,127}));
  connect(const1.y, product2.u2) annotation (Line(points={{-19,-46},{8,-46},{8,-16},
          {16,-16}}, color={0,0,127}));
annotation (
    Icon(graphics={  Rectangle(fillColor = {192, 191, 188}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 129}, extent = {{-111, 31}, {111, -31}}, textString = "%name")}),
      Diagram(graphics={Text(
          extent={{-96,42},{-72,30}},
          textColor={28,108,200},
          textString="kg/s"), Text(
          extent={{74,42},{98,30}},
          textColor={28,108,200},
          textString="t/h")}));
end FlowConversion;
