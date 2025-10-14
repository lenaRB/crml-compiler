within cooling_system.Verification.Requirements;
model Req_speed_CRML
  Modelica.Blocks.Interfaces.RealInput v annotation (Placement(transformation(
          origin={-120,16}, extent={{-20,-20},{20,20}}), iconTransformation(
          origin={-120,0}, extent={{-20,-20},{20,20}})));
  Modelica.Blocks.Logical.LessThreshold lessThreshold(threshold=6)
    annotation (Placement(transformation(extent={{-62,6},{-42,26}})));
  CRML.TimeLocators.Continuous.FromFor fromFor
    annotation (Placement(transformation(extent={{22,6},{42,26}})));
  CRML.Requirements.CheckDurationLowerEqual checkDurationLowerEqual
    annotation (Placement(transformation(extent={{22,-34},{42,-14}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-32,12},{-24,20}})));
  CRML.Requirements.CheckCountLowerEqual checkCountLowerEqual(threshold = 2)
    annotation (Placement(transformation(origin = {2, 0}, extent = {{20, -70}, {40, -50}})));
  CRML.Blocks.Logical4.And4 and4_1
    annotation (Placement(transformation(extent={{62,-52},{82,-32}})));
  CRML.ETL.Connectors.Boolean4Output R_v annotation (Placement(
        transformation(origin = {0, -42}, extent = {{100, -10}, {120, 10}}), iconTransformation(origin = {0, -54}, extent = {{100, -10}, {120, 10}})));
  Modelica.Blocks.Sources.Constant heure(k=3600)
    annotation (Placement(transformation(extent={{-60,-28},{-40,-8}})));
  CRML.Blocks.Logical4.Not4 not4_1
    annotation (Placement(transformation(extent={{-10,6},{10,26}})));
  CRML.ETL.Connectors.Boolean4Output R2_v annotation(
    Placement(transformation(origin = {0, 4}, extent = {{100, -10}, {120, 10}}), iconTransformation(origin = {0, 32}, extent = {{100, -10}, {120, 10}})));
  CRML.ETL.Connectors.Boolean4Output R1_v annotation(
    Placement(transformation(origin = {0, 40}, extent = {{100, -10}, {120, 10}}), iconTransformation(origin = {0, 66}, extent = {{100, -10}, {120, 10}})));
equation

  connect(v, lessThreshold.u)
    annotation (Line(points={{-120,16},{-64,16}}, color={0,0,127}));
  connect(fromFor.y, checkDurationLowerEqual.tl)
    annotation (Line(points={{32,6},{32,-14}}, color={0,0,255}));
  connect(lessThreshold.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-41,16},{-32.4,16}}, color={255,0,255}));
  connect(checkDurationLowerEqual.u, booleanToBoolean4_1.y) annotation (Line(
        points={{21,-24},{-16,-24},{-16,16},{-23.6,16}}, color={162,29,33}));
  connect(booleanToBoolean4_1.y, checkCountLowerEqual.u) annotation (Line(
        points={{-23.6,16},{-16,16},{-16,-60},{21,-60}}, color={162,29,33}));
  connect(fromFor.y, checkCountLowerEqual.tl) annotation (Line(points={{32,6},{
          32,-10},{50,-10},{50,-44},{32,-44},{32,-50}}, color={0,0,255}));
  connect(checkDurationLowerEqual.y, and4_1.u1) annotation (Line(points={{43,
          -24},{58,-24},{58,-34},{61,-34}}, color={162,29,33}));
  connect(checkCountLowerEqual.y, and4_1.u2) annotation (Line(points={{43,-60},
          {56,-60},{56,-50},{61,-50}}, color={162,29,33}));
  connect(and4_1.y, R_v) annotation (Line(points={{83,-42},{110, -42}}, color={162,29,33}));
  connect(fromFor.duration, heure.y) annotation (Line(points={{21,8},{14,8},{14,
          -18},{-39,-18}}, color={0,0,0}));
  connect(fromFor.u, not4_1.y)
    annotation (Line(points={{21,16},{11,16}}, color={162,29,33}));
  connect(booleanToBoolean4_1.y, not4_1.u)
    annotation (Line(points={{-23.6,16},{-11,16}}, color={162,29,33}));
  connect(checkDurationLowerEqual.y, R1_v) annotation(
    Line(points = {{44, -24}, {58, -24}, {58, 40}, {110, 40}}, color = {162, 29, 33}));
  connect(checkCountLowerEqual.y, R2_v) annotation(
    Line(points = {{44, -60}, {90, -60}, {90, 4}, {110, 4}}, color = {162, 29, 33}));

annotation (
    Icon(graphics={  Rectangle(fillColor={128,0,255},     fillPattern=
              FillPattern.Solid,                                                           extent = {{-100, 100}, {100, -100}}), Text(origin = {-6, 124}, extent = {{-136, 30}, {136, -30}}, textString = "%name")}),
      Diagram(graphics={Text(
          extent={{-90,96},{92,42}},
          textColor={28,108,200},
          textString="La vitesse dans les échangeurs ne doit pas
exceder de 6 m/s plus de deux fois,
ni pendant plus de 10s (cumulé) par heure (glissante).")}));
end Req_speed_CRML;
