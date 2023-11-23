within CRML_test.Spec_doc.PeriodConstructors;
model PeriodConstructors_verif
  extends PeriodConstructors;
  PeriodConstructors_externals externals
    annotation (Placement(transformation(extent={{-200,0},{-140,60}})));
  CRML.TimeLocators.Attributes.PeriodsStart periodsStart_P1
    annotation (Placement(transformation(extent={{144,20},{152,28}})));
  CRML.TimeLocators.Attributes.PeriodsEnd periodsEnd_P1
    annotation (Placement(transformation(extent={{144,2},{152,10}})));
  CRML.Blocks.Events.ShowEvent showEvent_P1_start
    annotation (Placement(transformation(extent={{170,20},{178,28}})));
  CRML.Blocks.Events.ShowEvent showEvent_P1_end
    annotation (Placement(transformation(extent={{170,2},{178,10}})));
  CRML.TimeLocators.Attributes.PeriodsStart periodsStart_P2
    annotation (Placement(transformation(extent={{144,-22},{152,-14}})));
  CRML.Blocks.Events.ShowEvent showEvent_P2_start
    annotation (Placement(transformation(extent={{170,-22},{178,-14}})));
  CRML.TimeLocators.Attributes.PeriodsEnd periodsEnd_P2
    annotation (Placement(transformation(extent={{144,-40},{152,-32}})));
  CRML.Blocks.Events.ShowEvent showEvent_P2_end
    annotation (Placement(transformation(extent={{170,-40},{178,-32}})));
  CRML.TimeLocators.Attributes.PeriodsStart periodsStart_P3
    annotation (Placement(transformation(extent={{144,-60},{152,-52}})));
  CRML.Blocks.Events.ShowEvent showEvent_P3_start
    annotation (Placement(transformation(extent={{170,-60},{178,-52}})));
  CRML.TimeLocators.Attributes.PeriodsEnd periodsEnd_P3
    annotation (Placement(transformation(extent={{144,-78},{152,-70}})));
  CRML.Blocks.Events.ShowEvent showEvent_P3_end
    annotation (Placement(transformation(extent={{170,-78},{178,-70}})));
  CRML.TimeLocators.Attributes.PeriodsStart periodsStart_P4
    annotation (Placement(transformation(extent={{144,-100},{152,-92}})));
  CRML.Blocks.Events.ShowEvent showEvent_P4_start
    annotation (Placement(transformation(extent={{170,-100},{178,-92}})));
  CRML.TimeLocators.Attributes.PeriodsEnd periodsEnd_P4
    annotation (Placement(transformation(extent={{144,-118},{152,-110}})));
  CRML.Blocks.Events.ShowEvent showEvent_P4_end
    annotation (Placement(transformation(extent={{170,-118},{178,-110}})));
equation
  // Bindings
  e1 = externals.e1;
  e2 = externals.e2;
  connect(periodsStart_P1.y, showEvent_P1_start.u)
    annotation (Line(points={{152.4,24},{169.6,24}}, color={217,67,180}));
  connect(periodsEnd_P1.y, showEvent_P1_end.u)
    annotation (Line(points={{152.4,6},{169.6,6}}, color={217,67,180}));
  connect(P1, periodsStart_P1.tl) annotation (Line(points={{110,30},{130,30},{
          130,28},{148,28}}, color={0,0,255}));
  connect(P1, periodsEnd_P1.tl) annotation (Line(points={{110,30},{129,30},{129,
          10},{148,10}}, color={0,0,255}));
  connect(periodsStart_P2.y, showEvent_P2_start.u) annotation (Line(points={{
          152.4,-18},{162.2,-18},{162.2,-18},{169.6,-18}}, color={217,67,180}));
  connect(periodsEnd_P2.y, showEvent_P2_end.u)
    annotation (Line(points={{152.4,-36},{169.6,-36}}, color={217,67,180}));
  connect(P2, periodsStart_P2.tl) annotation (Line(points={{110,-10},{130,-10},
          {130,-14},{148,-14}}, color={0,0,255}));
  connect(P2, periodsEnd_P2.tl) annotation (Line(points={{110,-10},{130,-10},{
          130,-32},{148,-32}}, color={0,0,255}));
  connect(periodsStart_P3.y, showEvent_P3_start.u)
    annotation (Line(points={{152.4,-56},{169.6,-56}}, color={217,67,180}));
  connect(periodsEnd_P3.y, showEvent_P3_end.u)
    annotation (Line(points={{152.4,-74},{169.6,-74}}, color={217,67,180}));
  connect(periodsStart_P4.y, showEvent_P4_start.u)
    annotation (Line(points={{152.4,-96},{169.6,-96}}, color={217,67,180}));
  connect(periodsEnd_P4.y, showEvent_P4_end.u)
    annotation (Line(points={{152.4,-114},{169.6,-114}}, color={217,67,180}));
  connect(P3, periodsStart_P3.tl) annotation (Line(points={{110,-50},{130,-50},
          {130,-52},{148,-52}}, color={0,0,255}));
  connect(P3, periodsEnd_P3.tl) annotation (Line(points={{110,-50},{130,-50},{
          130,-70},{148,-70}}, color={0,0,255}));
  connect(P4, periodsStart_P4.tl) annotation (Line(points={{110,-90},{130,-90},
          {130,-92},{148,-92}}, color={0,0,255}));
  connect(P4, periodsEnd_P4.tl) annotation (Line(points={{110,-90},{130,-90},{
          130,-110},{148,-110}}, color={0,0,255}));
    annotation (Placement(transformation(extent={{0,-20},{60,40}})),
              Icon(coordinateSystem(preserveAspectRatio=false,
        extent={{-200,-100},{160,100}},
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
        extent={{-200,-100},{160,100}},
        initialScale=0.1)),
    experiment(StopTime=14));
end PeriodConstructors_verif;
