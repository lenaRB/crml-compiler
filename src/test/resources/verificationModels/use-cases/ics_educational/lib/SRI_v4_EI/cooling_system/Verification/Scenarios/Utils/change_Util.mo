within cooling_system.Verification.Scenarios.Utils;
model change_Util

  parameter Real delta=0.5 "différence d'ouverture à appliquer à la vanne réglante du ciruit SRI (doit rester entre 0 et 1)";
  parameter Real at=200 "date à laquelle la pente de température commence";
  parameter Real delai=50 "délai d'atteinte de la nouvelle température";

  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal inputReal annotation (
    Placement(transformation(origin = {-108, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-108, -2}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal outputReal annotation (
    Placement(transformation(origin = {108, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {108, -2}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Add add annotation (
    Placement(transformation(origin = {-8, -8}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Rampe rampe(
    Starttime=at,
    Duration=delai,
    Initialvalue=0,
    Finalvalue=delta)
    annotation (Placement(transformation(extent={{-70,-40},{-50,-20}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Limiteur limiteur(
      minval=0) annotation (Placement(transformation(extent={{40,-18},{60,2}})));
equation
  connect(inputReal, add.u1) annotation (
    Line(points={{-108,-2},{-19,-2}}));

  connect(add.u2, rampe.y) annotation (Line(points={{-19,-14},{-34,-14},{-34,-30},
          {-49,-30}}, color={0,0,255}));
  connect(add.y, limiteur.u)
    annotation (Line(points={{3,-8},{39,-8}}, color={0,0,255}));
  connect(limiteur.y, outputReal)
    annotation (Line(points={{61,-8},{108,-8},{108,-2}}, color={0,0,255}));
annotation (
    Icon(graphics={  Rectangle(extent = {{-100, 100}, {100, -100}},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),                            Text(origin = {-5, 129}, extent = {{-117, 33}, {117, -33}}, textString = "%name")}));
end change_Util;
