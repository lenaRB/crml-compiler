within CRML_test.Spec_doc.BooleanConjunction;
partial model BooleanConjunction
  Utilities.Boolean4Connector b1
    annotation (Placement(transformation(extent={{-120,40},{-100,20}})));
  Utilities.Boolean4Connector b2
    annotation (Placement(transformation(extent={{-120,-20},{-100,-40}})));
  Utilities.Boolean4Connector b_conjunction
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
equation
  b_conjunction = CRML.Blocks.Logical4.and4(b1, b2);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BooleanConjunction;
