within CRML_test.Spec_doc.PeriodConstructors;
partial model PeriodConstructors
  Utilities.Boolean4Connector e1
    annotation (Placement(transformation(extent={{-120,40},{-100,20}})));
  CRML.ETL.Connectors.TimeLocatorOutput[N] P1
    annotation (Placement(transformation(extent={{100,40},{120,20}})));
  Utilities.Boolean4Connector e2
    annotation (Placement(transformation(extent={{-120,-20},{-100,-40}})));
  CRML.ETL.TimeLocators.Periods periods1(leftBoundaryIncluded=true,
      rightBoundaryIncluded=true)
    annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
  CRML.ETL.TimeLocators.Periods periods2(rightBoundaryIncluded=true,
      leftBoundaryIncluded=false)
    annotation (Placement(transformation(extent={{-20,0},{0,20}})));
  CRML.ETL.TimeLocators.Periods periods3(leftBoundaryIncluded=true,
      rightBoundaryIncluded=false)
    annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
  CRML.ETL.TimeLocators.Periods periods4(rightBoundaryIncluded=false,
      leftBoundaryIncluded=false)
    annotation (Placement(transformation(extent={{20,-80},{40,-60}})));
protected
    parameter Integer N=CRML.ETL.Types.nMaxOverlap;
public
  CRML.ETL.Connectors.TimeLocatorOutput[N] P2
    annotation (Placement(transformation(extent={{100,0},{120,-20}})));
  CRML.ETL.Connectors.TimeLocatorOutput[N] P3
    annotation (Placement(transformation(extent={{100,-40},{120,-60}})));
  CRML.ETL.Connectors.TimeLocatorOutput[N] P4
    annotation (Placement(transformation(extent={{100,-80},{120,-100}})));
equation

  connect(periods2.u1, e1) annotation (Line(points={{-21,10},{-36,10},{-36,30},{
          -110,30}}, color={162,29,33}));
  connect(periods1.u1, e1) annotation (Line(points={{-41,50},{-72,50},{-72,30},{
          -110,30}}, color={162,29,33}));
  connect(periods1.u2, e2) annotation (Line(points={{-41,42},{-76,42},{-76,-30},
          {-110,-30}}, color={162,29,33}));
  connect(periods2.u2, e2) annotation (Line(points={{-21,2},{-76,2},{-76,-30},{-110,
          -30}}, color={162,29,33}));
  connect(periods3.u1, e1) annotation (Line(points={{-1,-30},{-36,-30},{-36,30},
          {-110,30}}, color={162,29,33}));
  connect(periods3.u2, e2) annotation (Line(points={{-1,-38},{-76,-38},{-76,-30},
          {-110,-30}}, color={162,29,33}));
  connect(periods4.u1, e1) annotation (Line(points={{19,-70},{-36,-70},{-36,-30},
          {-36,-30},{-36,30},{-110,30}}, color={162,29,33}));
  connect(periods4.u2, e2) annotation (Line(points={{19,-78},{-76,-78},{-76,-30},
          {-110,-30}}, color={162,29,33}));
  connect(P1, periods1.y)
    annotation (Line(points={{110,30},{-30,30},{-30,40}}, color={0,0,255}));
  connect(P2, periods2.y) annotation (Line(points={{110,-10},{50,-10},{50,0},{
          -10,0}}, color={0,0,255}));
  connect(periods3.y, P3) annotation (Line(points={{10,-40},{58,-40},{58,-50},{
          110,-50}}, color={0,0,255}));
  connect(periods4.y, P4) annotation (Line(points={{30,-80},{68,-80},{68,-90},{
          110,-90}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end PeriodConstructors;
