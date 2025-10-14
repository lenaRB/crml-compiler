within cooling_system.Verification.Scenarios;
model Scenario1
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
  Utils.RemoveClient removeClient(at=200)
    annotation (Placement(transformation(extent={{-162,6},{-142,26}})));
  Utils.AddClient addClient(at=700)
    annotation (Placement(transformation(extent={{-52,6},{-32,26}})));
  Utils.AddClient addClient1(power=5E6, at=750)
    annotation (Placement(transformation(extent={{-20,6},{0,26}})));
  Utils.IsoleBranche isoleBranche(at=500)
    annotation (Placement(transformation(extent={{-74,54},{-54,74}})));
  Utils.ArretPompe arretPompe(at=400)
    annotation (Placement(transformation(extent={{-140,58},{-120,78}})));
  Utils.StartPompe startPompe(at=413)
    annotation (Placement(transformation(extent={{-114,36},{-94,56}})));
equation

  connect(toConnector.c, scenarioConnector)
    annotation (Line(points={{88.4,0},{88.4,2},{110,2}}, color={0,0,0}));
  connect(True.yL, toConnector.ouvreBranche1) annotation (Line(points={{-179,84},
          {18,84},{18,91.6},{31.6,91.6}}, color={0,0,255}));
  connect(Tsf_init.y, toConnector.Tsf) annotation (Line(points={{-179,-10},{-16,
          -10},{-16,-42.8},{32,-42.8}}, color={0,0,255}));
  connect(Psf_init.y, toConnector.Psf) annotation (Line(points={{-179,-36},{-30,
          -36},{-30,-60},{2,-60},{2,-59.2},{32,-59.2}}, color={0,0,255}));
  connect(Util_init.y, toConnector.comUtil) annotation (Line(points={{-179,-64},
          {-36,-64},{-36,-75.6},{32,-75.6}}, color={0,0,255}));
  connect(Fuite_init1.y, toConnector.leak) annotation (Line(points={{-179,-90},
          {20,-90},{20,-91},{32,-91}}, color={0,0,255}));
  connect(HotPower_init.y, removeClient.inputReal) annotation (Line(points={{
          -179,16},{-178,15.8},{-162.8,15.8}}, color={0,0,255}));
  connect(removeClient.outputReal, addClient.inputReal)
    annotation (Line(points={{-141.2,15.8},{-52.8,15.8}}, color={0,0,255}));
  connect(addClient.outputReal, addClient1.inputReal)
    annotation (Line(points={{-31.2,15.8},{-20.8,15.8}}, color={0,0,255}));
  connect(addClient1.outputReal, toConnector.load) annotation (Line(points={{
          0.8,15.8},{18,15.8},{18,-26.4},{32,-26.4}}, color={0,0,255}));
  connect(True.yL, toConnector.encP1) annotation (Line(points={{-179,84},{14,84},
          {14,59.6},{31.6,59.6}}, color={0,0,255}));
  connect(False.yL, toConnector.comVanneBache) annotation (Line(points={{-179,
          56},{-144,56},{-144,30},{18,30},{18,18},{20,18},{20,11.2},{31.6,11.2}},
        color={0,0,255}));
  connect(toConnector.ouvreBranche2, isoleBranche.outputLogical) annotation (
      Line(points={{31.6,75.6},{14,75.6},{14,64},{-53,64}}, color={0,0,255}));
  connect(True.yL, isoleBranche.inputLogical) annotation (Line(points={{-179,84},
          {-80,84},{-80,64},{-75,64}}, color={0,0,255}));
  connect(True.yL, arretPompe.inputLogical) annotation (Line(points={{-179,84},
          {-148,84},{-148,68},{-141,68}}, color={0,0,255}));
  connect(toConnector.encP2, arretPompe.outputLogical) annotation (Line(points=
          {{31.6,43.6},{-82,43.6},{-82,68},{-119,68}}, color={0,0,255}));
  connect(False.yL, startPompe.inputLogical) annotation (Line(points={{-179,56},
          {-144,56},{-144,30},{-122,30},{-122,46},{-115,46}}, color={0,0,255}));
  connect(toConnector.encP3, startPompe.outputLogical) annotation (Line(points=
          {{31.6,27.6},{20,27.6},{20,42},{-88,42},{-88,46},{-93,46}}, color={0,
          0,255}));
  annotation (
    Icon(coordinateSystem(extent={{-200,-100},{100,100}}),
         graphics={  Rectangle(fillColor = {220, 138, 221}, fillPattern = FillPattern.Solid, extent={{-200,
              100},{100,-100}}),                                                                                                   Text(origin={-49,137},    extent = {{-177, 55}, {177, -55}}, textString = "%name")}),
      Diagram(coordinateSystem(extent={{-200,-100},{100,100}})));
end Scenario1;
