within cooling_system.Verification.Requirements;
model Req_Tsri_CRML
  Modelica.Blocks.Interfaces.RealInput T annotation (Placement(transformation(
          origin={-120,34}, extent={{-20,-20},{20,20}}), iconTransformation(
          origin={-120,0}, extent={{-20,-20},{20,20}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-6,22},{2,30}})));
  CRML.ETL.Connectors.Boolean4Output R1_T annotation (Placement(
        transformation(extent={{100,40},{120,60}}), iconTransformation(extent={
            {100,40},{120,60}})));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold
      =16) annotation (Placement(transformation(extent={{-70,-6},{-50,14}})));
  Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold(threshold=30)
    annotation (Placement(transformation(extent={{-70,26},{-50,46}})));
  Modelica.Blocks.Logical.And and1
    annotation (Placement(transformation(extent={{-34,16},{-14,36}})));
  CRML.TimeLocators.Continuous.During during
    annotation (Placement(transformation(extent = {{18, 46}, {38, 66}})));
  CRML.Requirements.Ensure ensure
    annotation (Placement(transformation(extent = {{18, 16}, {38, 36}})));
  CRML.Blocks.Logical4.Boolean4Constant Always(K = CRML.ETL.Types.Boolean4.true4) annotation(
    Placement(transformation(extent = {{-18, 46}, {2, 66}})));
  CRML.TimeLocators.Continuous.FromFor fromFor
    annotation (Placement(transformation(extent={{20,-30},{40,-10}})));
  CRML.Blocks.Logical4.Not4 not4_1
    annotation (Placement(transformation(extent={{-14,-30},{6,-10}})));
  Modelica.Blocks.Sources.Constant seconds(k=60)
    annotation (Placement(transformation(extent={{-72,-48},{-52,-28}})));
  CRML.Requirements.CheckAtEnd checkAtEnd
    annotation (Placement(transformation(extent={{20,-66},{40,-46}})));
  CRML.Blocks.Logical4.Not4 not4_2
    annotation (Placement(transformation(extent={{-12,-66},{8,-46}})));
  CRML.ETL.Connectors.Boolean4Output R2_T annotation (Placement(
        transformation(extent={{100,8},{120,28}}), iconTransformation(origin = {0, 54}, extent = {{100, -54}, {120, -34}})));
  outer CRML.TimeLocators.Continuous.Master master annotation(
    Placement(transformation(origin = {70, 76}, extent = {{-10, -10}, {10, 10}})));
  CRML.Blocks.Logical4.And4 and4 annotation(
    Placement(transformation(origin = {80, -34}, extent = {{-10, -10}, {10, 10}})));
  CRML.ETL.Connectors.Boolean4Output R_T annotation(
    Placement(transformation(origin = {0, -52}, extent = {{100, 8}, {120, 28}}), iconTransformation(origin = {0, -12}, extent = {{100, -54}, {120, -34}})));
equation
  connect(T, lessEqualThreshold.u) annotation(
    Line(points = {{-120, 34}, {-88, 34}, {-88, 36}, {-72, 36}}, color = {0, 0, 127}));
  connect(T, greaterEqualThreshold.u) annotation(
    Line(points = {{-120, 34}, {-80, 34}, {-80, 4}, {-72, 4}}, color = {0, 0, 127}));
  connect(greaterEqualThreshold.y, and1.u2) annotation(
    Line(points = {{-49, 4}, {-42, 4}, {-42, 18}, {-36, 18}}, color = {255, 0, 255}));
  connect(lessEqualThreshold.y, and1.u1) annotation(
    Line(points = {{-49, 36}, {-42, 36}, {-42, 26}, {-36, 26}}, color = {255, 0, 255}));
  connect(booleanToBoolean4_1.u, and1.y) annotation(
    Line(points = {{-6.4, 26}, {-13, 26}}, color = {217, 67, 180}));
  connect(booleanToBoolean4_1.y, ensure.u) annotation(
    Line(points = {{2.4, 26}, {17, 26}}, color = {162, 29, 33}));
  connect(ensure.tl, during.y) annotation(
    Line(points = {{28, 36}, {28, 46}}, color = {0, 0, 255}));
  connect(during.u, Always.y) annotation(
    Line(points = {{17, 56}, {3, 56}}, color = {162, 29, 33}));
  connect(ensure.y, not4_1.u) annotation(
    Line(points = {{39, 26}, {44, 26}, {44, -2}, {-20, -2}, {-20, -20}, {-15, -20}}, color = {162, 29, 33}));
  connect(fromFor.u, not4_1.y) annotation(
    Line(points = {{19, -20}, {7, -20}}, color = {162, 29, 33}));
  connect(fromFor.duration, seconds.y) annotation(
    Line(points = {{19, -28}, {12, -28}, {12, -38}, {-51, -38}}, color = {0, 0, 0}));
  connect(fromFor.y, checkAtEnd.tl) annotation(
    Line(points = {{30, -30}, {30, -46}}, color = {0, 0, 255}));
  connect(checkAtEnd.u, not4_2.y) annotation(
    Line(points = {{19, -56}, {9, -56}}, color = {162, 29, 33}));
  connect(booleanToBoolean4_1.y, not4_2.u) annotation(
    Line(points = {{2.4, 26}, {6, 26}, {6, 6}, {-30, 6}, {-30, -56}, {-13, -56}}, color = {162, 29, 33}));
  connect(R2_T, R2_T) annotation(
    Line(points = {{110, 18}, {110, 18}}, color = {162, 29, 33}));
  connect(ensure.y, R1_T) annotation(
    Line(points = {{39, 26}, {56, 26}, {56, 50}, {110, 50}}, color = {162, 29, 33}));
  connect(checkAtEnd.y, R2_T) annotation(
    Line(points = {{41, -56}, {56, -56}, {56, 18}, {110, 18}}, color = {162, 29, 33}));
  connect(and4.u1, ensure.y) annotation(
    Line(points = {{70, -26}, {50, -26}, {50, 26}, {40, 26}}, color = {162, 29, 33}));
  connect(and4.u2, checkAtEnd.y) annotation(
    Line(points = {{70, -42}, {50, -42}, {50, -56}, {42, -56}}, color = {162, 29, 33}));
  connect(and4.y, R_T) annotation(
    Line(points = {{92, -34}, {110, -34}}, color = {162, 29, 33}));
  annotation (
    Icon(graphics = {Rectangle(fillColor = {128, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-6, 124}, extent = {{-136, 30}, {136, -30}}, textString = "%name")}, coordinateSystem(extent = {{-140, 160}, {140, -100}})),
      Diagram(graphics={Text(
          extent={{-88,94},{24,76}},
          textColor={28,108,200},
          textString="La température du SRI doit etre
maintenue entre 16 et 30°C."), Text(
          extent={{-88,-58},{90,-104}},
          textColor={28,108,200},
          textString="Si la température dépasse ces limites,
elle doit etre revenue dans l'intervalle au bout de 1 minute.")}));
end Req_Tsri_CRML;
