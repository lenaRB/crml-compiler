within cooling_system.Verification.Scenarios.Utils;
model AddClient

  parameter Real power=10E6 "puissance du client (en W)";
  parameter Real at=200 "date à laquelle le client est ajouté";

  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal inputReal annotation (
    Placement(transformation(origin = {-108, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-108, -2}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal outputReal annotation (
    Placement(transformation(origin = {108, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {108, -2}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Add add annotation (
    Placement(transformation(origin = {-8, -8}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Echelon echelon(hauteur = power, startTime = at)  annotation (
    Placement(transformation(origin = {-62, -36}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(inputReal, add.u1) annotation (
    Line(points={{-108,-2},{-19,-2}}));
  connect(add.y, outputReal) annotation (
    Line(points={{3,-8},{108,-8},{108,-2}},        color = {0, 0, 255}));
  connect(echelon.y, add.u2) annotation (
    Line(points={{-51,-36},{-42,-36},{-42,-14},{-19,-14}},          color = {0, 0, 255}));

annotation (
    Icon(graphics={  Rectangle(extent = {{-100, 100}, {100, -100}},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),                            Text(origin = {-5, 129}, extent = {{-117, 33}, {117, -33}}, textString = "%name")}));
end AddClient;
