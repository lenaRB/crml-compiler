within CRML_test.Spec_doc.BooleanAccumulation_no_ext;
model BooleanAccumulation_no_ext
  import CRML.ETL.Types.Boolean4;
  CRML.ETL.Types.Boolean4 b_true = Boolean4.true4;
  CRML.ETL.Types.Boolean4 b_false = Boolean4.false4;
  CRML.ETL.Types.Boolean4 b_undecided = Boolean4.undecided;
  CRML.ETL.Types.Boolean4 b_undefined = Boolean4.undefined;
  CRML.ETL.Types.Boolean4 b_true_accumulates_true;
  CRML.ETL.Types.Boolean4 b_true_accumulates_false;
  CRML.ETL.Types.Boolean4 b_true_accumulates_undecided;
  CRML.ETL.Types.Boolean4 b_true_accumulates_undefined;
  CRML.ETL.Types.Boolean4 b_false_accumulates_true;
  CRML.ETL.Types.Boolean4 b_false_accumulates_false;
  CRML.ETL.Types.Boolean4 b_false_accumulates_undecided;
  CRML.ETL.Types.Boolean4 b_false_accumulates_undefined;
  CRML.ETL.Types.Boolean4 b_undecided_accumulates_true;
  CRML.ETL.Types.Boolean4 b_undecided_accumulates_false;
  CRML.ETL.Types.Boolean4 b_undecided_accumulates_undecided;
  CRML.ETL.Types.Boolean4 b_undecided_accumulates_undefined;
  CRML.ETL.Types.Boolean4 b_undefined_accumulates_true;
  CRML.ETL.Types.Boolean4 b_undefined_accumulates_false;
  CRML.ETL.Types.Boolean4 b_undefined_accumulates_undecided;
  CRML.ETL.Types.Boolean4 b_undefined_accumulates_undefined;
equation
  b_true_accumulates_true = CRML.ETL.Evaluator.TemporalOperators.add4(b_true, b_true);
  b_true_accumulates_false = CRML.ETL.Evaluator.TemporalOperators.add4(b_true, b_false);
  b_true_accumulates_undecided = CRML.ETL.Evaluator.TemporalOperators.add4(b_true, b_undecided);
  b_true_accumulates_undefined = CRML.ETL.Evaluator.TemporalOperators.add4(b_true, b_undefined);

  b_false_accumulates_true = CRML.ETL.Evaluator.TemporalOperators.add4(b_false, b_true);
  b_false_accumulates_false = CRML.ETL.Evaluator.TemporalOperators.add4(b_false, b_false);
  b_false_accumulates_undecided = CRML.ETL.Evaluator.TemporalOperators.add4(b_false, b_undecided);
  b_false_accumulates_undefined = CRML.ETL.Evaluator.TemporalOperators.add4(b_false, b_undefined);

  b_undecided_accumulates_true = CRML.ETL.Evaluator.TemporalOperators.add4(b_undecided, b_true);
  b_undecided_accumulates_false = CRML.ETL.Evaluator.TemporalOperators.add4(b_undecided, b_false);
  b_undecided_accumulates_undecided = CRML.ETL.Evaluator.TemporalOperators.add4(b_undecided, b_undecided);
  b_undecided_accumulates_undefined = CRML.ETL.Evaluator.TemporalOperators.add4(b_undecided, b_undefined);

  b_undefined_accumulates_true = CRML.ETL.Evaluator.TemporalOperators.add4(b_undefined, b_true);
  b_undefined_accumulates_false = CRML.ETL.Evaluator.TemporalOperators.add4(b_undefined, b_false);
  b_undefined_accumulates_undecided = CRML.ETL.Evaluator.TemporalOperators.add4(b_undefined, b_undecided);
  b_undefined_accumulates_undefined = CRML.ETL.Evaluator.TemporalOperators.add4(b_undefined, b_undefined);

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BooleanAccumulation_no_ext;
