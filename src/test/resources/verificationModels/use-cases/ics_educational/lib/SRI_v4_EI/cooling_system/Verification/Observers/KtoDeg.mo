within cooling_system.Verification.Observers;
model KtoDeg

  Modelica.Blocks.Interfaces.RealInput u annotation (
    Placement(transformation(origin = {-106, 12}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 12}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealOutput y annotation (
    Placement(transformation(origin = {104, 4}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {118, 12}, extent = {{-18, -18}, {18, 18}})));
  Modelica.Blocks.Sources.Constant const(k=273.15)
    annotation (Placement(transformation(extent={{-54,-38},{-34,-18}})));
  Modelica.Blocks.Math.Add add(k2=-1)
    annotation (Placement(transformation(extent={{-4,-10},{16,10}})));
equation
  connect(const.y, add.u2) annotation (Line(points={{-33,-28},{-14,-28},{-14,-6},
          {-6,-6}}, color={0,0,127}));
  connect(y, add.y)
    annotation (Line(points={{104,4},{22,4},{22,0},{17,0}}, color={0,0,127}));
  connect(u, add.u1) annotation (Line(points={{-106,12},{-16,12},{-16,6},{-6,6}},
        color={0,0,127}));
annotation (
    Icon(graphics={  Rectangle(fillColor = {192, 191, 188}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 129}, extent = {{-111, 31}, {111, -31}}, textString = "%name")}),
      Diagram(graphics={Text(
          extent={{-96,42},{-72,30}},
          textColor={28,108,200},
          textString="Kelvin"), Text(
          extent={{74,42},{98,30}},
          textColor={28,108,200},
          textString="°C")}));
end KtoDeg;
