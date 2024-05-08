within CRML_test.FORML.CheckAtEnd;
model CheckAtEnd_verif
  CheckAtEnd_externals externals
    annotation (Placement(transformation(extent={{-200,0},{-140,60}})));
  CRML.Requirements.CheckAtEnd checkAtEnd
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  CRML.ETL.Connectors.Boolean4Output b_check_at_end
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
equation
  // Bindings
  checkAtEnd.u = externals.u;
  checkAtEnd.tl[:] = externals.P1[:];
  connect(checkAtEnd.y, b_check_at_end)
    annotation (Line(points={{-29,0},{110,0}}, color={162,29,33}));
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
end CheckAtEnd_verif;
