within CRML_test.FORML.AfterFor;
model AfterFor_verif2

  AfterFor_externals externals
    annotation (Placement(transformation(extent={{-200,0},{-140,60}})));
  AfterFor2 afterFor2
    annotation (Placement(transformation(extent={{-26,16},{-6,36}})));
equation
  // Bindings
  externals.ck1 =afterFor2.ck1;
  externals.d1 = afterFor2.d1;
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
end AfterFor_verif2;
