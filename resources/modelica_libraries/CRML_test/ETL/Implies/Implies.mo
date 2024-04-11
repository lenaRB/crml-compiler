within CRML_test.ETL.Implies;
partial model Implies
  Utilities.Boolean4Connector b1
    annotation (Placement(transformation(extent={{-120,40},{-100,20}})));
  Utilities.Boolean4Connector b2
    annotation (Placement(transformation(extent={{-120,-20},{-100,-40}})));
  Utilities.Boolean4Connector b1_implies_b2
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
equation
  b1_implies_b2 = CRML.Blocks.Logical4.implies4(b1, b2);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Implies;
