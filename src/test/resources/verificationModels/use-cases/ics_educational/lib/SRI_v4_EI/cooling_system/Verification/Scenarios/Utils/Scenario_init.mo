within cooling_system.Verification.Scenarios.Utils;
model Scenario_init
  Connector.ToConnector toConnector
    annotation (Placement(transformation(extent={{40,-100},{80,100}})));
  Connector.ScenarioConnector scenarioConnector
    annotation (Placement(transformation(extent={{100,-8},{120,12}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante True
    annotation (Placement(transformation(extent={{-200,74},{-180,94}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante False(K=false)
    annotation (Placement(transformation(extent={{-200,46},{-180,66}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante HotPower_init(
      k=25E6)
    annotation (Placement(transformation(extent={{-200,6},{-180,26}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Tsf_init(k=
        285)
    annotation (Placement(transformation(extent={{-200,-20},{-180,0}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Psf_init(k=
        3E5)
    annotation (Placement(transformation(extent={{-200,-46},{-180,-26}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Fuite_init1(k
      =0.0)
    annotation (Placement(transformation(extent={{-200,-100},{-180,-80}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Util_init(k=
        0.36)
    annotation (Placement(transformation(extent={{-200,-74},{-180,-54}})));
equation

  connect(toConnector.c, scenarioConnector)
    annotation (Line(points={{88.4,0},{88.4,2},{110,2}}, color={0,0,0}));
  annotation (
    Icon(coordinateSystem(extent={{-200,-100},{100,100}}),
         graphics={  Rectangle(fillColor = {220, 138, 221}, fillPattern = FillPattern.Solid, extent={{-200,
              100},{100,-100}}),                                                                                                   Text(origin={-49,137},    extent = {{-177, 55}, {177, -55}}, textString = "%name")}),
      Diagram(coordinateSystem(extent={{-200,-100},{100,100}})));
end Scenario_init;
