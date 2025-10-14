within cooling_system.Verification.Requirements;
model Req_Tsri
  Modelica.Blocks.Interfaces.BooleanOutput y annotation (
    Placement(transformation(origin = {108, 6}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput u annotation (Placement(transformation(
          origin={-120,-2}, extent={{-20,-20},{20,20}}), iconTransformation(
          origin={-120,0}, extent={{-20,-20},{20,20}})));
  Modelica.Blocks.Logical.And and1 annotation (
    Placement(transformation(origin = {58, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold=16)
    annotation (Placement(transformation(extent={{-28,-44},{-8,-24}})));
  Modelica.Blocks.Logical.LessThreshold lessThreshold(threshold=30)
    annotation (Placement(transformation(extent={{-26,8},{-6,28}})));
equation
  connect(and1.y, y) annotation (
    Line(points={{69,-14},{108,-14},{108,6}},        color = {255, 0, 255}));

  connect(u, lessThreshold.u) annotation (Line(points={{-120,-2},{-38,-2},{-38,
          18},{-28,18}}, color={0,0,127}));
  connect(u, greaterThreshold.u) annotation (Line(points={{-120,-2},{-40,-2},{
          -40,-34},{-30,-34}}, color={0,0,127}));
  connect(lessThreshold.y, and1.u1) annotation (Line(points={{-5,18},{36,18},{
          36,-14},{46,-14}}, color={255,0,255}));
  connect(greaterThreshold.y, and1.u2) annotation (Line(points={{-7,-34},{38,
          -34},{38,-22},{46,-22}}, color={255,0,255}));
annotation (
    Icon(graphics={  Rectangle(fillColor = {246, 97, 81}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-6, 124}, extent = {{-136, 30}, {136, -30}}, textString = "%name")}),
      Diagram(graphics={Text(
          extent={{-62,84},{54,50}},
          textColor={28,108,200},
          textString="La température du SRI doit etre
maintenue entre 16 et 30°C")}));
end Req_Tsri;
