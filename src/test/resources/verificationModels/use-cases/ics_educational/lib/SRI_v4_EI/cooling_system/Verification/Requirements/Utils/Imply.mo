within cooling_system.Verification.Requirements.Utils;
block Imply "Logical 'imply': y = (u1 => u2)"
  extends Modelica.Blocks.Interfaces.partialBooleanSI2SO;
equation
  y = u2 or not u1;
  annotation (
    defaultComponentName="imply1",
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={Text(
          extent={{-90,40},{90,-40}},
          textString="=>",
          textColor={0,0,0})}),
    Documentation(info="<html>
<p>
The output is <strong>true</strong> if at least one input is <strong>true</strong>, otherwise
the output is <strong>false</strong>.
</p>
</html>"));
end Imply;
