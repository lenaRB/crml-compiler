within cooling_system.Verification.Scenarios.Connector;
block RealExpression
  "Set output signal to a time varying Real expression"

  Real y=0.0 "Value of Real output";

  ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal yR
  annotation (Placement(transformation(extent={{100,-10},{120,10}})));

equation
  yR.signal = y;
  annotation (Dialog(group="Time varying output signal"),
  Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}}), graphics={
        Rectangle(
          extent={{-100,40},{100,-40}},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid,
          borderPattern=BorderPattern.Raised),
        Text(
          extent={{-96,15},{96,-15}},
          textString="%y",
          textColor={0,0,0}),
        Text(
          extent={{-150,90},{150,50}},
          textString="%name",
          textColor={0,0,255})}), Documentation(info="<html>
<p>
The (time varying) Real output signal of this block can be defined in its
parameter menu via variable <strong>y</strong>. The purpose is to support the
easy definition of Real expressions in a block diagram. For example,
in the y-menu the definition \"if time &lt; 1 then 0 else 1\" can be given in order
to define that the output signal is one, if time &ge; 1 and otherwise
it is zero. Note, that \"time\" is a built-in variable that is always
accessible and represents the \"model time\" and that
variable <strong>y</strong> is both a variable and a connector.
</p>
</html>"));
end RealExpression;
