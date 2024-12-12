within CRML_test.FORML.AfterUntil;
model AfterUntil_verif
  AfterUntil_externals externals
    annotation (Placement(transformation(extent={{-200,0},{-140,60}})));
  AfterUntil afterUntil
    annotation (Placement(transformation(extent={{0,0},{20,20}})));
equation
  // Bindings
  externals.ck1 =afterUntil.ck1;
  externals.ck2 =afterUntil.ck2;
  annotation (Icon(graphics={
        Ellipse(lineColor = {75,138,73},
                fillColor={255,255,255},
                fillPattern = FillPattern.Solid,
                extent={{-100,-100},{100,100}}),
        Polygon(lineColor = {0,0,255},
                fillColor = {75,138,73},
                pattern = LinePattern.None,
                fillPattern = FillPattern.Solid,
                points={{-36,60},{64,0},{-36,-60},{-36,60}})}), experiment(
      StopTime=20,
      __Dymola_fixedstepsize=0.1,
      __Dymola_Algorithm="Dassl"));
end AfterUntil_verif;
