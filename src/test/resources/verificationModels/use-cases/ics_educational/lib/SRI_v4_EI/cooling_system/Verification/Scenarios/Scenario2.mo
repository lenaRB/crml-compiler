within cooling_system.Verification.Scenarios;
model Scenario2
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
  Utils.RemoveClient removeClient
    annotation (Placement(transformation(extent={{-156,6},{-136,26}})));
  Utils.ArretPompe arretPompe(at=500)
    annotation (Placement(transformation(extent={{-100,58},{-80,78}})));
  Utils.StartPompe startPompe(at=513)
    annotation (Placement(transformation(extent={{-96,26},{-76,46}})));
  Utils.change_Tsf change_Tsf(
    delta=5,
    at=400,
    delai=50)
    annotation (Placement(transformation(extent={{-130,-20},{-110,0}})));
  Utils.change_Psf change_Psf(delta=-1e5, at=600)
    annotation (Placement(transformation(extent={{-72,-46},{-52,-26}})));
  Utils.change_Util change_Util(
    delta=0.3,
    at=800,
    delai=5)
    annotation (Placement(transformation(extent={{-32,-74},{-12,-54}})));
equation

  connect(toConnector.c, scenarioConnector)
    annotation (Line(points={{88.4,0},{88.4,2},{110,2}}, color={0,0,0}));
  connect(True.yL, toConnector.ouvreBranche1) annotation (Line(points={{-179,84},
          {18,84},{18,91.6},{31.6,91.6}}, color={0,0,255}));
  connect(True.yL, toConnector.ouvreBranche2) annotation (Line(points={{-179,84},
          {18,84},{18,75.6},{31.6,75.6}}, color={0,0,255}));
  connect(True.yL, toConnector.encP1) annotation (Line(points={{-179,84},{18,84},
          {18,59.6},{31.6,59.6}}, color={0,0,255}));
  connect(False.yL, toConnector.comVanneBache) annotation (Line(points={{-179,
          56},{4,56},{4,12},{18,12},{18,11.2},{31.6,11.2}}, color={0,0,255}));
  connect(Fuite_init1.y, toConnector.leak) annotation (Line(points={{-179,-90},
          {20,-90},{20,-91},{32,-91}}, color={0,0,255}));
  connect(HotPower_init.y, removeClient.inputReal) annotation (Line(points={{
          -179,16},{-178,15.8},{-156.8,15.8}}, color={0,0,255}));
  connect(toConnector.load, removeClient.outputReal) annotation (Line(points={{
          32,-26.4},{6,-26.4},{6,-26},{-22,-26},{-22,15.8},{-135.2,15.8}},
        color={0,0,255}));
  connect(True.yL, arretPompe.inputLogical) annotation (Line(points={{-179,84},
          {-104,84},{-104,68},{-101,68}}, color={0,0,255}));
  connect(arretPompe.outputLogical, toConnector.encP2) annotation (Line(points=
          {{-79,68},{14,68},{14,43.6},{31.6,43.6}}, color={0,0,255}));
  connect(False.yL, startPompe.inputLogical) annotation (Line(points={{-179,56},
          {-102,56},{-102,36},{-97,36}}, color={0,0,255}));
  connect(startPompe.outputLogical, toConnector.encP3) annotation (Line(points=
          {{-75,36},{18,36},{18,27.6},{31.6,27.6}}, color={0,0,255}));
  connect(toConnector.Tsf, change_Tsf.outputReal) annotation (Line(points={{32,
          -42.8},{-32,-42.8},{-32,-10.2},{-109.2,-10.2}}, color={0,0,255}));
  connect(Tsf_init.y, change_Tsf.inputReal) annotation (Line(points={{-179,-10},
          {-178,-10.2},{-130.8,-10.2}}, color={0,0,255}));
  connect(Psf_init.y, change_Psf.inputReal) annotation (Line(points={{-179,-36},
          {-178,-36.2},{-72.8,-36.2}}, color={0,0,255}));
  connect(toConnector.Psf, change_Psf.outputReal) annotation (Line(points={{32,
          -59.2},{4,-59.2},{4,-44},{-46,-44},{-46,-36.2},{-51.2,-36.2}}, color=
          {0,0,255}));
  connect(toConnector.comUtil, change_Util.outputReal) annotation (Line(points=
          {{32,-75.6},{-6,-75.6},{-6,-64.2},{-11.2,-64.2}}, color={0,0,255}));
  connect(Util_init.y, change_Util.inputReal) annotation (Line(points={{-179,
          -64},{-178,-64.2},{-32.8,-64.2}}, color={0,0,255}));
  annotation (
    Icon(coordinateSystem(extent={{-200,-100},{100,100}}),
         graphics={  Rectangle(fillColor = {220, 138, 221}, fillPattern = FillPattern.Solid, extent={{-200,
              100},{100,-100}}),                                                                                                   Text(origin={-49,137},    extent = {{-177, 55}, {177, -55}}, textString = "%name")}),
      Diagram(coordinateSystem(extent={{-200,-100},{100,100}})));
end Scenario2;
