within CRML_test.Spec_doc.BooleanNegation;
partial model BooleanNegation
  Utilities.Boolean4Connector b1
    annotation (Placement(transformation(extent={{-120,40},{-100,20}})));
  Utilities.Boolean4Connector not_b1
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
equation
  not_b1 = CRML.Blocks.Logical4.not4(b1);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BooleanNegation;
