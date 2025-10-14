within BFE.Logique;
block SEU4 "Seuil logique à quatre entrées"
  parameter Integer m=1 "Nombre d'entrées à valider";

protected
  Integer n;
public
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical uL1
                                           annotation (Placement(transformation(
          extent={{-120,80},{-100,100}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical uL2
                                           annotation (Placement(transformation(
          extent={{-120,20},{-100,40}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical yL
                                           annotation (Placement(transformation(
          extent={{100,-10},{120,10}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical uL3
                                           annotation (Placement(transformation(
          extent={{-120,-40},{-100,-20}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical uL4
    annotation (Placement(transformation(extent={{-120,-100},{-100,-80}},
          rotation=0)));
algorithm
  n := 0;

  if uL1.signal then
    n := n + 1;
  end if;

  if uL2.signal then
    n := n + 1;
  end if;

  if uL3.signal then
    n := n + 1;
  end if;

  if uL4.signal then
    n := n + 1;
  end if;

  yL.signal := (n >= m);
  annotation (
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        grid={2,2}), graphics={
        Rectangle(
          extent={{-100,-100},{100,102}},
          lineColor={0,0,0},
          pattern=LinePattern.Solid,
          lineThickness=0.25,
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid),
        Text(extent={{-54,20},{50,-20}}, textString=
                                             ">= %m"),
        Text(extent={{-150,150},{150,110}}, textString=
                                                "%name")}),
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        grid={2,2}), graphics),
    Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2010</b></p>
</HTML>
<html>
<p><b>ThermoSysPro Version 2.0</b></p>
</HTML>
"));
end SEU4;
