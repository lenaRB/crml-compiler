within cooling_system.Verification.Requirements;
model Req_flow_CRML
  Modelica.Blocks.Interfaces.RealInput f annotation (Placement(transformation(
          origin={-120,-36}, extent={{-20,-20},{20,20}}), iconTransformation(
          origin={-120,-36}, extent={{-20,-20},{20,20}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-40,-40},{-32,-32}})));
  CRML.ETL.Connectors.Boolean4Output R_f annotation (Placement(
        transformation(extent={{100,-10},{120,10}}), iconTransformation(extent=
            {{100,-10},{120,10}})));
  Modelica.Blocks.Interfaces.BooleanInput pump_in_service annotation (Placement(
        transformation(extent={{-140,6},{-100,46}}), iconTransformation(extent=
            {{-140,6},{-100,46}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2
    annotation (Placement(transformation(extent={{-88,22},{-80,30}})));
  CRML.TimeLocators.Continuous.During during
    annotation (Placement(transformation(extent={{-6,16},{14,36}})));
  CRML.Requirements.Ensure ensure
    annotation (Placement(transformation(extent={{-6,-46},{14,-26}})));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold
      =700) annotation (Placement(transformation(extent={{-76,-46},{-56,-26}})));
equation

  connect(pump_in_service, booleanToBoolean4_2.u)
    annotation (Line(points={{-120,26},{-88.4,26}}, color={255,0,255}));
  connect(booleanToBoolean4_1.y, ensure.u)
    annotation (Line(points={{-31.6,-36},{-7,-36}}, color={162,29,33}));
  connect(ensure.y, R_f) annotation (Line(points={{15,-36},{96,-36},
          {96,0},{110,0}}, color={162,29,33}));
  connect(booleanToBoolean4_2.y, during.u)
    annotation (Line(points={{-79.6,26},{-7,26}}, color={162,29,33}));
  connect(ensure.tl, during.y)
    annotation (Line(points={{4,-26},{4,16}}, color={0,0,255}));
  connect(f, greaterEqualThreshold.u)
    annotation (Line(points={{-120,-36},{-78,-36}}, color={0,0,127}));
  connect(booleanToBoolean4_1.u, greaterEqualThreshold.y)
    annotation (Line(points={{-40.4,-36},{-55,-36}}, color={217,67,180}));
annotation (
    Icon(graphics={  Rectangle(fillColor={128,0,255},     fillPattern=
              FillPattern.Solid,                                                           extent = {{-100, 100}, {100, -100}}), Text(origin = {-6, 124}, extent = {{-136, 30}, {136, -30}}, textString = "%name")}),
      Diagram(graphics={Text(
          extent={{-68,90},{82,66}},
          textColor={28,108,200},
          textString="Quand les pompes sont en service, leur débit 
doit etre supérieur à 700 t/h")}));
end Req_flow_CRML;
