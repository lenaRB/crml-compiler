within cooling_system.Verification.Requirements;
model Req_flow_all_CRML
  "\"Le débit dans les pompes doit etre supérieur à 700 t/h\""
  Modelica.Blocks.Interfaces.RealInput flow1 annotation (
    Placement(transformation(origin={-120,40},    extent = {{-20, -20}, {20, 20}}), iconTransformation(origin={-120,40},     extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput flow3 annotation (
    Placement(transformation(origin={-120,-90},    extent = {{-20, -20}, {20, 20}}), iconTransformation(origin={-120,-38},   extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput flow2
                                         annotation (
    Placement(transformation(origin={-120,-36},   extent = {{-20, -20}, {20, 20}}), iconTransformation(origin={-120,
            -118},                                                                                                           extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput pump_in_service_1 annotation (Placement(
        transformation(extent={{-140,60},{-100,100}}), iconTransformation(
          extent={{-140,60},{-100,100}})));
  Modelica.Blocks.Interfaces.BooleanInput pump_in_service_2 annotation (Placement(
        transformation(extent={{-140,-18},{-100,22}}), iconTransformation(
          extent={{-140,-18},{-100,22}})));
  Modelica.Blocks.Interfaces.BooleanInput pump_in_service_3 annotation (Placement(
        transformation(extent={{-140,-82},{-100,-42}}), iconTransformation(
          extent={{-140,-98},{-100,-58}})));
  CRML.ETL.Connectors.Boolean4Output R_flow_all annotation (Placement(
        transformation(extent={{100,-10},{120,10}}), iconTransformation(extent=
            {{100,-10},{120,10}})));
  Req_flow_CRML req_flow_CRML1
    annotation (Placement(transformation(extent={{-64,54},{-44,74}})));
  Req_flow_CRML req_flow_CRML2
    annotation (Placement(transformation(extent={{-66,-24},{-46,-4}})));
  Req_flow_CRML req_flow_CRML3
    annotation (Placement(transformation(extent={{-68,-82},{-48,-62}})));
  CRML.Blocks.Logical4.And4_n and4_n(N=3)
    annotation (Placement(transformation(origin = {0, -4}, extent = {{4, -6}, {24, 14}})));
equation

  connect(pump_in_service_1, req_flow_CRML1.pump_in_service) annotation (Line(points={{-120,80},{-86,80},{
          -86,66.6},{-66,66.6}}, color={255,0,255}));
  connect(flow1, req_flow_CRML1.f) annotation (Line(points={{-120,40},{-86,40},{-86,
          60.4},{-66,60.4}}, color={0,0,127}));
  connect(R_flow_all, and4_n.y) annotation(
    Line(points = {{110, 0}, {25, 0}}));
  connect(req_flow_CRML2.pump_in_service, pump_in_service_2) annotation(
    Line(points = {{-68, -12}, {-84, -12}, {-84, 2}, {-120, 2}}, color = {255, 0, 255}));
  connect(req_flow_CRML3.pump_in_service, pump_in_service_3) annotation(
    Line(points = {{-70, -70}, {-86, -70}, {-86, -62}, {-120, -62}}, color = {255, 0, 255}));
  connect(req_flow_CRML2.f, flow2) annotation(
    Line(points = {{-68, -18}, {-84, -18}, {-84, -36}, {-120, -36}}, color = {0, 0, 127}));
  connect(req_flow_CRML3.f, flow3) annotation(
    Line(points = {{-70, -76}, {-86, -76}, {-86, -90}, {-120, -90}}, color = {0, 0, 127}));
  connect(req_flow_CRML1.R_f, and4_n.u[1]) annotation(
    Line(points = {{-42, 64}, {-24, 64}, {-24, 0}, {4, 0}}, color = {162, 29, 33}));
  connect(req_flow_CRML2.R_f, and4_n.u[2]) annotation(
    Line(points = {{-44, -14}, {-24, -14}, {-24, 0}, {4, 0}}, color = {162, 29, 33}));
  connect(req_flow_CRML3.R_f, and4_n.u[3]) annotation(
    Line(points = {{-46, -72}, {-24, -72}, {-24, 0}, {4, 0}}, color = {162, 29, 33}));

annotation (
    Icon(graphics={  Rectangle(
          fillColor={128,0,255},
          fillPattern=FillPattern.Solid,
          extent={{-100,100},{100,-130}}),                                                                                       Text(origin = {-6, 124}, extent = {{-136, 30}, {136, -30}}, textString = "%name")}));
end Req_flow_all_CRML;
