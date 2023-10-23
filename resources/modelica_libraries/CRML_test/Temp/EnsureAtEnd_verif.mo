within CRML_test.Temp;
model EnsureAtEnd_verif
  EnsureAtEnd req
    annotation (Placement(transformation(extent={{0,-20},{60,40}})));
  ETL.EnsureAtEnd_externals externals
    annotation (Placement(transformation(extent={{-80,-20},{-20,40}})));
equation
  // Bindings
  req.e1 = externals.event1;
  req.e2 = externals.event2;
  req.u = externals.u;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Ellipse(lineColor = {75,138,73},
                fillColor={255,255,255},
                fillPattern = FillPattern.Solid,
                extent = {{-100,-100},{100,100}}),
        Polygon(lineColor = {0,0,255},
                fillColor = {75,138,73},
                pattern = LinePattern.None,
                fillPattern = FillPattern.Solid,
                points = {{-36,60},{64,0},{-36,-60},{-36,60}})}), Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    experiment(StopTime=14));
end EnsureAtEnd_verif;
