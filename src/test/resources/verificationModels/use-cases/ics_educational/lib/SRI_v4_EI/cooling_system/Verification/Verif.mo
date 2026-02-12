within cooling_system.Verification;
model Verif
  Modelica.Blocks.Sources.RealExpression Q_echangeur_1(y = SRI.EchangeurAPlaques1D1.Ec.Q) annotation (
    Placement(transformation(origin={27,64},    extent = {{-17, -14}, {17, 14}})));
  Observers.FlowToSpeed flowToSpeed annotation (Placement(transformation(origin
          ={78,64}, extent={{-10,-10},{10,10}})));
  Requirements.Req_speed req_speed annotation (Placement(transformation(origin=
            {160,54}, extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.RealExpression Q_echangeur_2(y = SRI.EchangeurAPlaques1D2.Ec.Q) annotation (
    Placement(transformation(origin = {29, 38}, extent = {{-17, -14}, {17, 14}})));
  Observers.FlowToSpeed flowToSpeed1 annotation (Placement(transformation(
          origin={80,36}, extent={{-10,-10},{10,10}})));
  Scenarios.Scenario0_2echangeurs scenario0_2echangeurs annotation (Placement(
        transformation(origin={-156,54}, extent={{-18,-12},{18,12}})));
  Scenarios.Scenario0_1echangeur scenario0_1echangeur annotation (Placement(
        transformation(origin={-98,32},  extent={{-18,-12},{17.9999,12}})));
  Behavior.SRIN4_v4.SRI SRI
    annotation (Placement(transformation(extent={{-54,-10},{0,32}})));
equation
  connect(Q_echangeur_1.y, flowToSpeed.u) annotation (Line(points={{45.7,64},{
          57.4,64},{57.4,65.2},{66,65.2}}, color={0,0,127}));
  connect(Q_echangeur_2.y, flowToSpeed1.u) annotation (Line(points={{47.7,38},{
          58,38},{58,37.2},{68,37.2}}, color={0,0,127}));
  connect(flowToSpeed.y, req_speed.u1) annotation (Line(points={{89.8,65.2},{
          119.8,65.2},{119.8,57.8},{148,57.8}}, color={0,0,127}));
  connect(flowToSpeed1.y, req_speed.u) annotation (Line(points={{91.8,37.2},{
          119.8,37.2},{119.8,48.4},{148,48.4}}, color={0,0,127}));
  connect(scenario0_1echangeur.scenarioConnector, SRI.scenario) annotation(
    Line(points = {{-78, 32}, {-70, 32}, {-70, 10}, {-54, 10}}));
  annotation (
    Diagram(graphics={  Rectangle(origin = {54, 0}, fillColor = {143, 240, 164}, fillPattern = FillPattern.Solid, extent = {{-50, 96}, {50, -96}}), Text(origin = {53, 87}, extent = {{-27, 9}, {27, -9}}, textString = "Observers"), Rectangle(origin = {158, 0}, fillColor = {249, 240, 107}, fillPattern = FillPattern.Solid, extent = {{-32, 96}, {32, -96}}), Text(origin = {159, 87}, extent = {{-27, 7}, {27, -7}}, textString = "Requirements"), Rectangle(origin = {-127, 0}, fillColor = {255, 190, 111}, fillPattern = FillPattern.Solid, extent = {{-67, 96}, {67, -96}}), Text(origin = {-131, 87}, extent = {{-35, 7}, {35, -7}}, textString = "Scenarios")}, coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
  experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 2));
end Verif;
