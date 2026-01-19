within cooling_system.Behavior.SRIN4_v4;
block ReguNiveau_simple "Régulation de niveau du SRI N4"
  parameter Modelica.Units.SI.Length niveauMax2=4.75 "Niveau maximum 2";
  parameter Modelica.Units.SI.Length niveauMax1=4.50 "Niveau maximum 1";
  parameter Modelica.Units.SI.Length niveauMin1=1.50 "Niveau minimum 1";
  parameter Modelica.Units.SI.Length niveauMin2=1.25 "Niveau minimum 2";
  parameter Modelica.Units.SI.Length niveauMin3=1.00 "Niveau minimum 3";
  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal univeau
    annotation (Placement(transformation(extent={{-320,-10},{-300,10}},
          rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical yvanne
    annotation (Placement(transformation(extent={{300,-230},{320,-210}},
          rotation=0)));
  BFE.Logique.HOP HOP1    annotation (Placement(transformation(extent={{40,
            -20},{80,20}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical yniveauBas
    annotation (Placement(transformation(extent={{300,210},{320,230}},
          rotation=0)));
  ST.VanneTORA_simple
               STVanneTOR1(repere="1201VA-")
    annotation (Placement(transformation(extent={{160,-60},{280,60}},
          rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.NONL NONL1
                           annotation (Placement(transformation(extent={{120,
            -10},{140,10}}, rotation=0)));
  ST.CapteurNiveau STCapteurNiveauMin1(
    seuil=niveauMin1,
    sens=false,
    repere="1203 SN1",
    libelle="niveau 1201BA min1") annotation (Placement(transformation(extent=
           {{-260,-40},{-160,0}}, rotation=0)));
  ST.CapteurNiveau STCapteurNiveauMax1(
    seuil=niveauMax1,
    repere="1202 SN1",
    libelle="niveau 1201BA max1") annotation (Placement(transformation(extent=
           {{-260,-120},{-160,-80}}, rotation=0)));
  ST.CapteurNiveau STCapteurNiveauMin2(
    seuil=niveauMin2,
    sens=false,
    repere="1201 SN2",
    libelle="niveau 1201BA min2") annotation (Placement(transformation(extent=
           {{-260,40},{-160,80}}, rotation=0)));
  ST.CapteurNiveau STCapteurNiveauMin3(
    seuil=niveauMin3,
    sens=false,
    repere="1203 SN2",
    libelle="niveau 1201BA min3") annotation (Placement(transformation(extent=
           {{-260,120},{-160,160}}, rotation=0)));
  ST.CapteurNiveau STCapteurNiveauMin4(
    seuil=niveauMin3,
    sens=false,
    repere="1202 SN2",
    libelle="niveau 1201BA min3") annotation (Placement(transformation(extent=
           {{-260,200},{-160,240}}, rotation=0)));
  BFE.Logique.OUL OUL1    annotation (Placement(transformation(extent={{-80,0},
            {-40,40}}, rotation=0)));
  BFE.Logique.SEU3 SEU3_1(   m=2) annotation (Placement(transformation(extent=
           {{-80,120},{-40,160}}, rotation=0)));
  ST.CapteurNiveau STCapteurNiveauMax2(
    seuil=niveauMax2,
    repere="1201 SN1",
    libelle="niveau 1201BA max2") annotation (Placement(transformation(extent=
           {{-260,-200},{-160,-160}}, rotation=0)));
equation
  connect(HOP1.yL, NONL1.uL) annotation (Line(points={{82,0},{119,0}}));
  connect(NONL1.yL, STVanneTOR1.D)
    annotation (Line(points={{141,0},{158.5,0}}));
  connect(HOP1.yL, STVanneTOR1.E) annotation (Line(points={{82,0},{100,0},{100,
          30},{129.063,30},{129.063,30.8571},{158.5,30.8571}}));
  connect(STCapteurNiveauMax1.etat, HOP1.HP)
    annotation (Line(points={{-156.667,-88},{-60,-88},{-60,-12},{38,-12}}));
  connect(univeau, STCapteurNiveauMin2.u)
    annotation (Line(points={{-310,0},{-280,0},{-280,20},{-210,20},{-210,38}}));
  connect(STVanneTOR1.cmd, yvanne)
    annotation (Line(points={{220,-61.7143},{220,-220},{310,-220}}));
  connect(univeau, STCapteurNiveauMin1.u)
    annotation (Line(points={{-310,0},{-280,0},{-280,-60},{-210,-60},{-210,
          -42}}));
  connect(univeau, STCapteurNiveauMin3.u)
    annotation (Line(points={{-310,0},{-280,0},{-280,100},{-210,100},{-210,
          118}}));
  connect(univeau, STCapteurNiveauMin4.u)
    annotation (Line(points={{-310,0},{-280,0},{-280,180},{-210,180},{-210,
          198}}));
  connect(STCapteurNiveauMin2.etat, OUL1.uL1)
    annotation (Line(points={{-156.667,72},{-130,72},{-130,32},{-82,32}}));
  connect(STCapteurNiveauMin1.etat, OUL1.uL2)
    annotation (Line(points={{-156.667,-8},{-129,-8},{-129,8},{-82,8}}));
  connect(OUL1.yL, HOP1.E)
    annotation (Line(points={{-38,20},{20,20},{20,12},{38,12}}));
  connect(OUL1.yL, HOP1.uInit)
    annotation (Line(points={{-38,20},{20,20},{20,-40},{60,-40},{60,-22}}));
  connect(STCapteurNiveauMin2.etat, SEU3_1.uL3)
    annotation (Line(points={{-156.667,72},{-130,72},{-130,124},{-82,124}}));
  connect(STCapteurNiveauMin3.etat, SEU3_1.uL2)
    annotation (Line(points={{-156.667,152},{-128,152},{-128,140},{-82,140}}));
  connect(STCapteurNiveauMin4.etat, SEU3_1.uL1)
    annotation (Line(points={{-156.667,232},{-128,232},{-128,156},{-82,156}}));
  connect(univeau, STCapteurNiveauMax2.u) annotation (Line(points={{-310,0},{
          -280,0},{-280,-220},{-210,-220},{-210,-202}}));
  connect(univeau, STCapteurNiveauMax1.u) annotation (Line(points={{-310,0},{
          -280,0},{-280,-140},{-210,-140},{-210,-122}}));
  connect(SEU3_1.yL, yniveauBas)
    annotation (Line(points={{-38,140},{240,140},{240,220},{310,220}}));
  annotation (
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        preserveOrientation=false,
        extent={{-300,-300},{300,300}},
        grid={2,2},
        initialScale=0.1), graphics={Rectangle(extent={{-298,300},{302,-300}}),
          Text(extent={{-278,98},{278,-82}}, textString=
                          "%name")}),
    Window(
      x=0.23,
      y=0.04,
      width=0.6,
      height=0.6),
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        preserveOrientation=false,
        extent={{-300,-300},{300,300}},
        grid={2,2},
        initialScale=0.1), graphics),
    Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
"));
end ReguNiveau_simple;
