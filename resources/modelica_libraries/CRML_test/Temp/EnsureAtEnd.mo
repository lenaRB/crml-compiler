within CRML_test.Temp;
model EnsureAtEnd
  CRML.ETL.TimeLocators.Periods timePeriod(leftBoundaryIncluded=false,
      rightBoundaryIncluded=false)
    annotation (Placement(transformation(extent={{-20,40},{0,60}})));
  CRML.ETL.Requirements.CheckAtEnd ensure
    annotation (Placement(transformation(extent={{-20,-40},{0,-20}})));
  CRML.ETL.Connectors.Boolean4Input e1
    annotation (Placement(transformation(extent={{-120,50},{-100,70}})));
  CRML.ETL.Connectors.Boolean4Input e2
    annotation (Placement(transformation(extent={{-120,10},{-100,30}})));
  CRML.ETL.Connectors.Boolean4Input u
    annotation (Placement(transformation(extent={{-120,-40},{-100,-20}})));
  CRML.ETL.Connectors.Boolean4Output y
    annotation (Placement(transformation(extent={{100,-40},{120,-20}})));
equation
  connect(timePeriod.y, ensure.tl)
    annotation (Line(points={{-10,40},{-10,-20},{-10,-20}}, color={0,0,255}));
  connect(u, ensure.u)
    annotation (Line(points={{-110,-30},{-21,-30}}, color={162,29,33}));
  connect(e2, timePeriod.u2) annotation (Line(points={{-110,20},{-66,20},{-66,
          42},{-21,42}}, color={162,29,33}));
  connect(e1, timePeriod.u1) annotation (Line(points={{-110,60},{-66,60},{-66,
          50},{-21,50}}, color={162,29,33}));
  connect(ensure.y, y)
    annotation (Line(points={{1,-30},{110,-30}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={Text(
          extent={{-28,-8},{28,24}},
          lineColor={28,108,200},
          textString="%name"), Rectangle(extent={{-100,100},{100,-100}},
            lineColor={28,108,200})}),                            Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    experiment(StopTime=14));
end EnsureAtEnd;
