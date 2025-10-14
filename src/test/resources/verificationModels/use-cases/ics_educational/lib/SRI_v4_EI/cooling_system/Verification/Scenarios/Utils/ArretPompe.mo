within cooling_system.Verification.Scenarios.Utils;
model ArretPompe

  parameter Real at=200 "date à laquelle le client est ajouté";
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical inputLogical
    annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical outputLogical
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Echelon echelon(
      startTime=at)
    annotation (Placement(transformation(extent={{-84,-48},{-64,-28}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.NONL non
    annotation (Placement(transformation(extent={{-38,-48},{-18,-28}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.AND et
    annotation (Placement(transformation(extent={{12,-24},{32,-4}})));
equation

  connect(echelon.yL, non.uL)
    annotation (Line(points={{-63,-38},{-39,-38}}, color={0,0,255}));
  connect(non.yL, et.uL2) annotation (Line(points={{-17,-38},{6,-38},{6,-20},{
          11,-20}}, color={0,0,255}));
  connect(inputLogical, et.uL1)
    annotation (Line(points={{-110,0},{6,0},{6,-8},{11,-8}}, color={0,0,255}));
  connect(et.yL, outputLogical) annotation (Line(points={{33,-14},{94,-14},{94,
          0},{110,0}}, color={0,0,255}));
  annotation (
    Icon(graphics={  Rectangle(extent = {{-100, 100}, {100, -100}},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),                            Text(origin = {-5, 129}, extent = {{-117, 33}, {117, -33}}, textString = "%name")}));
end ArretPompe;
