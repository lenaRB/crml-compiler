within CRML_test.ETL.CountInside;
model CountInside_externals

public
  CRML.Blocks.Logical.BooleanTable bool2(
    y0=false,
    option_width=false,
    instant={2,3,3.5,4.5,6,7.5})
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  CRML.Blocks.Logical.BooleanTable bool1(
    y0=false,
    option_width=false,
    instant={2.5,5})
    annotation (Placement(transformation(extent={{-60,-60},{-40,-40}})));
  CRML.ETL.Connectors.BooleanOutput     b1
    annotation (Placement(transformation(extent={{100,-80},{120,-60}})));
  CRML.Blocks.Events.ShowEvent showEvent_b2
    annotation (Placement(transformation(extent={{16,56},{24,64}})));
  CRML.ETL.Connectors.BooleanOutput b2
    annotation (Placement(transformation(extent={{100,0},{120,20}})));
  CRML.Blocks.Events.ShowEvent showEvent_b1
    annotation (Placement(transformation(extent={{16,-44},{24,-36}})));
equation
  connect(showEvent_b2.u, bool2.y) annotation (Line(points={{15.6,60},{-10,60},
          {-10,50},{-39,50}}, color={217,67,180}));
  connect(bool1.y, b1) annotation (Line(points={{-39,-50},{36,-50},{36,-70},{
          110,-70}}, color={217,67,180}));
  connect(bool1.y, showEvent_b1.u) annotation (Line(points={{-39,-50},{-12,-50},
          {-12,-40},{15.6,-40}}, color={217,67,180}));
  connect(b2, bool2.y) annotation (Line(points={{110,10},{36,10},{36,50},{-39,
          50}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end CountInside_externals;
