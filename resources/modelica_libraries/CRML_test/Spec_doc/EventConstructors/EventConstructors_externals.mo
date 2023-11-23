within CRML_test.Spec_doc.EventConstructors;
model EventConstructors_externals
  CRML.Blocks.Logical.BooleanPulse      boolean4Constant1(period=20, startTime=
        2)
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  CRML.ETL.Connectors.Boolean4Output b
    annotation (Placement(transformation(extent={{100,40},{120,60}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1
    annotation (Placement(transformation(extent={{16,46},{24,54}})));
equation
  connect(boolean4Constant1.y, booleanToBoolean4_1.u)
    annotation (Line(points={{-39,50},{15.6,50}}, color={217,67,180}));
  connect(booleanToBoolean4_1.y, b)
    annotation (Line(points={{24.4,50},{110,50}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end EventConstructors_externals;
