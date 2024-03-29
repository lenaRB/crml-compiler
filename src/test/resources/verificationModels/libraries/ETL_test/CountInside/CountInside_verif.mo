within CRML_test.ETL.CountInside;
model CountInside_verif
  extends CountInside;
  CountInside_externals externals
    annotation (Placement(transformation(extent={{-200,0},{-140,60}})));
  CRML.Blocks.Logical.BooleanConstant booleanConstant(K=false)
    annotation (Placement(transformation(extent={{60,-40},{80,-20}})));
equation
  // Bindings
  b1 = externals.b1;
  b2 = externals.b2;
  connect(booleanConstant.y, eventCounter.reset) annotation (Line(points={{81,
          -30},{82,-30},{82,-11},{84,-11}}, color={217,67,180}));
    annotation (Placement(transformation(extent={{0,-20},{60,40}})),
              Icon(coordinateSystem(preserveAspectRatio=false,
        extent={{-200,-100},{100,100}},
        initialScale=0.1),                                      graphics={
        Ellipse(lineColor = {75,138,73},
                fillColor={255,255,255},
                fillPattern = FillPattern.Solid,
                extent = {{-100,-100},{100,100}}),
        Polygon(lineColor = {0,0,255},
                fillColor = {75,138,73},
                pattern = LinePattern.None,
                fillPattern = FillPattern.Solid,
                points = {{-36,60},{64,0},{-36,-60},{-36,60}})}), Diagram(
        coordinateSystem(preserveAspectRatio=false,
        extent={{-200,-100},{100,100}},
        initialScale=0.1)),
    experiment(StopTime=14));
end CountInside_verif;
