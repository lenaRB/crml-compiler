within cooling_system.Verification;

model Reqs_sri_CRML_externals
  import cooling_system;
  Modelica.Blocks.Sources.RealExpression Q_echangeur_1(y = SRI_corrige.EchangeurAPlaques1D1.Ec.Q) annotation(
    Placement(transformation(origin = {27, 64}, extent = {{-17, -14}, {17, 14}})));
  Observers.FlowToSpeed flowToSpeed annotation(
    Placement(transformation(origin = {78, 64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression Q_echangeur_2(y = SRI_corrige.EchangeurAPlaques1D2.Ec.Q) annotation(
    Placement(transformation(origin = {25, 36}, extent = {{-17, -14}, {17, 14}})));
  Observers.FlowToSpeed flowToSpeed1 annotation(
    Placement(transformation(origin = {80, 36}, extent = {{-10, -10}, {10, 10}})));
  Scenarios.Scenario0_2echangeurs scenario0_2echangeurs annotation(
    Placement(transformation(origin = {-156, 54}, extent = {{-18, -12}, {18, 12}})));
  Scenarios.Scenario0_1echangeur scenario0_1echangeur annotation(
    Placement(transformation(origin = {-98, 36}, extent = {{-18, -12}, {17.9999, 12}})));
  Scenarios.Scenario_GrandChaud scenarioGrandChaud annotation(
    Placement(transformation(origin = {-101, -75}, extent = {{-19, -13}, {18.9999, 13}})));
  cooling_system.Behavior.SRIN4_v4.SRI_corrige SRI_corrige annotation(
    Placement(transformation(origin = {-26, 9}, extent = {{-26, -22}, {26, 22}})));
  Scenarios.Scenario_limites scenario_limites annotation(
    Placement(transformation(origin = {-157, -55}, extent = {{-19, -13}, {19, 13}})));
  Scenarios.Scenario2 scenario_perturbations annotation(
    Placement(transformation(origin = {-98, -20.6667}, extent = {{-19, -12.6667}, {19, 12.6667}})));
  Scenarios.Scenario1 scenario_test annotation(
    Placement(transformation(extent = {{-176, -14}, {-136, 12}})));
  Modelica.Blocks.Sources.RealExpression Q_Pompe1(y = SRI_corrige.PompeCentrifugeDyn1.Q) annotation(
    Placement(transformation(origin = {25, -14}, extent = {{-17, -14}, {17, 14}})));
  Modelica.Blocks.Sources.RealExpression Couple_Pompe1(y = SRI_corrige.PompeCentrifugeDyn1.M.Ctr) annotation(
    Placement(transformation(origin = {23, 10}, extent = {{-17, -14}, {17, 14}})));
  Observers.FlowConversion flowConversion annotation(
    Placement(transformation(extent = {{68, -26}, {88, -6}})));
  Observers.PompeEnService pompeEnService annotation(
    Placement(transformation(extent = {{68, 0}, {88, 20}})));
  Modelica.Blocks.Sources.RealExpression Q_Pompe2(y = SRI_corrige.PompeCentrifugeDyn2.Q) annotation(
    Placement(transformation(origin = {25, -66}, extent = {{-17, -14}, {17, 14}})));
  Modelica.Blocks.Sources.RealExpression Couple_Pompe2(y = SRI_corrige.PompeCentrifugeDyn2.M.Ctr) annotation(
    Placement(transformation(origin = {23, -42}, extent = {{-17, -14}, {17, 14}})));
  Observers.PompeEnService pompeEnService1 annotation(
    Placement(transformation(extent = {{68, -52}, {88, -32}})));
  Observers.FlowConversion flowConversion1 annotation(
    Placement(transformation(extent = {{68, -78}, {88, -58}})));
  Modelica.Blocks.Sources.RealExpression Q_Pompe3(y = SRI_corrige.PompeCentrifugeDyn3.Q) annotation(
    Placement(transformation(origin = {25, -118}, extent = {{-17, -14}, {17, 14}})));
  Modelica.Blocks.Sources.RealExpression Couple_Pompe3(y = SRI_corrige.PompeCentrifugeDyn3.M.Ctr) annotation(
    Placement(transformation(origin = {23, -94}, extent = {{-17, -14}, {17, 14}})));
  Observers.PompeEnService pompeEnService2 annotation(
    Placement(transformation(extent = {{68, -104}, {88, -84}})));
  Observers.FlowConversion flowConversion2 annotation(
    Placement(transformation(extent = {{68, -130}, {88, -110}})));
  Modelica.Blocks.Sources.RealExpression T_SRI(y = SRI_corrige.CapteurT1.T) annotation(
    Placement(transformation(origin = {27, -148}, extent = {{-17, -14}, {17, 14}})));
  Observers.KtoDeg ktoDeg annotation(
    Placement(transformation(extent = {{68, -160}, {88, -140}})));
  Observers.KtoDeg ktoDeg1 annotation(
    Placement(transformation(extent = {{68, -230}, {88, -210}})));
  Observers.KtoDeg ktoDeg2 annotation(
    Placement(transformation(extent = {{68, -200}, {88, -180}})));
  Modelica.Blocks.Sources.RealExpression T_input_sf(y = SRI_corrige.EchangeurAPlaques1D2.Tef) annotation(
    Placement(transformation(origin = {25, -218}, extent = {{-17, -14}, {17, 14}})));
  Modelica.Blocks.Sources.RealExpression T_output_sf(y = SRI_corrige.EchangeurAPlaques1D2.Tsf) annotation(
    Placement(transformation(origin = {27, -190}, extent = {{-17, -14}, {17, 14}})));
  Modelica.Blocks.Interfaces.RealOutput v1 annotation(
    Placement(transformation(origin = {270, 60}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {270, 60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput v2 annotation(
    Placement(transformation(origin = {270, 40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {270, 20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.BooleanOutput pump_in_service1 annotation(
    Placement(transformation(origin = {270, 10}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {270, -60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.BooleanOutput pump_in_service2 annotation(
    Placement(transformation(origin = {270, -46}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {270, -120}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.BooleanOutput pump_in_service3 annotation(
    Placement(transformation(origin = {270, -100}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {270, -180}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput flow1 annotation(
    Placement(transformation(origin = {270, -12}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {270, -80}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput flow2 annotation(
    Placement(transformation(origin = {270, -70}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {270, -140}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput flow3 annotation(
    Placement(transformation(origin = {270, -130}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {270, -200}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput T annotation(
    Placement(transformation(origin = {270, -200}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {270, -240}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(Q_echangeur_1.y, flowToSpeed.u) annotation(
    Line(points = {{45.7, 64}, {57.4, 64}, {57.4, 65.2}, {66, 65.2}}, color = {0, 0, 127}));
  connect(Q_echangeur_2.y, flowToSpeed1.u) annotation(
    Line(points = {{43.7, 36}, {58, 36}, {58, 37.2}, {68, 37.2}}, color = {0, 0, 127}));
  connect(Q_Pompe1.y, flowConversion.u) annotation(
    Line(points = {{43.7, -14}, {43.7, -14.8}, {66, -14.8}}, color = {0, 0, 127}));
  connect(Couple_Pompe1.y, pompeEnService.u) annotation(
    Line(points = {{41.7, 10}, {58, 10}, {58, 11.2}, {66, 11.2}}, color = {0, 0, 127}));
  connect(Couple_Pompe2.y, pompeEnService1.u) annotation(
    Line(points = {{41.7, -42}, {58, -42}, {58, -40.8}, {66, -40.8}}, color = {0, 0, 127}));
  connect(Q_Pompe2.y, flowConversion1.u) annotation(
    Line(points = {{43.7, -66}, {46, -66.8}, {66, -66.8}}, color = {0, 0, 127}));
  connect(Couple_Pompe3.y, pompeEnService2.u) annotation(
    Line(points = {{41.7, -94}, {58, -94}, {58, -92.8}, {66, -92.8}}, color = {0, 0, 127}));
  connect(Q_Pompe3.y, flowConversion2.u) annotation(
    Line(points = {{43.7, -118}, {46, -118.8}, {66, -118.8}}, color = {0, 0, 127}));
  connect(T_SRI.y, ktoDeg.u) annotation(
    Line(points = {{45.7, -148}, {58, -148}, {58, -148.8}, {66, -148.8}}, color = {0, 0, 127}));
  connect(ktoDeg1.u, T_input_sf.y) annotation(
    Line(points = {{66, -218.8}, {64, -218}, {43.7, -218}}, color = {0, 0, 127}));
  connect(ktoDeg2.u, T_output_sf.y) annotation(
    Line(points = {{66, -188.8}, {50, -188.8}, {50, -190}, {45.7, -190}}, color = {0, 0, 127}));
  connect(scenario0_2echangeurs.scenarioConnector, SRI_corrige.scenario) annotation(
    Line(points = {{-136.8, 54.24}, {-64, 54.24}, {-64, 8.18519}, {-51.7111, 8.18519}}));
  connect(ktoDeg.y, T) annotation(
    Line(points = {{90, -148}, {218, -148}, {218, -200}, {270, -200}}, color = {0, 0, 127}));
  connect(flow3, flowConversion2.y) annotation(
    Line(points = {{270, -130}, {132, -130}, {132, -118}, {90, -118}}, color = {0, 0, 127}));
  connect(pump_in_service3, pompeEnService2.y) annotation(
    Line(points = {{270, -100}, {176, -100}, {176, -94}, {90, -94}}, color = {255, 0, 255}));
  connect(flow2, flowConversion1.y) annotation(
    Line(points = {{270, -70}, {140, -70}, {140, -66}, {90, -66}}, color = {0, 0, 127}));
  connect(pump_in_service2, pompeEnService1.y) annotation(
    Line(points = {{270, -46}, {158, -46}, {158, -42}, {90, -42}}, color = {255, 0, 255}));
  connect(flow1, flowConversion.y) annotation(
    Line(points = {{270, -12}, {160, -12}, {160, -14}, {90, -14}}, color = {0, 0, 127}));
  connect(pump_in_service1, pompeEnService.y) annotation(
    Line(points = {{270, 10}, {90, 10}}, color = {255, 0, 255}));
  connect(v2, flowToSpeed1.y) annotation(
    Line(points = {{270, 40}, {180, 40}, {180, 38}, {92, 38}}, color = {0, 0, 127}));
  connect(v1, flowToSpeed.y) annotation(
    Line(points = {{270, 60}, {178, 60}, {178, 66}, {90, 66}}, color = {0, 0, 127}));
  annotation(
    Diagram(graphics = {Rectangle(origin = {56, -70}, fillColor = {143, 240, 164}, fillPattern = FillPattern.Solid, extent = {{-52, 166}, {52, -166}}), Text(origin = {53, 87}, extent = {{-27, 9}, {27, -9}}, textString = "Observers"), Rectangle(origin = {-127, 0}, fillColor = {255, 190, 111}, fillPattern = FillPattern.Solid, extent = {{-67, 96}, {67, -96}}), Text(origin = {-131, 87}, extent = {{-35, 7}, {35, -7}}, textString = "Scenarios")}, coordinateSystem(extent = {{-200, 100}, {260, -240}})),
    Icon(coordinateSystem(extent = {{-200, -300}, {260, 100}})),
    experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 2));
end Reqs_sri_CRML_externals;
