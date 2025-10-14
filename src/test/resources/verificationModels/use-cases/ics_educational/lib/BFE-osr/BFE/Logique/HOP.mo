within BFE.Logique;
block HOP "Mémoire hors prioritaire"
protected
  Boolean xL;

public
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical E
                                         annotation (Placement(transformation(
          extent={{-120,50},{-100,70}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical HP
                                          annotation (Placement(transformation(
          extent={{-120,-70},{-100,-50}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical yL
                                           annotation (Placement(transformation(
          extent={{100,-10},{120,10}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical uInit
    annotation (Placement(transformation(
        origin={0,-110},
        extent={{-10,-10},{10,10}},
        rotation=90)));
algorithm

  when initial() then
    xL := uInit.signal;
  end when;

  if HP.signal then
    xL := false;
  elseif E.signal then
    xL := true;
  end if;

  yL.signal := xL;

equation

  if (cardinality(uInit) == 0) then
    uInit.signal = E.signal;
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
        Text(extent={{-50,74},{44,18}}, textString=
                                            "E"),
        Line(points={{-100,0},{100,0}}),
        Text(extent={{-48,-20},{50,-84}}, textString=
                                              "HP"),
        Text(extent={{-150,150},{150,110}}, textString=
                                                "%name")}),
    Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2010</b></p>
</HTML>
<html>
<p><b>Version 1.6</b></p>
</HTML>
"));
end HOP;
