within cooling_system.Verification.Requirements;
model Req_flow
  "\"Le débit dans les pompes doit etre supérieur à 700 t/h\""
  Modelica.Blocks.Interfaces.RealInput u annotation (
    Placement(transformation(origin={-120,40},    extent = {{-20, -20}, {20, 20}}), iconTransformation(origin={-120,40},     extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanOutput y annotation (
    Placement(transformation(origin = {108, 6}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin={110,-10},  extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput u1 annotation (
    Placement(transformation(origin={-120,-90},    extent = {{-20, -20}, {20, 20}}), iconTransformation(origin={-120,-38},   extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Logical.And and1 annotation (
    Placement(transformation(origin={72,6},      extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput u2
                                         annotation (
    Placement(transformation(origin={-120,-36},   extent = {{-20, -20}, {20, 20}}), iconTransformation(origin={-120,
            -118},                                                                                                           extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput u3 annotation (Placement(
        transformation(extent={{-140,60},{-100,100}}), iconTransformation(
          extent={{-140,60},{-100,100}})));
  Modelica.Blocks.Interfaces.BooleanInput u4 annotation (Placement(
        transformation(extent={{-140,-18},{-100,22}}), iconTransformation(
          extent={{-140,-18},{-100,22}})));
  Modelica.Blocks.Interfaces.BooleanInput u5 annotation (Placement(
        transformation(extent={{-140,-82},{-100,-42}}), iconTransformation(
          extent={{-140,-98},{-100,-58}})));
  Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold=700)
    annotation (Placement(transformation(extent={{-70,10},{-50,30}})));
  Utils.Imply imply1
    annotation (Placement(transformation(extent={{-20,24},{0,44}})));
  Modelica.Blocks.Logical.And and2
    annotation (Placement(transformation(extent={{22,-4},{42,16}})));
  Utils.Imply imply2
    annotation (Placement(transformation(extent={{-20,-18},{0,2}})));
  Modelica.Blocks.Logical.GreaterThreshold greaterThreshold1(threshold=700)
    annotation (Placement(transformation(extent={{-70,-42},{-50,-22}})));
  Utils.Imply imply3
    annotation (Placement(transformation(extent={{-20,-70},{0,-50}})));
  Modelica.Blocks.Logical.GreaterThreshold greaterThreshold2(threshold=700)
    annotation (Placement(transformation(extent={{-72,-92},{-52,-72}})));
equation
  connect(and1.y, y) annotation (
    Line(points={{83,6},{108,6}},                    color = {255, 0, 255}));

  connect(u, greaterThreshold.u) annotation (Line(points={{-120,40},{-96,40},{
          -96,20},{-72,20}}, color={0,0,127}));
  connect(u3, imply1.u1) annotation (Line(points={{-120,80},{-30,80},{-30,34},{
          -22,34}}, color={255,0,255}));
  connect(greaterThreshold.y, imply1.u2) annotation (Line(points={{-49,20},{-32,
          20},{-32,26},{-22,26}}, color={255,0,255}));
  connect(and1.u1, and2.y)
    annotation (Line(points={{60,6},{43,6}}, color={255,0,255}));
  connect(imply1.y, and2.u1) annotation (Line(points={{1,34},{10,34},{10,6},{20,
          6}}, color={255,0,255}));
  connect(u4, imply2.u1) annotation (Line(points={{-120,2},{-30,2},{-30,-8},{
          -22,-8}}, color={255,0,255}));
  connect(u2, greaterThreshold1.u) annotation (Line(points={{-120,-36},{-82,-36},
          {-82,-32},{-72,-32}}, color={0,0,127}));
  connect(greaterThreshold1.y, imply2.u2) annotation (Line(points={{-49,-32},{
          -30,-32},{-30,-16},{-22,-16}}, color={255,0,255}));
  connect(u5, imply3.u1) annotation (Line(points={{-120,-62},{-78,-62},{-78,-60},
          {-22,-60}}, color={255,0,255}));
  connect(u1, greaterThreshold2.u) annotation (Line(points={{-120,-90},{-86,-90},
          {-86,-82},{-74,-82}}, color={0,0,127}));
  connect(greaterThreshold2.y, imply3.u2) annotation (Line(points={{-51,-82},{
          -32,-82},{-32,-68},{-22,-68}}, color={255,0,255}));
  connect(imply2.y, and2.u2) annotation (Line(points={{1,-8},{12,-8},{12,-2},{
          20,-2}}, color={255,0,255}));
  connect(imply3.y, and1.u2) annotation (Line(points={{1,-60},{52,-60},{52,-2},
          {60,-2}}, color={255,0,255}));
annotation (
    Icon(graphics={  Rectangle(fillColor = {246, 97, 81}, fillPattern = FillPattern.Solid, extent={{-100,
              100},{100,-130}}),                                                                                                 Text(origin = {-6, 124}, extent = {{-136, 30}, {136, -30}}, textString = "%name")}),
      Diagram(graphics={Text(
          extent={{-34,96},{24,64}},
          textColor={28,108,200},
          textString="Le débit dans les pompes 
doit etre supérieur à 700 t/h")}));
end Req_flow;
