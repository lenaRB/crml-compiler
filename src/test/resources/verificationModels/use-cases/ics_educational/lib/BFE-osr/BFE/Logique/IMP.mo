within BFE.Logique;
block IMP "Impulsion monostable monocoup réenclenchable"
  parameter Real T=5 "Durée de l'impulsion (s)";

protected
  Real trans "Instant de la désexcitation (s)";

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
    trans := if uInit.signal then T else 0;
  elsewhen (uL.signal) then
    yL.signal := true;
    trans := time + T;
  end when;

  when (time >= trans) then
    yL.signal := false;
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
        Text(extent={{-36,20},{34,-36}}, textString=
                                             "%T"),
        Line(points={{-80,-40},{-60,-40},{-60,40},{60,40},{60,-40},{80,-40}}),
        Text(extent={{-150,150},{150,110}}, textString=
                                                "%name")}),
    Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2010</b></p>
</HTML>
<html>
<p><b>Version 1.6</b></p>
</HTML>
"));
end IMP;
