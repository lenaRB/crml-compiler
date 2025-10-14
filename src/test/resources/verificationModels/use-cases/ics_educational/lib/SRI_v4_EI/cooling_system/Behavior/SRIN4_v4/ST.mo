within cooling_system.Behavior.SRIN4_v4;
package ST "Bibliothèque des schémas-types"
  block CapteurNiveau
    parameter Real seuil = 0 "Seuil";
    parameter Boolean defaut = false "Défaut capteur";
    parameter Boolean sens = true "Sens de la détection - true : >, false : <";
    parameter String repere = "xxxxSN" "Repère fonctionnel";
    parameter String libelle = "niveau" "Libellé";
    parameter Real Ti = 0.1 "Constante de temps";
    ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical etat annotation (
      Placement(transformation(extent = {{200, 50}, {220, 70}}, rotation = 0)));
    ThermoSysPro.InstrumentationAndControl.Connectors.InputReal u annotation (
      Placement(transformation(origin = {50, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Math.Inf Inf1 annotation (
      Placement(transformation(extent = {{80, -40}, {100, -20}}, rotation = 0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Constante1(k = seuil) annotation (
      Placement(transformation(extent = {{40, -60}, {60, -40}}, rotation = 0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Constante2(k = seuil) annotation (
      Placement(transformation(extent = {{40, 40}, {60, 60}}, rotation = 0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Math.Sup Sup1 annotation (
      Placement(transformation(extent = {{80, 60}, {100, 80}}, rotation = 0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Selecteur Selecteur1 annotation (
      Placement(transformation(extent = {{120, 10}, {140, 30}}, rotation = 0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante Constante3(K = sens) annotation (
      Placement(transformation(extent = {{80, 10}, {100, 30}}, rotation = 0)));
    PO.CapteurNiveau CapteurNiveau1(defaut = defaut) annotation (
      Placement(transformation(extent = {{-20, 10}, {0, 30}}, rotation = 0)));
    BFE.Logique.IMP IMP1(T = Ti) annotation (
      Placement(transformation(extent = {{160, 10}, {180, 30}}, rotation = 0)));
    ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal valeur annotation (
      Placement(transformation(extent = {{200, -70}, {220, -50}}, rotation = 0)));
  equation
    connect(Sup1.yL, Selecteur1.uL1) annotation (
      Line(points = {{101, 70}, {114, 70}, {114, 28}, {119, 28}}));
    connect(Inf1.yL, Selecteur1.uL2) annotation (
      Line(points = {{101, -30}, {114, -30}, {114, 12}, {119, 12}}));
    connect(Constante3.yL, Selecteur1.uCond) annotation (
      Line(points = {{101, 20}, {119, 20}}, color = {0, 0, 255}));
    connect(u, CapteurNiveau1.mesure) annotation (
      Line(points = {{50, -110}, {50, -80}, {-10, -80}, {-10, 9.23077}}));
    connect(CapteurNiveau1.etat, Sup1.u1) annotation (
      Line(points = {{0.769231, 20}, {20, 20}, {20, 76}, {79, 76}}, color = {0, 0, 255}));
    connect(CapteurNiveau1.etat, Inf1.u1) annotation (
      Line(points = {{0.769231, 20}, {20, 20}, {20, -24}, {79, -24}}, color = {0, 0, 255}));
    connect(Selecteur1.yL, IMP1.uL) annotation (
      Line(points = {{141, 20}, {159, 20}}));
    connect(IMP1.yL, etat) annotation (
      Line(points = {{181, 20}, {190, 20}, {190, 60}, {210, 60}}));
    connect(Selecteur1.yL, IMP1.uInit) annotation (
      Line(points = {{141, 20}, {150, 20}, {150, 0}, {170, 0}, {170, 9}}));
    connect(CapteurNiveau1.etat, valeur) annotation (
      Line(points = {{0.769231, 20}, {20, 20}, {20, -70}, {190, -70}, {190, -60}, {210, -60}}, color = {0, 0, 255}));
    connect(Constante2.y, Sup1.u2) annotation (
      Line(points = {{61, 50}, {70, 50}, {70, 64}, {79, 64}}, color = {0, 0, 255}));
    connect(Constante1.y, Inf1.u2) annotation (
      Line(points = {{61, -50}, {70, -50}, {70, -36}, {79, -36}}, color = {0, 0, 255}));
    annotation (
      Icon(coordinateSystem(preserveAspectRatio = false, preserveOrientation = false, extent = {{-100, -100}, {200, 100}}, grid = {2, 2}, initialScale = 0), graphics={  Rectangle(extent = {{-100, 100}, {200, -100}}, lineColor = {28, 108, 200}, lineThickness = 0.5), Text(extent = {{-122, 144}, {226, 106}}, textString = "%name"), Rectangle(extent = {{-20, 30}, {120, -30}}), Line(points = {{60, 30}, {60, -30}}), Text(extent = {{124, 86}, {198, 34}}, textString = "état"), Text(extent = {{-16, 26}, {56, -26}}, textString = "PN"), Text(extent = {{-80, -40}, {112, -80}}, textString = "%libelle"), Text(extent = {{-80, 88}, {60, 54}}, textString = "%repere"), Rectangle(extent = {{120, 80}, {200, 40}}), Text(extent = {{124, -34}, {198, -86}}, textString = "valeur"), Rectangle(extent = {{120, -40}, {200, -80}})}),
      Window(x = 0.32, y = 0.18, width = 0.6, height = 0.59),
      Documentation(info = "<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
      "));
  end CapteurNiveau;

  block VanneTORA_simple
    parameter Integer delaiOuverture = 1 "Délai d'ouverture de la vanne";
    parameter Boolean defaut = false "Défaut vanne";
    parameter String repere = "xxxxVA" "Repère fonctionnel";
    parameter Integer tension = 125 "Tension d'alimentation";
    parameter String voie = "A" "Voie";
    parameter String manqueTension = "F" "Etat sur manque tension";
    parameter String manqueAir = "F" "Etat sur manque air";
    parameter Real Ti = 0.1 "Constante de temps";
    ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical E annotation (
      Placement(transformation(extent = {{-220, 320}, {-200, 340}}, rotation = 0)));
    ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical D annotation (
      Placement(transformation(extent = {{-220, 140}, {-200, 160}}, rotation = 0)));
    ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical cmd annotation (
      Placement(transformation(origin = {200, -210}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
    BFE.Logique.RAZ RAZ1 annotation (
      Placement(transformation(extent = {{160, 40}, {180, 60}}, rotation = 0)));
    BFE.Logique.OUL OUL4 annotation (
      Placement(transformation(extent = {{60, -41}, {80, -21}}, rotation = 0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante Defaut(K = defaut) annotation (
      Placement(transformation(extent = {{-100, -80}, {-80, -60}}, rotation = 0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Logique.NONL NONL1 annotation (
      Placement(transformation(extent = {{-60, -80}, {-40, -60}}, rotation = 0)));
    BFE.Logique.IMP IMP1(T = Ti) annotation (
      Placement(transformation(extent = {{-20, -80}, {0, -60}}, rotation = 0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante Constante5(K = false) annotation (
      Placement(transformation(extent = {{-40, -110}, {-20, -90}}, rotation = 0)));
    PO.VanneTOR POVanneTOR(delaiOuverture = delaiOuverture, defaut = defaut) annotation (
      Placement(transformation(extent = {{340, 40}, {360, 60}}, rotation = 0)));
  equation
    connect(OUL4.yL, RAZ1.Z) annotation (
      Line(points = {{81, -31}, {150, -31}, {150, 44}, {159, 44}}));
    connect(Defaut.yL, NONL1.uL) annotation (
      Line(points = {{-79, -70}, {-61, -70}}));
    connect(NONL1.yL, IMP1.uL) annotation (
      Line(points = {{-39, -70}, {-21, -70}}));
    connect(IMP1.yL, OUL4.uL2) annotation (
      Line(points = {{1, -70}, {48, -70}, {48, -37}, {59, -37}}));
    connect(Constante5.yL, IMP1.uInit) annotation (
      Line(points = {{-19, -100}, {-10, -100}, {-10, -81}}));
    connect(POVanneTOR.Cmd, cmd) annotation (
      Line(points={{350,39.2308},{350,-140},{200,-140},{200,-210}}));
    connect(E, RAZ1.E) annotation (
      Line(points = {{-210, 330}, {140, 330}, {140, 56}, {159, 56}}));
    connect(E, RAZ1.uInit) annotation (
      Line(points = {{-210, 330}, {140, 330}, {140, 32}, {170, 32}, {170, 39}}));
    connect(D, OUL4.uL1) annotation (
      Line(points = {{-210, 150}, {20, 150}, {20, -25}, {59, -25}}));
    connect(RAZ1.yL, POVanneTOR.uL)
      annotation (Line(points={{181,50},{339.231,50}}, color={0,0,255}));
    annotation (
      Icon(coordinateSystem(preserveAspectRatio = false, preserveOrientation = false, extent = {{-200, -200}, {600, 500}}, grid = {2, 2}, initialScale = 0), graphics={  Rectangle(extent = {{-200, 498}, {600, -200}}, lineColor = {28, 108, 200}, lineThickness = 0.5), Rectangle(extent = {{-200, 340}, {-180, 320}}), Text(extent = {{-202, 340}, {-182, 320}}, textString = "E"), Rectangle(extent = {{-200, 160}, {-180, 140}}), Text(extent = {{-200, 160}, {-180, 140}}, textString = "D"), Rectangle(extent = {{-200, 80}, {100, -200}}), Text(extent = {{-178, 58}, {78, -2}}, textString = "%repere"), Rectangle(extent = {{-40, 420}, {400, 200}}), Text(extent = {{-18, 296}, {380, 222}}, textString = "TTLE F : N.A. s"), Text(extent = {{-17, 397}, {381, 323}}, textString = "TTLE O : N.A. s"), Rectangle(extent = {{280, 80}, {600, -200}}), Text(extent = {{300, 78}, {580, 18}}, textString = "Tension: %tension V"), Text(extent = {{320, -60}, {560, -120}}, textString = "Etat/Mqe T: %manqueTension"), Text(extent = {{320, 0}, {580, -40}}, textString = "Voie: %voie"), Text(extent = {{322, -141}, {560, -198}}, textString = "Etat/Mqe air: %manqueAir"), Line(points = {{-180, -180}, {80, -100}, {80, -180}, {-180, -100}, {-180, -180}}), Line(points = {{-180, -60}, {80, -60}}), Line(points = {{-50, -140}, {-50, -60}}), Line(points = {{-180, -60}, {-178, -54}, {-174, -48}, {-162, -40}, {-148, -34}, {-136, -30}, {-126, -28}, {-118, -26}, {-108, -24}, {-92, -22}, {-66, -20}, {-50, -20}, {-32, -20}, {-6, -22}, {16, -26}, {28, -28}, {42, -32}, {54, -36}, {66, -42}, {74, -48}, {78, -52}, {80, -56}, {80, -60}}), Text(extent = {{-196, 596}, {596, 524}}, textString = "%name"), Rectangle(extent = {{560, 480}, {600, 460}}), Text(extent = {{560, 480}, {600, 460}}, textString = "discO"), Rectangle(extent = {{560, 300}, {600, 280}}), Text(extent = {{560, 300}, {600, 280}}, textString = "etatO"), Rectangle(extent = {{560, 120}, {600, 100}}), Text(extent = {{560, 120}, {600, 100}}, textString = "indispo")}),
      Diagram(coordinateSystem(preserveAspectRatio = false, preserveOrientation = false, extent = {{-200, -200}, {600, 500}}, grid = {2, 2}, initialScale = 0)),
      Window(x = 0.21, y = 0.28, width = 0.6, height = 0.6),
      Documentation(info = "<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
      "));
  end VanneTORA_simple;

  annotation (
    Window(x = 0.05, y = 0.26, width = 0.25, height = 0.25, library = 1, autolayout = 1),
    Icon(coordinateSystem(preserveAspectRatio = false, extent = {{40, 240}, {280, 0}}, grid = {2, 2}, initialScale = 0), graphics={  Rectangle(origin = {160, 110}, lineColor = {28, 108, 200}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {80, 50}}), Polygon(origin = {160, 110}, lineColor = {28, 108, 200}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid, points = {{-100, 50}, {-80, 70}, {100, 70}, {80, 50}, {-100, 50}}), Polygon(origin = {160, 110}, lineColor = {28, 108, 200}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid, points = {{100, 70}, {100, -80}, {80, -100}, {80, 50}, {100, 70}}), Text(origin = {160, 110}, textColor = {255, 0, 0}, extent = {{-120, 135}, {120, 70}}, textString = "%name"), Text(origin = {160, 110}, textColor = {160, 160, 164}, extent = {{-90, 40}, {70, 10}}, textString = "Library"), Rectangle(origin = {160, 110}, extent = {{-32, -6}, {16, -35}}), Rectangle(origin = {160, 110}, extent = {{-32, -56}, {16, -85}}), Line(origin = {159.351, 109.405}, points = {{16, -20}, {49, -20}, {49, -71}, {16, -71}}), Line(origin = {159.351, 109.405}, points = {{-32, -72}, {-64, -72}, {-64, -21}, {-32, -21}}), Polygon(origin = {160, 110}, fillPattern = FillPattern.Solid, points = {{16, -71}, {29, -67}, {29, -74}, {16, -71}}), Polygon(origin = {160, 110}, fillPattern = FillPattern.Solid, points = {{-32, -21}, {-46, -17}, {-46, -25}, {-32, -21}})}),
    Documentation(info = "<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
    "));
end ST;
