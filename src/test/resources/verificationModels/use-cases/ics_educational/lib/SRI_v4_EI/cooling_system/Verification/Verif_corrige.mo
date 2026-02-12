within cooling_system.Verification;
model Verif_corrige
  import cooling_system;
  Modelica.Blocks.Sources.RealExpression Q_echangeur_1(y=SRI_corrige.EchangeurAPlaques1D1.Ec.Q)
    annotation (Placement(transformation(origin={27,64}, extent={{-17,-14},{17,
            14}})));
  Observers.FlowToSpeed flowToSpeed annotation (Placement(transformation(origin
          ={78,64}, extent={{-10,-10},{10,10}})));
  Requirements.Req_speed req_speed annotation (Placement(transformation(origin=
            {160,54}, extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.RealExpression Q_echangeur_2(y=SRI_corrige.EchangeurAPlaques1D2.Ec.Q)
    annotation (Placement(transformation(origin={25,36}, extent={{-17,-14},{17,
            14}})));
  Observers.FlowToSpeed flowToSpeed1 annotation (Placement(transformation(
          origin={80,36}, extent={{-10,-10},{10,10}})));
  Scenarios.Scenario0_2echangeurs scenario0_2echangeurs annotation (Placement(
        transformation(origin={-156,54}, extent={{-18,-12},{18,12}})));
  Scenarios.Scenario0_1echangeur scenario0_1echangeur annotation (Placement(
        transformation(origin={-98,36},  extent={{-18,-12},{17.9999,12}})));
  Scenarios.Scenario_GrandChaud scenarioGrandChaud annotation (Placement(
        transformation(origin={-101,-75}, extent={{-19,-13},{18.9999,13}})));
  cooling_system.Behavior.SRIN4_v4.SRI_corrige SRI_corrige annotation (
      Placement(transformation(origin={-26,9}, extent={{-26,-22},{26,22}})));
  Scenarios.Scenario_limites scenario_limites annotation (Placement(
        transformation(origin={-157,-55}, extent={{-19,-13},{19,13}})));
  Scenarios.Scenario2 scenario_perturbations annotation (Placement(
        transformation(origin={-98,-20.6667},  extent={{-19,-12.6667},{19,
            12.6667}})));
  Scenarios.Scenario1 scenario_test
    annotation (Placement(transformation(extent={{-176,-14},{-136,12}})));
  Requirements.Req_flow req_flow
    annotation (Placement(transformation(extent={{150,-48},{170,-28}})));
  Modelica.Blocks.Sources.RealExpression Q_Pompe1(y=SRI_corrige.PompeCentrifugeDyn1.Q)
    annotation (Placement(transformation(origin={25,-14}, extent={{-17,-14},{17,
            14}})));
  Modelica.Blocks.Sources.RealExpression Couple_Pompe1(y=SRI_corrige.PompeCentrifugeDyn1.M.Ctr)
    annotation (Placement(transformation(origin={23,10}, extent={{-17,-14},{17,
            14}})));
  Observers.FlowConversion flowConversion
    annotation (Placement(transformation(extent={{68,-26},{88,-6}})));
  Observers.PompeEnService pompeEnService
    annotation (Placement(transformation(extent={{68,0},{88,20}})));
  Modelica.Blocks.Sources.RealExpression Q_Pompe2(y=SRI_corrige.PompeCentrifugeDyn2.Q)
    annotation (Placement(transformation(origin={25,-66}, extent={{-17,-14},{17,
            14}})));
  Modelica.Blocks.Sources.RealExpression Couple_Pompe2(y=SRI_corrige.PompeCentrifugeDyn2.M.Ctr)
    annotation (Placement(transformation(origin={23,-42}, extent={{-17,-14},{17,
            14}})));
  Observers.PompeEnService pompeEnService1
    annotation (Placement(transformation(extent={{68,-52},{88,-32}})));
  Observers.FlowConversion flowConversion1
    annotation (Placement(transformation(extent={{68,-78},{88,-58}})));
  Modelica.Blocks.Sources.RealExpression Q_Pompe3(y=SRI_corrige.PompeCentrifugeDyn3.Q)
    annotation (Placement(transformation(origin={25,-118}, extent={{-17,-14},{
            17,14}})));
  Modelica.Blocks.Sources.RealExpression Couple_Pompe3(y=SRI_corrige.PompeCentrifugeDyn3.M.Ctr)
    annotation (Placement(transformation(origin={23,-94}, extent={{-17,-14},{17,
            14}})));
  Observers.PompeEnService pompeEnService2
    annotation (Placement(transformation(extent={{68,-104},{88,-84}})));
  Observers.FlowConversion flowConversion2
    annotation (Placement(transformation(extent={{68,-130},{88,-110}})));
  Modelica.Blocks.Sources.RealExpression T_SRI(y=SRI_corrige.CapteurT1.T)
    annotation (Placement(transformation(origin={27,-148}, extent={{-17,-14},{
            17,14}})));
  Requirements.Req_Tsri req_Tsri
    annotation (Placement(transformation(extent={{146,-158},{166,-138}})));
  Observers.KtoDeg ktoDeg
    annotation (Placement(transformation(extent={{68,-160},{88,-140}})));
  Requirements.Req_DTsf req_DTsf
    annotation (Placement(transformation(extent={{144,-212},{164,-192}})));
  Observers.KtoDeg ktoDeg1
    annotation (Placement(transformation(extent={{68,-230},{88,-210}})));
  Observers.KtoDeg ktoDeg2
    annotation (Placement(transformation(extent={{68,-200},{88,-180}})));
  Modelica.Blocks.Sources.RealExpression T_input_sf(y=SRI_corrige.EchangeurAPlaques1D2.Tef)
    annotation (Placement(transformation(origin={25,-218}, extent={{-17,-14},{
            17,14}})));
  Modelica.Blocks.Sources.RealExpression T_output_sf(y=SRI_corrige.EchangeurAPlaques1D2.Tsf)
    annotation (Placement(transformation(origin={27,-190}, extent={{-17,-14},{
            17,14}})));
  Requirements.Req_speed_all_CRML req_speed_all_CRML
    annotation (Placement(transformation(extent={{212,42},{232,62}})));
  Requirements.Req_flow_all_CRML req_flow_all_CRML
    annotation (Placement(transformation(extent={{214,-46},{234,-26}})));
  Requirements.Req_Tsri_CRML req_Tsri_CRML
    annotation (Placement(transformation(extent={{210,-158},{230,-138}})));
  inner CRML.TimeLocators.Continuous.Master master
    annotation (Placement(transformation(origin = {-6, 8}, extent = {{232, -228}, {252, -208}})));
  CRML.Blocks.Logical.BooleanPulse booleanPulse(
    width=980,
    period=1000,
    startTime=10)
    annotation (Placement(transformation(origin = {-4, 8}, extent = {{194, -228}, {214, -208}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{218,-222},{226,-214}})));
equation
  connect(Q_echangeur_1.y, flowToSpeed.u) annotation (Line(points={{45.7,64},{
          57.4,64},{57.4,65.2},{66,65.2}}, color={0,0,127}));
  connect(Q_echangeur_2.y, flowToSpeed1.u) annotation (Line(points={{43.7,36},{
          58,36},{58,37.2},{68,37.2}}, color={0,0,127}));
  connect(flowToSpeed.y, req_speed.u1) annotation (Line(points={{89.8,65.2},{
          119.8,65.2},{119.8,57.8},{148,57.8}}, color={0,0,127}));
  connect(flowToSpeed1.y, req_speed.u) annotation (Line(points={{91.8,37.2},{
          119.8,37.2},{119.8,48.4},{148,48.4}}, color={0,0,127}));
  connect(Q_Pompe1.y, flowConversion.u) annotation (Line(points={{43.7,-14},{
          43.7,-14.8},{66,-14.8}}, color={0,0,127}));
  connect(Couple_Pompe1.y, pompeEnService.u) annotation (Line(points={{41.7,10},
          {58,10},{58,11.2},{66,11.2}}, color={0,0,127}));
  connect(flowConversion.y, req_flow.u) annotation (Line(points={{89.8,-14.8},{
          138,-14.8},{138,-34},{148,-34}}, color={0,0,127}));
  connect(req_flow.u3, pompeEnService.y) annotation (Line(points={{148,-30},{
          140,-30},{140,10.6},{89,10.6}}, color={255,0,255}));
  connect(Couple_Pompe2.y, pompeEnService1.u) annotation (Line(points={{41.7,
          -42},{58,-42},{58,-40.8},{66,-40.8}}, color={0,0,127}));
  connect(Q_Pompe2.y, flowConversion1.u) annotation (Line(points={{43.7,-66},{
          46,-66.8},{66,-66.8}}, color={0,0,127}));
  connect(Couple_Pompe3.y, pompeEnService2.u) annotation (Line(points={{41.7,
          -94},{58,-94},{58,-92.8},{66,-92.8}}, color={0,0,127}));
  connect(Q_Pompe3.y, flowConversion2.u) annotation (Line(points={{43.7,-118},{
          46,-118.8},{66,-118.8}}, color={0,0,127}));
  connect(flowConversion2.y, req_flow.u2) annotation (Line(points={{89.8,-118.8},
          {148,-118.8},{148,-49.8}}, color={0,0,127}));
  connect(pompeEnService2.y, req_flow.u5) annotation (Line(points={{89,-93.4},{
          142,-93.4},{142,-58},{140,-58},{140,-45.8},{148,-45.8}}, color={255,0,
          255}));
  connect(flowConversion1.y, req_flow.u1) annotation (Line(points={{89.8,-66.8},
          {138,-66.8},{138,-44},{140,-44},{140,-41.8},{148,-41.8}}, color={0,0,
          127}));
  connect(pompeEnService1.y, req_flow.u4) annotation (Line(points={{89,-41.4},{
          138,-41.4},{138,-37.8},{148,-37.8}}, color={255,0,255}));
  connect(T_SRI.y, ktoDeg.u) annotation (Line(points={{45.7,-148},{58,-148},{58,
          -148.8},{66,-148.8}}, color={0,0,127}));
  connect(req_Tsri.u, ktoDeg.y) annotation (Line(points={{144,-148},{142,-148.8},
          {89.8,-148.8}}, color={0,0,127}));
  connect(ktoDeg1.u, T_input_sf.y) annotation (Line(points={{66,-218.8},{64,
          -218},{43.7,-218}}, color={0,0,127}));
  connect(ktoDeg2.u, T_output_sf.y) annotation (Line(points={{66,-188.8},{50,
          -188.8},{50,-190},{45.7,-190}}, color={0,0,127}));
  connect(ktoDeg2.y, req_DTsf.u) annotation (Line(points={{89.8,-188.8},{134,
          -188.8},{134,-197},{142,-197}}, color={0,0,127}));
  connect(ktoDeg1.y, req_DTsf.u1) annotation (Line(points={{89.8,-218.8},{134,
          -218.8},{134,-206},{142,-206}}, color={0,0,127}));
  connect(flowToSpeed.y, req_speed_all_CRML.v1) annotation (Line(points={{89.8,
          65.2},{144,65.2},{144,70},{196,70},{196,56.4},{210,56.4}}, color={0,0,
          127}));
  connect(flowToSpeed1.y, req_speed_all_CRML.v2) annotation (Line(points={{91.8,
          37.2},{196,37.2},{196,48},{210,48}}, color={0,0,127}));
  connect(pompeEnService.y, req_flow_all_CRML.pump_in_service_1) annotation (Line(points={{89,
          10.6},{140,10.6},{140,10},{202,10},{202,-28},{212,-28}}, color={255,0,
          255}));
  connect(flowConversion.y, req_flow_all_CRML.flow1) annotation (Line(points={{89.8,
          -14.8},{200,-14.8},{200,-32},{212,-32}}, color={0,0,127}));
  connect(pompeEnService1.y, req_flow_all_CRML.pump_in_service_2) annotation (Line(points={{89,
          -41.4},{136,-41.4},{136,-54},{192,-54},{192,-35.8},{212,-35.8}},
        color={255,0,255}));
  connect(flowConversion1.y, req_flow_all_CRML.flow2) annotation (Line(points={{
          89.8,-66.8},{196,-66.8},{196,-39.8},{212,-39.8}}, color={0,0,127}));
  connect(pompeEnService2.y, req_flow_all_CRML.pump_in_service_3) annotation (Line(points={{89,
          -93.4},{142,-93.4},{142,-94},{200,-94},{200,-43.8},{212,-43.8}},
        color={255,0,255}));
  connect(flowConversion2.y, req_flow_all_CRML.flow3) annotation (Line(points={{
          89.8,-118.8},{148,-118.8},{148,-120},{208,-120},{208,-48},{212,-48},{
          212,-47.8}}, color={0,0,127}));
  connect(ktoDeg.y, req_Tsri_CRML.T) annotation (Line(points={{89.8,-148.8},{
          136,-148.8},{136,-132},{200,-132},{200,-148},{208,-148}}, color={0,0,
          127}));
  connect(master.u, booleanToBoolean4_1.y)
    annotation (Line(points={{225, -210}, {228.7, -210}, {228.7, -218},{226.4,-218}}, color={162,29,33}));
  connect(booleanPulse.y, booleanToBoolean4_1.u)
    annotation (Line(points={{211, -210}, {216.3, -210}, {216.3, -218},{217.6,-218}}, color={217,67,180}));
  connect(scenario0_2echangeurs.scenarioConnector, SRI_corrige.scenario) annotation(
    Line(points={{-136.8,54.24},{-64,54.24},{-64,8.18519},{-51.7111,8.18519}}));
  connect(req_Tsri_CRML.T, ktoDeg.y) annotation(
    Line(points = {{212, -150}, {198, -150}, {198, -128}, {110, -128}, {110, -148}, {90, -148}}, color = {0, 0, 127}));
  annotation (
    Diagram(graphics={  Rectangle(origin={56,-70},  fillColor = {143, 240, 164}, fillPattern = FillPattern.Solid, extent={{-52,166},
              {52,-166}}),                                                                                                                          Text(origin = {53, 87}, extent = {{-27, 9}, {27, -9}}, textString = "Observers"), Rectangle(origin={158,-71},  fillColor = {249, 240, 107}, fillPattern = FillPattern.Solid, extent={{-32,167},
              {32,-167}}),                                                                                                                                                                                                        Text(origin = {159, 87}, extent = {{-27, 7}, {27, -7}}, textString = "Requirements"), Rectangle(origin = {-127, 0}, fillColor = {255, 190, 111}, fillPattern = FillPattern.Solid, extent = {{-67, 96}, {67, -96}}), Text(origin = {-131, 87}, extent = {{-35, 7}, {35, -7}}, textString = "Scenarios"),
                                                                                                                                                                                                        Rectangle(origin={222,-71},  fillColor={170,255,
              255},                                                                                                                                                                                                        fillPattern
            = FillPattern.Solid,                                                                                                                                                                                                        extent={{-32,167},
              {32,-167}}),
        Text(
          extent={{202,96},{240,76}},
          textString="CRML")},                                                                                                                                                                                                        coordinateSystem(extent={{-200,
            100},{260,-240}})),
    Icon(coordinateSystem(extent={{-200,-300},{260,100}})),
  experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 2));
end Verif_corrige;
