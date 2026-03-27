within cooling_system.Verification.Scenarios.Connector;
block BooleanExpression
  "Set output signal to a time varying Boolean expression"

  Boolean y=false "Value of Boolean output";
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical yL
    annotation (Placement(transformation(extent={{100,-10},{120,10}}),
        iconTransformation(extent={{100,-10},{120,10}})));
equation
  yL.signal = y;

    annotation (Dialog(group="Time varying output signal"), Placement(
        transformation(extent={{100,-10},{120,10}}),
        iconTransformation(extent={{100,-10},{120,10}})),
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
          textColor={0,0,255})}),           Documentation(info="<html>
<p>
The (time varying) Boolean output signal of this block can be defined in its
parameter menu via variable <strong>y</strong>. The purpose is to support the
easy definition of Boolean expressions in a block diagram. For example,
in the y-menu the definition \"time &gt;= 1 and time &lt;= 2\" can be given in order
to define that the output signal is <strong>true</strong> in the time interval
1 &le; time &le; 2 and otherwise it is <strong>false</strong>.
Note, that \"time\" is a built-in variable that is always
accessible and represents the \"model time\" and that
variable <strong>y</strong> is both a variable and a connector.
</p>
</html>"));
end BooleanExpression;
