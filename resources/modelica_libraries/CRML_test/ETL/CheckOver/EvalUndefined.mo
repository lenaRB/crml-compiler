within CRML_test.ETL.CheckOver;
block EvalUndefined

  CRML.ETL.Connectors.Boolean4Input u
    annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
  CRML.ETL.Connectors.TimeLocatorInput tl
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
  CRML.ETL.Connectors.Boolean4Output y
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  CRML.ETL.Connectors.Boolean4Input a
    annotation (Placement(transformation(extent={{-120,70},{-100,90}})));
  IntegrateUndefined integrate
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
equation
  connect(u, integrate.u)
    annotation (Line(points={{-110,0},{-40,0},{-40,0},{-11,0}},
                                                color={162,29,33}));
  connect(integrate.y, y)
    annotation (Line(points={{11,0},{110,0}}, color={162,29,33}));
  connect(tl, integrate.tl)
    annotation (Line(points={{0,100},{0,10}}, color={0,0,255}));
  connect(a, integrate.a) annotation (Line(points={{-110,80},{-40,80},{
          -40,8},{-11,8}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                                         Rectangle(
          extent={{-100,100},{100,-100}},
          fillColor={255,213,170},
          lineThickness=5,
          fillPattern=FillPattern.Solid,
          borderPattern=BorderPattern.Raised,
          lineColor={0,0,0}),
      Ellipse(
        extent={{-68,24},{12,-56}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{-66,22},{-46,2}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{-66,-34},{-46,-54}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{-10,20},{10,0}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{-10,-34},{10,-54}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{0,-8},{20,-28}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{-38,32},{-18,12}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{-76,-6},{-56,-26}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{-36,-44},{-16,-64}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{-54,10},{-2,-42}},
        lineColor={95,95,95},
        fillColor={215,215,215},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{14,58},{74,-2}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{12,58},{32,38}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{12,16},{32,-4}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{52,58},{72,38}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{54,20},{74,0}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{60,40},{80,20}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{32,66},{52,46}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{6,38},{26,18}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{36,10},{56,-10}},
        lineColor={95,95,95},
        fillColor={95,95,95},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{24,48},{64,8}},
        lineColor={95,95,95},
        fillColor={215,215,215},
        fillPattern=FillPattern.Solid)}),                        Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end EvalUndefined;
