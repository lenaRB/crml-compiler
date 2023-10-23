within CRML_test.Spec_doc.BooleanNegation_no_ext;
model BooleanNegation_no_ext
  import CRML.ETL.Types.Boolean4;
  CRML.ETL.Types.Boolean4 b_true = Boolean4.true4;
  CRML.ETL.Types.Boolean4 b_false = Boolean4.false4;
  CRML.ETL.Types.Boolean4 b_undecided = Boolean4.undecided;
  CRML.ETL.Types.Boolean4 b_undefined = Boolean4.undefined;
  CRML.ETL.Types.Boolean4 b_not_true;
  CRML.ETL.Types.Boolean4 b_not_false;
  CRML.ETL.Types.Boolean4 b_not_undecided;
  CRML.ETL.Types.Boolean4 b_not_undefined;
equation
  b_not_true = CRML.Blocks.Logical4.not4(b_true);
  b_not_false = CRML.Blocks.Logical4.not4(b_false);
  b_not_undecided = CRML.Blocks.Logical4.not4(b_undecided);
  b_not_undefined = CRML.Blocks.Logical4.not4(b_undefined);

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BooleanNegation_no_ext;
