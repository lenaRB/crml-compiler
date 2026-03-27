within cooling_system.Behavior.SRIN4_v4;
package PO "Bibliothèque des parties opératives"
  block CapteurNiveau
    parameter Boolean defaut=false "Défaut capteur";
    parameter Real defval=0 "Valeur du signal en cas de défaut capteur";
    ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante Defaut(
                                   K=defaut)
      annotation (Placement(transformation(extent={{-40,20},{-20,40}},
            rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Connectors.InputReal mesure
                                          annotation (
      layer="icon", Placement(transformation(
          origin={30,-110},
          extent={{-10,-10},{10,10}},
          rotation=90)));
    ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal etat
      annotation (                           layer="icon", Placement(
          transformation(extent={{160,20},{180,40}}, rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Selecteur
      Selecteur1                           annotation (Placement(
          transformation(extent={{80,20},{100,40}}, rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante
      Constante1(                      k=defval)
      annotation (Placement(transformation(extent={{20,60},{40,80}}, rotation=
             0)));
  equation
    connect(Defaut.yL, Selecteur1.uCond) annotation (Line(points={{-19,30},{
            79,30}}));
    connect(mesure, Selecteur1.u2) annotation (Line(points={{30,-110},{30,22},
            {79,22}}));
    connect(Selecteur1.y, etat)
      annotation (Line(points={{101,30},{170,30}}, color={0,0,255}));
    connect(Constante1.y, Selecteur1.u1)
      annotation (Line(points={{41,70},{60,70},{60,38},{79,38}}, color={0,0,
            255}));
    annotation (
      Diagram(coordinateSystem(
          preserveAspectRatio=false,
          preserveOrientation=false,
          extent={{-100,-100},{160,160}},
          grid={2,2},
          initialScale=0), graphics),
      Window(
        x=0.23,
        y=0.14,
        width=0.65,
        height=0.64),
      Icon(coordinateSystem(
          preserveAspectRatio=false,
          preserveOrientation=false,
          extent={{-100,-100},{160,160}},
          grid={2,2},
          initialScale=0), graphics={
          Ellipse(
            extent={{-30,140},{90,20}},
            lineColor={28,108,200},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Rectangle(extent={{-100,160},{160,-100}}),
          Text(extent={{-120,214},{180,174}}, textString=
                                                  "%name"),
          Line(points={{30,20},{30,-100}})}),
      Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
"));
  end CapteurNiveau;

  block CapteurTemperature
    parameter Boolean defaut=false "Défaut capteur";
    parameter Real defval=0 "Valeur du signal en cas de défaut capteur";
    ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante Defaut(
                                   K=defaut)
      annotation (Placement(transformation(extent={{-40,20},{-20,40}},
            rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Connectors.InputReal mesure
                                          annotation (
      layer="icon", Placement(transformation(
          origin={30,-110},
          extent={{-10,-10},{10,10}},
          rotation=90)));
    ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal etat
      annotation (                           layer="icon", Placement(
          transformation(extent={{160,20},{180,40}}, rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Selecteur
      Selecteur1                           annotation (Placement(
          transformation(extent={{80,20},{100,40}}, rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante
      Constante1(                      k=defval)
      annotation (Placement(transformation(extent={{20,60},{40,80}}, rotation=
             0)));
  equation
    connect(Defaut.yL, Selecteur1.uCond) annotation (Line(points={{-19,30},{
            79,30}}));
    connect(mesure, Selecteur1.u2) annotation (Line(points={{30,-110},{30,22},
            {79,22}}));
    connect(Selecteur1.y, etat)
      annotation (Line(points={{101,30},{170,30}}, color={0,0,255}));
    connect(Constante1.y, Selecteur1.u1)
      annotation (Line(points={{41,70},{60,70},{60,38},{79,38}}, color={0,0,
            255}));
    annotation (
      Diagram(coordinateSystem(
          preserveAspectRatio=false,
          preserveOrientation=false,
          extent={{-100,-100},{160,160}},
          grid={2,2},
          initialScale=0), graphics),
      Window(
        x=0.23,
        y=0.14,
        width=0.65,
        height=0.64),
      Icon(coordinateSystem(
          preserveAspectRatio=false,
          preserveOrientation=false,
          extent={{-100,-100},{160,160}},
          grid={2,2},
          initialScale=0), graphics={
          Ellipse(
            extent={{-30,140},{90,20}},
            lineColor={28,108,200},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Rectangle(extent={{-100,160},{160,-100}}),
          Text(extent={{-120,214},{180,174}}, textString=
                                                  "%name"),
          Line(points={{30,20},{30,-100}})}),
      Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
"));
  end CapteurTemperature;

  block Pompe
    parameter Integer delaiDemarrage=1 "Délai de démarrage de la pompe";
    parameter Boolean defaut=false "Défaut pompe";
    ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical uL
                                       annotation (Placement(transformation(
            extent={{-120,20},{-100,40}}, rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical etatE
                                          annotation (Placement(
          transformation(extent={{160,20},{180,40}}, rotation=0)));
    BFE.Logique.TEX TEX1(   T=delaiDemarrage) annotation (Placement(
          transformation(extent={{0,0},{20,20}}, rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical Cmd
      annotation (Placement(transformation(
          origin={30,-110},
          extent={{10,-10},{-10,10}},
          rotation=90)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante Defaut(
                                   K=defaut)
      annotation (Placement(transformation(extent={{-40,60},{-20,80}},
            rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Logique.NONL NONL1
                             annotation (Placement(transformation(extent={{0,
              60},{20,80}}, rotation=0)));
    BFE.Logique.ETL ETL1    annotation (Placement(transformation(extent={{60,
              40},{80,60}}, rotation=0)));
  equation
    connect(Defaut.yL, NONL1.uL) annotation (Line(points={{-19,70},{-1,70}}));
    connect(NONL1.yL, ETL1.uL1)
      annotation (Line(points={{21,70},{40,70},{40,56},{59,56}}));
    connect(TEX1.yL, ETL1.uL2)
      annotation (Line(points={{21,10},{40,10},{40,44},{59,44}}));
    connect(ETL1.yL, etatE)
      annotation (Line(points={{81,50},{120,50},{120,30},{170,30}}));
    connect(ETL1.yL, Cmd)
      annotation (Line(points={{81,50},{120,50},{120,-60},{30,-60},{30,-110}}));
    connect(uL, TEX1.uL) annotation (Line(points={{-110,30},{-10,30},{-10,10},
            {-1,10}}));
    connect(uL, TEX1.uInit)
      annotation (Line(points={{-110,30},{-10,30},{-10,-10},{10,-10},{10,-1}}));
    annotation (
      Diagram(coordinateSystem(
          preserveAspectRatio=false,
          preserveOrientation=false,
          extent={{-100,-100},{160,160}},
          grid={2,2},
          initialScale=0), graphics),
      Window(
        x=0.06,
        y=0.28,
        width=0.65,
        height=0.64),
      Icon(coordinateSystem(
          preserveAspectRatio=false,
          preserveOrientation=false,
          extent={{-100,-100},{160,160}},
          grid={2,2},
          initialScale=0), graphics={
          Ellipse(
            extent={{-80,140},{140,-80}},
            lineColor={28,108,200},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Line(points={{-60,28},{120,28}}),
          Line(points={{60,68},{120,28},{60,-12}}),
          Rectangle(extent={{-100,160},{160,-100}}),
          Text(extent={{-120,214},{180,174}}, textString=
                                                  "%name")}),
      Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
"));
  end Pompe;

  block VanneReglante
    parameter Integer delai=0 "Délai de transmission de la commande";
    parameter Real vmax=1 "Vitesse maximum de manoeuvre de la vanne";
    parameter Boolean defaut=false "Défaut vanne";
    parameter Real Ti=0.1 "Constante de temps";

    ThermoSysPro.InstrumentationAndControl.Connectors.InputReal u
                                     annotation (Placement(transformation(
            extent={{-120,20},{-100,40}}, rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal Cmd
      annotation (Placement(transformation(
          origin={30,-110},
          extent={{-10,-10},{10,10}},
          rotation=270)));
    ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.RetardFixe
      RetardFixe1(                           retard=delai)
      annotation (Placement(transformation(extent={{120,20},{140,40}},
            rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Selecteur
      Selecteur1                           annotation (Placement(
          transformation(extent={{-40,20},{-20,40}}, rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Continu.PT1 PT1_1(
                            Ti=Ti) annotation (Placement(transformation(
            extent={{0,20},{20,40}}, rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal etat
                                        annotation (Placement(transformation(
            extent={{160,20},{180,40}}, rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.LimiteurVitesse
      LimiteurVitesse1(
      dmax=vmax,
      dmin=-vmax,
      Ti=0.1) annotation (Placement(transformation(extent={{40,20},{60,40}},
            rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Continu.PI PI1(
                         Ti=Ti, permanent=true)
      annotation (Placement(transformation(extent={{-20,-40},{0,-20}},
            rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Math.Add Add1(
                        k2=-1) annotation (Placement(transformation(extent={{
              -60,-40},{-40,-20}}, rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Limiteur
      Limiteur1(                         minval=0)
      annotation (Placement(transformation(extent={{80,20},{100,40}},
            rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante
                            Constante1(K=defaut)
      annotation (Placement(transformation(extent={{-100,40},{-80,60}},
            rotation=0)));
  equation
    connect(PT1_1.y, Selecteur1.u1) annotation (Line(points={{21,30},{30,30},
            {30,60},{-50,60},{-50,38},{-41,38}}, color={0,0,255}));
    connect(Selecteur1.y, PT1_1.u)
      annotation (Line(points={{-19,30},{-1,30}}, color={0,0,255}));
    connect(u, Add1.u1)
      annotation (Line(points={{-110,30},{-80,30},{-80,-24},{-61,-24}}));
    connect(Add1.y, PI1.u)
      annotation (Line(points={{-39,-30},{-21,-30}}, color={0,0,255}));
    connect(PI1.y, Selecteur1.u2) annotation (Line(points={{1,-30},{20,-30},{
            20,0},{-60,0},{-60,22},{-41,22}}, color={0,0,255}));
    connect(LimiteurVitesse1.y, Limiteur1.u)
      annotation (Line(points={{61,30},{79,30}}, color={0,0,255}));
    connect(Limiteur1.y, Add1.u2) annotation (Line(points={{101,30},{110,30},
            {110,-60},{-80,-60},{-80,-36},{-61,-36}}, color={0,0,255}));
    connect(PT1_1.y, LimiteurVitesse1.u)
      annotation (Line(points={{21,30},{39,30}}, color={0,0,255}));
    connect(Limiteur1.y, RetardFixe1.u)
      annotation (Line(points={{101,30},{119,30}}, color={0,0,255}));
    connect(RetardFixe1.y, etat)
      annotation (Line(points={{141,30},{170,30}}, color={0,0,255}));
    connect(RetardFixe1.y, Cmd) annotation (Line(points={{141,30},{150,30},{
            150,-80},{30,-80},{30,-110}}, color={0,0,255}));
    connect(Constante1.yL, Selecteur1.uCond)
      annotation (Line(points={{-79,50},{-60,50},{-60,30},{-41,30}}));
    annotation (
      Diagram(coordinateSystem(
          preserveAspectRatio=false,
          preserveOrientation=false,
          extent={{-100,-100},{160,160}},
          grid={2,2},
          initialScale=0), graphics),
      Window(
        x=0.3,
        y=0.25,
        width=0.65,
        height=0.64),
      Icon(coordinateSystem(
          preserveAspectRatio=false,
          preserveOrientation=false,
          extent={{-100,-100},{160,160}},
          grid={2,2},
          initialScale=0), graphics={
          Rectangle(extent={{-100,160},{160,-100}}),
          Text(extent={{-120,214},{180,174}}, textString=
                                                  "%name"),
          Line(points={{30,-30},{30,40},{30,60}}),
          Polygon(
            points={{30,-30},{140,20},{140,-80},{30,-30}},
            lineColor={28,108,200},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{30,-30},{-80,20},{-80,-80},{30,-30}},
            lineColor={28,108,200},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{140,80},{-80,80},{-78,92},{-72,102},{-70,104},{-66,108},
                {-58,114},{-48,120},{-38,124},{-28,128},{-20,130},{-10,132},{
                0,134},{20,136},{40,136},{60,134},{80,130},{98,124},{108,120},
                {118,114},{126,108},{132,102},{138,92},{140,84},{140,80}},
            lineColor={28,108,200},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-30,80},{92,80},{30,-30},{-30,80}},
            lineColor={28,108,200},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid)}),
      Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
"));
  end VanneReglante;

  block VanneTOR
    parameter Integer delaiOuverture=1 "Délai d'ouverture de la vanne";
    parameter Boolean defaut=false "Défaut vanne";

    ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical uL
                                       annotation (Placement(transformation(
            extent={{-120,20},{-100,40}}, rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical etatE
                                          annotation (Placement(
          transformation(extent={{160,20},{180,40}}, rotation=0)));
    BFE.Logique.TEX TEX1(   T=delaiOuverture) annotation (Placement(
          transformation(extent={{0,0},{20,20}}, rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical Cmd
      annotation (Placement(transformation(
          origin={30,-110},
          extent={{10,-10},{-10,10}},
          rotation=90)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante Defaut(
                                   K=defaut)
      annotation (Placement(transformation(extent={{-40,60},{-20,80}},
            rotation=0)));
    ThermoSysPro.InstrumentationAndControl.Blocks.Logique.NONL NONL1
                             annotation (Placement(transformation(extent={{0,
              60},{20,80}}, rotation=0)));
    BFE.Logique.ETL ETL1    annotation (Placement(transformation(extent={{60,
              40},{80,60}}, rotation=0)));
  equation
    connect(uL, TEX1.uL) annotation (Line(points={{-110,30},{-10,30},{-10,10},
            {-1,10}}));
    connect(Defaut.yL, NONL1.uL) annotation (Line(points={{-19,70},{-1,70}}));
    connect(NONL1.yL, ETL1.uL1)
      annotation (Line(points={{21,70},{40,70},{40,56},{59,56}}));
    connect(TEX1.yL, ETL1.uL2)
      annotation (Line(points={{21,10},{40,10},{40,44},{59,44}}));
    connect(ETL1.yL, etatE)
      annotation (Line(points={{81,50},{120,50},{120,30},{170,30}}));
    connect(ETL1.yL, Cmd)
      annotation (Line(points={{81,50},{120,50},{120,-60},{30,-60},{30,-110}}));
    connect(uL, TEX1.uInit)
      annotation (Line(points={{-110,30},{-10,30},{-10,-10},{10,-10},{10,-1}}));
    annotation (
      Diagram(coordinateSystem(
          preserveAspectRatio=false,
          preserveOrientation=false,
          extent={{-100,-100},{160,160}},
          grid={2,2},
          initialScale=0), graphics),
      Window(
        x=0.08,
        y=0.21,
        width=0.65,
        height=0.64),
      Icon(coordinateSystem(
          preserveAspectRatio=false,
          preserveOrientation=false,
          extent={{-100,-100},{160,160}},
          grid={2,2},
          initialScale=0), graphics={
          Rectangle(extent={{-100,160},{160,-100}}),
          Text(extent={{-120,214},{180,174}}, textString=
                                                  "%name"),
          Line(points={{30,-30},{30,40},{30,60}}),
          Polygon(
            points={{30,-30},{140,20},{140,-80},{30,-30}},
            lineColor={28,108,200},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{30,-30},{-80,20},{-80,-80},{30,-30}},
            lineColor={28,108,200},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{140,60},{-80,60},{-78,72},{-72,82},{-70,84},{-66,88},{
                -58,94},{-48,100},{-38,104},{-28,108},{-20,110},{-10,112},{0,
                114},{20,116},{40,116},{60,114},{80,110},{98,104},{108,100},{
                118,94},{126,88},{132,82},{138,72},{140,64},{140,60}},
            lineColor={28,108,200},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid)}),
      Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
"));
  end VanneTOR;
annotation (
  Window(
    x=0.05,
    y=0.26,
    width=0.25,
    height=0.25,
    library=1,
    autolayout=1),
  Icon(coordinateSystem(
        preserveAspectRatio=false,
        preserveOrientation=false,
        extent={{0,0},{312,210}},
        grid={2,2},
        initialScale=0), graphics={
        Rectangle(
          extent={{-100,-100},{80,50}},
          lineColor={28,108,200},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-100,50},{-80,70},{100,70},{80,50},{-100,50}},
          lineColor={28,108,200},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{100,70},{100,-80},{80,-100},{80,50},{100,70}},
          lineColor={28,108,200},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-120,135},{120,70}},
          lineColor={255,0,0},
          textString=
             "%name"),
        Text(
          extent={{-90,40},{70,10}},
          lineColor={160,160,164},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid,
          textString=
             "Library"),
        Rectangle(extent={{-32,-6},{16,-35}}, lineColor={0,0,0}),
        Rectangle(extent={{-32,-56},{16,-85}}, lineColor={0,0,0}),
        Line(points={{16,-20},{49,-20},{49,-71},{16,-71}}, color={0,0,0}),
        Line(points={{-32,-72},{-64,-72},{-64,-21},{-32,-21}}, color={0,0,0}),
        Polygon(
          points={{16,-71},{29,-67},{29,-74},{16,-71}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-32,-21},{-46,-17},{-46,-25},{-32,-21}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid)}),
  Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
"));

end PO;
