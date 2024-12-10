within CRML_test.FORML.FromUntil;
model FromUntil_verif2

  FromUntil_externals externals
    annotation (Placement(transformation(extent={{-200,0},{-140,60}})));
  FromUntil2 fromUntil2
    annotation (Placement(transformation(extent={{-26,16},{-6,36}})));
equation
  // Bindings
  externals.ck1 =fromUntil2.ck1;
  externals.ck2 =fromUntil2.ck2;
  annotation (Icon(graphics={
        Ellipse(lineColor = {75,138,73},
                fillColor={255,255,255},
                fillPattern = FillPattern.Solid,
                extent={{-100,-102},{100,98}}),
        Polygon(lineColor = {0,0,255},
                fillColor = {75,138,73},
                pattern = LinePattern.None,
                fillPattern = FillPattern.Solid,
                points={{-36,58},{64,-2},{-36,-62},{-36,58}})}));
end FromUntil_verif2;
