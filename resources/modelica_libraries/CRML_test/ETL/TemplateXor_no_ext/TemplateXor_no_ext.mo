within CRML_test.ETL.TemplateXor_no_ext;
model TemplateXor_no_ext
  import CRML.ETL.Types.Boolean4;
  CRML.ETL.Types.Boolean4 b_true = Boolean4.true4;
  CRML.ETL.Types.Boolean4 b_false = Boolean4.false4;
  CRML.ETL.Types.Boolean4 b_undecided = Boolean4.undecided;
  CRML.ETL.Types.Boolean4 b_undefined = Boolean4.undefined;
  CRML.ETL.Types.Boolean4 b_true_xor_true;
  CRML.ETL.Types.Boolean4 b_true_xor_false;
  CRML.ETL.Types.Boolean4 b_true_xor_undecided;
  CRML.ETL.Types.Boolean4 b_true_xor_undefined;
  CRML.ETL.Types.Boolean4 b_false_xor_true;
  CRML.ETL.Types.Boolean4 b_false_xor_false;
  CRML.ETL.Types.Boolean4 b_false_xor_undecided;
  CRML.ETL.Types.Boolean4 b_false_xor_undefined;
  CRML.ETL.Types.Boolean4 b_undecided_xor_true;
  CRML.ETL.Types.Boolean4 b_undecided_xor_false;
  CRML.ETL.Types.Boolean4 b_undecided_xor_undecided;
  CRML.ETL.Types.Boolean4 b_undecided_xor_undefined;
  CRML.ETL.Types.Boolean4 b_undefined_xor_true;
  CRML.ETL.Types.Boolean4 b_undefined_xor_false;
  CRML.ETL.Types.Boolean4 b_undefined_xor_undecided;
  CRML.ETL.Types.Boolean4 b_undefined_xor_undefined;
equation
  b_true_xor_true = CRML.Blocks.Logical4.xor4(b_true, b_true);
  b_true_xor_false = CRML.Blocks.Logical4.xor4(b_true, b_false);
  b_true_xor_undecided = CRML.Blocks.Logical4.xor4(b_true, b_undecided);
  b_true_xor_undefined = CRML.Blocks.Logical4.xor4(b_true, b_undefined);

  b_false_xor_true = CRML.Blocks.Logical4.xor4(b_false, b_true);
  b_false_xor_false = CRML.Blocks.Logical4.xor4(b_false, b_false);
  b_false_xor_undecided = CRML.Blocks.Logical4.xor4(b_false, b_undecided);
  b_false_xor_undefined = CRML.Blocks.Logical4.xor4(b_false, b_undefined);

  b_undecided_xor_true = CRML.Blocks.Logical4.xor4(b_undecided, b_true);
  b_undecided_xor_false = CRML.Blocks.Logical4.xor4(b_undecided, b_false);
  b_undecided_xor_undecided = CRML.Blocks.Logical4.xor4(b_undecided, b_undecided);
  b_undecided_xor_undefined = CRML.Blocks.Logical4.xor4(b_undecided, b_undefined);

  b_undefined_xor_true = CRML.Blocks.Logical4.xor4(b_undefined, b_true);
  b_undefined_xor_false = CRML.Blocks.Logical4.xor4(b_undefined, b_false);
  b_undefined_xor_undecided = CRML.Blocks.Logical4.xor4(b_undefined, b_undecided);
  b_undefined_xor_undefined = CRML.Blocks.Logical4.xor4(b_undefined, b_undefined);

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end TemplateXor_no_ext;
