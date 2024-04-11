within CRML_test.ETL.BecomesTrueInside;
model BecomesTrueInside_externals
  CRML.ETL.Connectors.Boolean4Output b1
    annotation (Placement(transformation(extent={{100,30},{120,50}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{-4,36},{4,44}})));
public
  CRML.Blocks.Logical.BooleanTable booleanTable_b1(
    y0=false,
    option_width=false,
    instant={2,5,7.5,9})
    annotation (Placement(transformation(extent={{-60,30},{-40,50}})));
  CRML.Blocks.Logical.BooleanTable booleanTable_b2(
    y0=false,
    option_width=false,
    instant={3.5,4.5})
    annotation (Placement(transformation(extent={{-60,-50},{-40,-30}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2
    annotation (Placement(transformation(extent={{-4,-44},{4,-36}})));
  CRML.ETL.Connectors.Boolean4Output b2
    annotation (Placement(transformation(extent={{100,-50},{120,-30}})));
equation
  connect(booleanToBoolean4_1.y, b1)
    annotation (Line(points={{4.4,40},{110,40}},
                                               color={162,29,33}));
  connect(booleanTable_b1.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-39,40},{-4.4,40}}, color={217,67,180}));
  connect(booleanTable_b2.y, booleanToBoolean4_2.u)
    annotation (Line(points={{-39,-40},{-4.4,-40}}, color={217,67,180}));
  connect(booleanToBoolean4_2.y, b2)
    annotation (Line(points={{4.4,-40},{110,-40}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BecomesTrueInside_externals;
