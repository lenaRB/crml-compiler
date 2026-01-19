within BFE.Logique;
block TEX "Temporisation à la commande maintenue à l'excitation"
  parameter Real T=5 "Durée de la temporisation (s)";

protected
  Real trans(start=Modelica.Constants.inf) "Instant de l'excitation (s)";

public
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical uL
                                          annotation (Placement(transformation(
          extent={{-120,-10},{-100,10}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical uInit
    annotation (Placement(transformation(
        origin={0,-110},
        extent={{-10,-10},{10,10}},
        rotation=90)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical yL
                                           annotation (Placement(transformation(
          extent={{100,-10},{120,10}}, rotation=0)));
algorithm

  when initial() then
    yL.signal := uInit.signal;
  end when;

  when not (uL.signal) then
    yL.signal := false;
    trans := Modelica.Constants.inf;
  end when;

  when (uL.signal) then
    trans := time + T;
  end when;

  when (time >= trans) then
    yL.signal := true;
  end when;

equation

  if (cardinality(uInit) == 0) then
    uInit.signal = uL.signal;
  end if;

  annotation (
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        grid={2,2}), graphics),
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
        Text(extent={{-86,52},{-34,20}}, textString=
                                             "%T"),
        Line(points={{-60,20},{-60,0},{60,0},{60,20}}),
        Text(extent={{44,52},{70,20}}, textString=
                                           "0"),
        Text(extent={{-150,150},{150,110}}, textString=
                                                "%name")}),
    Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2010</b></p>
</HTML>
<html>
<p><b>Version 1.6</b></p>
</HTML>
"));
end TEX;
