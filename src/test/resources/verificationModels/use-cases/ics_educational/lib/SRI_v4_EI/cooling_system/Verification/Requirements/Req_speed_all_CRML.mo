within cooling_system.Verification.Requirements;
model Req_speed_all_CRML
  Modelica.Blocks.Interfaces.RealInput v1 annotation (Placement(transformation(
          origin={-120,32}, extent={{-20,-20},{20,20}}), iconTransformation(
          origin={-120,40}, extent={{-20,-20},{20,20}})));
  CRML.Blocks.Logical4.And4 and4_1
    annotation (Placement(transformation(extent={{22,-10},{42,10}})));
  CRML.ETL.Connectors.Boolean4Output R_speed_all annotation (Placement(
        transformation(extent={{100,-10},{120,10}}), iconTransformation(extent=
            {{100,-10},{120,10}})));
  Modelica.Blocks.Interfaces.RealInput v2 annotation (Placement(transformation(
          origin={-120,-26}, extent={{-20,-20},{20,20}}), iconTransformation(
          origin={-120,-40}, extent={{-20,-20},{20,20}})));
  Req_speed_CRML req_speed1
    annotation (Placement(transformation(extent={{-58,10},{-38,30}})));
  Req_speed_CRML req_speed2
    annotation (Placement(transformation(origin = {4, 0}, extent = {{-60, -28}, {-40, -8}})));
equation

  connect(and4_1.y, R_speed_all)
    annotation (Line(points={{43,0},{110,0}}, color={162,29,33}));
  connect(v1, req_speed1.v) annotation (Line(points={{-120,32},{-68,32},{-68,20},
          {-60,20}}, color={0,0,127}));
  connect(v2, req_speed2.v) annotation (Line(points={{-120,-26},{-72,-26},{-72,
          -18},{-58,-18}}, color={0,0,127}));
  connect(req_speed1.R_v, and4_1.u1) annotation(
    Line(points = {{-36, 14}, {-12, 14}, {-12, 8}, {22, 8}}, color = {162, 29, 33}));
  connect(req_speed2.R_v, and4_1.u2) annotation(
    Line(points = {{-34, -24}, {-12, -24}, {-12, -8}, {22, -8}}, color = {162, 29, 33}));

annotation (
    Icon(graphics={  Rectangle(fillColor={128,0,255},     fillPattern=
              FillPattern.Solid,                                                           extent = {{-100, 100}, {100, -100}}), Text(origin = {-6, 124}, extent = {{-136, 30}, {136, -30}}, textString = "%name")}));
end Req_speed_all_CRML;
