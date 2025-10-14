within cooling_system.Behavior.SRIN4_v4;
block CmdVannes "Régulation de température du SRI N4"
  parameter Real consigneT = 300 "Consigne de temperature";
  parameter Real k = 1 "Gain";
  parameter Real Ti = 1 "Constante de temps";
  parameter Real range = 40 "Range";
  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal utemp annotation (
    Placement(transformation(extent = {{-120, 50}, {-100, 70}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal yserie annotation (
    Placement(transformation(extent = {{300, 50}, {320, 70}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal ybypass annotation (
    Placement(transformation(extent = {{300, -170}, {320, -150}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical unbech annotation (
    Placement(transformation(extent = {{-120, -170}, {-100, -150}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Add ADD1(k2 = -1) annotation (
    Placement(transformation(extent = {{-60, 40}, {-40, 60}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Div DIV1 annotation (
    Placement(transformation(extent = {{0, 10}, {20, 30}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Constante1(k = range) annotation (
    Placement(transformation(extent = {{-60, -20}, {-40, 0}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Constante2(k = consigneT) annotation (
    Placement(transformation(extent = {{-100, 80}, {-80, 100}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Continu.PIsat PIsat1(k = k, Ti = Ti, Limiteur1(u(signal(start = 0.55))), ureset0 = 0.562, permanent = true) annotation (
    Placement(transformation(extent = {{40, -20}, {60, 0}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Constante3 annotation (
    Placement(transformation(extent = {{60, 80}, {80, 100}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Add ADD2(k2 = -1) annotation (
    Placement(transformation(extent = {{120, 50}, {140, 70}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Limiteur Limiteur1(minval = 0.05) annotation (
    Placement(transformation(extent = {{160, 50}, {180, 70}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Constante4(k = 0) annotation (
    Placement(transformation(extent = {{160, -156}, {180, -136}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Add ADD3 annotation (
    Placement(transformation(extent = {{220, -110}, {240, -90}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Limiteur Limiteur2(maxval = 0.6, minval = 0) annotation (
    Placement(transformation(extent = {{260, -110}, {280, -90}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Mul MUL1 annotation (
    Placement(transformation(origin = {-10, 0}, extent = {{130, -40}, {150, -20}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Mul MUL2 annotation (
    Placement(transformation(origin = {14, -4}, extent = {{170, -80}, {190, -60}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Constante5(k = 0.7) annotation (
    Placement(transformation(extent = {{100, -100}, {120, -80}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Selecteur k1 annotation (
    Placement(transformation(extent = {{134, -140}, {154, -120}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Constante6(k = 0.35) annotation (
    Placement(transformation(extent = {{100, -200}, {120, -180}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Selecteur k2 annotation (
    Placement(transformation(extent = {{190, -180}, {210, -160}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Constante7(k = 0.16) annotation (
    Placement(transformation(extent = {{160, -200}, {180, -180}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Continu.FctTrans FctTrans1(a = {Ti, 1}, permanent = true, y(signal(start = 0.55))) annotation (
    Placement(transformation(extent = {{80, -20}, {100, 0}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Mul MUL11 annotation (
    Placement(transformation(origin = {24, -6}, extent = {{130, -40}, {150, -20}})));
equation
  connect(ADD1.y, DIV1.u1) annotation (
    Line(points = {{-39, 50}, {-20, 50}, {-20, 26}, {-1, 26}}));
  connect(Constante1.y, DIV1.u2) annotation (
    Line(points = {{-39, -10}, {-20, -10}, {-20, 14}, {-1, 14}}));
  connect(Constante2.y, ADD1.u1) annotation (
    Line(points = {{-79, 90}, {-70, 90}, {-70, 56}, {-61, 56}}, color = {0, 0, 255}));
  connect(utemp, ADD1.u2) annotation (
    Line(points = {{-110, 60}, {-80, 60}, {-80, 44}, {-61, 44}}));
  connect(DIV1.y, PIsat1.u) annotation (
    Line(points = {{21, 20}, {30, 20}, {30, -10}, {39, -10}}, color = {0, 0, 255}));
  connect(Constante3.y, ADD2.u1) annotation (
    Line(points = {{81, 90}, {100, 90}, {100, 66}, {119, 66}}));
  connect(ADD2.y, Limiteur1.u) annotation (
    Line(points = {{141, 60}, {159, 60}}, color = {0, 0, 255}));
  connect(Limiteur1.y, yserie) annotation (
    Line(points = {{181, 60}, {310, 60}}, color = {0, 0, 255}));
  connect(MUL2.y, ADD3.u1) annotation (
    Line(points = {{205, -74}, {204, -74}, {204, -94}, {219, -94}}));
  connect(ADD3.y, Limiteur2.u) annotation (
    Line(points = {{241, -100}, {259, -100}}));
  connect(Constante7.y, k2.u2) annotation (
    Line(points = {{181, -190}, {184, -190}, {184, -178}, {189, -178}}));
  connect(Constante4.y, k2.u1) annotation (
    Line(points = {{181, -146}, {186, -146}, {186, -162}, {189, -162}}));
  connect(k2.y, ADD3.u2) annotation (
    Line(points = {{211, -170}, {214, -170}, {214, -106}, {219, -106}}));
  connect(Constante6.y, k1.u2) annotation (
    Line(points = {{121, -190}, {126, -190}, {126, -138}, {133, -138}}));
  connect(Constante5.y, k1.u1) annotation (
    Line(points = {{121, -90}, {126, -90}, {126, -122}, {133, -122}}));
  connect(k1.y, MUL2.u2) annotation (
    Line(points = {{155, -130}, {160, -130}, {160, -80}, {183, -80}}));
  connect(Limiteur2.y, ybypass) annotation (
    Line(points = {{281, -100}, {290, -100}, {290, -160}, {310, -160}}, color = {0, 0, 255}));
  connect(unbech, k2.uCond) annotation (
    Line(points = {{-110, -160}, {148, -160}, {148, -170}, {189, -170}}));
  connect(unbech, k1.uCond) annotation (
    Line(points = {{-110, -160}, {80, -160}, {80, -130}, {133, -130}}));
  connect(PIsat1.y, FctTrans1.u) annotation (
    Line(points = {{61, -10}, {79, -10}}));
  connect(FctTrans1.y, ADD2.u2) annotation (
    Line(points = {{101, -10}, {110, -10}, {110, 54}, {119, 54}}));
  connect(FctTrans1.y, MUL1.u1) annotation (
    Line(points = {{101, -10}, {110, -10}, {110, -24}, {119, -24}}));
  connect(FctTrans1.y, MUL1.u2) annotation (
    Line(points = {{101, -10}, {110, -10}, {110, -36}, {119, -36}}));
  connect(PIsat1.y, FctTrans1.u0) annotation (
    Line(points = {{61, -10}, {70, -10}, {70, -18}, {79, -18}}));
  connect(MUL1.y, MUL11.u2) annotation (
    Line(points={{141,-30},{144,-30},{144,-40},{153,-40},{153,-42}},            color = {0, 0, 255}));
  connect(FctTrans1.y, MUL11.u1) annotation (
    Line(points={{101,-10},{146,-10},{146,-30},{153,-30}},          color = {0, 0, 255}));
  connect(MUL11.y, MUL2.u1) annotation (
    Line(points={{175,-36},{178,-36},{178,-68},{183,-68}},          color = {0, 0, 255}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio = false, preserveOrientation = false, extent = {{-100, -200}, {300, 100}}, grid = {2, 2}, initialScale = 0.1), graphics={  Rectangle(extent = {{-100, 100}, {300, -200}}), Text(extent={{-100,32},
              {298,-108}},                                                                                                                                                                                                        textString = "%name")}),
    Diagram(coordinateSystem(preserveAspectRatio = false, preserveOrientation = false, extent = {{-100, -200}, {300, 100}}, grid = {2, 2}, initialScale = 0.1), graphics),
    Window(x = 0.18, y = 0.08, width = 0.6, height = 0.6),
    Documentation(info = "<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
    "));
end CmdVannes;