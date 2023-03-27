within CRML_test.Spec_doc.ClockConstructors;
model ClockConstructors_externals
  CRML.Blocks.Logical.BooleanPulse      boolean4Constant1
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  CRML.ETL.Connectors.BooleanOutput b
    annotation (Placement(transformation(extent={{100,40},{120,60}})));
equation
  connect(boolean4Constant1.y, b)
    annotation (Line(points={{-39,50},{110,50}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ClockConstructors_externals;
