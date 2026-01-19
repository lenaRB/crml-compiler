within cooling_system.Verification.Requirements;
model Req_DTsf
  Modelica.Blocks.Interfaces.BooleanOutput y annotation (
    Placement(transformation(origin = {108, 6}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput u annotation (Placement(transformation(
          origin={-120,18}, extent={{-20,-20},{20,20}}), iconTransformation(
          origin={-120,50}, extent={{-20,-20},{20,20}})));
  Modelica.Blocks.Logical.And and1 annotation (
    Placement(transformation(origin={78,-14},    extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold=22)
    annotation (Placement(transformation(extent={{-50,-34},{-30,-14}})));
  Modelica.Blocks.Logical.LessThreshold lessThreshold(threshold=7)
    annotation (Placement(transformation(extent={{18,8},{38,28}})));
  Utils.Imply imply1
    annotation (Placement(transformation(extent={{24,-30},{44,-10}})));
  Modelica.Blocks.Interfaces.RealInput u1 annotation (Placement(transformation(
          origin={-120,-40}, extent={{-20,-20},{20,20}}), iconTransformation(
          origin={-120,-40}, extent={{-20,-20},{20,20}})));
  Modelica.Blocks.Math.Add add(k2=-1)
    annotation (Placement(transformation(extent={{-78,-14},{-58,6}})));
  Modelica.Blocks.Logical.LessThreshold lessThreshold1(threshold=5)
    annotation (Placement(transformation(extent={{-14,-52},{6,-32}})));
equation
  connect(and1.y, y) annotation (
    Line(points={{89,-14},{94,-14},{94,6},{108,6}},  color = {255, 0, 255}));

  connect(lessThreshold.y, and1.u1) annotation (Line(points={{39,18},{56,18},{
          56,-14},{66,-14}}, color={255,0,255}));
  connect(and1.u2, imply1.y) annotation (Line(points={{66,-22},{50,-22},{50,-20},
          {45,-20}}, color={255,0,255}));
  connect(u, add.u1) annotation (Line(points={{-120,18},{-82,18},{-82,2},{-80,2}},
        color={0,0,127}));
  connect(u1, add.u2) annotation (Line(points={{-120,-40},{-82,-40},{-82,-10},{
          -80,-10}}, color={0,0,127}));
  connect(add.y, lessThreshold.u) annotation (Line(points={{-57,-4},{6,-4},{6,
          18},{16,18}}, color={0,0,127}));
  connect(u1, greaterThreshold.u) annotation (Line(points={{-120,-40},{-82,-40},
          {-82,-24},{-52,-24}}, color={0,0,127}));
  connect(greaterThreshold.y, imply1.u1) annotation (Line(points={{-29,-24},{12,
          -24},{12,-20},{22,-20}}, color={255,0,255}));
  connect(imply1.u2, lessThreshold1.y)
    annotation (Line(points={{22,-28},{7,-28},{7,-42}}, color={255,0,255}));
  connect(lessThreshold1.u, add.y) annotation (Line(points={{-16,-42},{-14,-42},
          {-14,-4},{-57,-4}}, color={0,0,127}));
annotation (
    Icon(graphics={  Rectangle(fillColor = {246, 97, 81}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-6, 124}, extent = {{-136, 30}, {136, -30}}, textString = "%name")}),
      Diagram(graphics={Text(
          extent={{-64,88},{52,54}},
          textColor={28,108,200},
          textString="La delta de température entre la sortie et
l'entrée des échangeurs connectés à la source
froide doit etre inférieure à 7°C."), Text(
          extent={{-58,-68},{52,-100}},
          textColor={28,108,200},
          textString="De plus, en situation caniculaire (Tsf>22°C),
la limite est à 5°C.")}));
end Req_DTsf;
