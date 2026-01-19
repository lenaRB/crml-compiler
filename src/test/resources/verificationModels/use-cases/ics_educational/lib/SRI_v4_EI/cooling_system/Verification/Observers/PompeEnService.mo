within cooling_system.Verification.Observers;
model PompeEnService

  Modelica.Blocks.Interfaces.RealInput u annotation (
    Placement(transformation(origin = {-106, 12}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 12}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Logical.Greater greater
    annotation (Placement(transformation(extent={{-18,-4},{2,16}})));
  Modelica.Blocks.Interfaces.BooleanOutput y annotation (Placement(
        transformation(extent={{100,-4},{120,16}}), iconTransformation(extent={{
            100,-4},{120,16}})));
  Modelica.Blocks.Sources.Constant const(k=200)
    annotation (Placement(transformation(extent={{-66,-32},{-46,-12}})));
equation
  connect(y, greater.y)
    annotation (Line(points={{110,6},{3,6}}, color={255,0,255}));
  connect(u, greater.u1) annotation (Line(points={{-106,12},{-30,12},{-30,6},{-20,
          6}}, color={0,0,127}));
  connect(greater.u2, const.y) annotation (Line(points={{-20,-2},{-40,-2},{-40,-22},
          {-45,-22}}, color={0,0,127}));
annotation (
    Icon(graphics={  Rectangle(fillColor = {192, 191, 188}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 129}, extent = {{-111, 31}, {111, -31}}, textString = "%name")}),
      Diagram(graphics={Text(
          extent={{-56,94},{66,12}},
          textColor={28,108,200},
          textString="La pompe est considérée en fonctionnement
quand son couple moteur est supérieur à 200 N.m")}));
end PompeEnService;
