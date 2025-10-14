within cooling_system.Verification.Requirements;
model Req_speed
  Modelica.Blocks.Interfaces.RealInput u annotation (
    Placement(transformation(origin = {-104, 16}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, -56}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanOutput y annotation (
    Placement(transformation(origin = {108, 6}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput u1 annotation (
    Placement(transformation(origin = {-106, -42}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 38}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Logical.And and1 annotation (
    Placement(transformation(origin = {58, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.LessThreshold lessThreshold(threshold=6)
    annotation (Placement(transformation(extent={{-18,6},{2,26}})));
  Modelica.Blocks.Logical.LessThreshold lessThreshold1(threshold=6)
    annotation (Placement(transformation(extent={{-16,-52},{4,-32}})));
equation
  connect(and1.y, y) annotation (
    Line(points={{69,-14},{108,-14},{108,6}},        color = {255, 0, 255}));

  connect(u, lessThreshold.u)
    annotation (Line(points={{-104,16},{-20,16}}, color={0,0,127}));
  connect(and1.u1, lessThreshold.y) annotation (Line(points={{46,-14},{10,-14},
          {10,16},{3,16}}, color={255,0,255}));
  connect(u1, lessThreshold1.u)
    annotation (Line(points={{-106,-42},{-18,-42}}, color={0,0,127}));
  connect(and1.u2, lessThreshold1.y) annotation (Line(points={{46,-22},{12,-22},
          {12,-42},{5,-42}}, color={255,0,255}));
annotation (
    Icon(graphics={  Rectangle(fillColor = {246, 97, 81}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-6, 124}, extent = {{-136, 30}, {136, -30}}, textString = "%name")}),
      Diagram(graphics={Text(
          extent={{-56,82},{62,50}},
          textColor={28,108,200},
          textString="La vitesse dans les échangeurs doit etre
supérieure à 6 m/s")}));
end Req_speed;
