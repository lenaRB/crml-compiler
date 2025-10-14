within cooling_system.Verification.Scenarios.Utils;
model ConnectBranche

  parameter Real at=200 "date à laquelle le client est ajouté";
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical inputLogical
    annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical outputLogical
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Echelon echelon(
      startTime=at)
    annotation (Placement(transformation(extent={{-84,-48},{-64,-28}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.OR ou
    annotation (Placement(transformation(extent={{-18,-16},{2,4}})));
equation

  connect(echelon.yL, ou.uL2) annotation (Line(points={{-63,-38},{-24,-38},{-24,
          -12},{-19,-12}}, color={0,0,255}));
  connect(inputLogical, ou.uL1)
    annotation (Line(points={{-110,0},{-19,0}}, color={0,0,255}));
  connect(ou.yL, outputLogical)
    annotation (Line(points={{3,-6},{94,-6},{94,0},{110,0}}, color={0,0,255}));
  annotation (
    Icon(graphics={  Rectangle(extent = {{-100, 100}, {100, -100}},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),                            Text(origin = {-5, 129}, extent = {{-117, 33}, {117, -33}}, textString = "%name")}));
end ConnectBranche;
