within CRML_test.ETL.CteTrue_no_ext;
model CteTrue_no_ext
  import CRML;
  CRML.ETL.Types.Boolean4 b_true = CRML.ETL.Types.Boolean4.true4;
  CRML.ETL.Types.Boolean4 b_false = CRML.ETL.Types.Boolean4.false4;
  CRML.ETL.Types.Boolean4 b_undecided = CRML.ETL.Types.Boolean4.undecided;
  CRML.ETL.Types.Boolean4 b_undefined = CRML.ETL.Types.Boolean4.undefined;
  CRML.ETL.Types.Boolean4 b_cte_true_true;
  CRML.ETL.Types.Boolean4 b_cte_true_false;
  CRML.ETL.Types.Boolean4 b_cte_true_undecided;
  CRML.ETL.Types.Boolean4 b_cte_true_undefined;
  CRML.Blocks.Logical4.Boolean4Constant cte_true(K=CRML.ETL.Types.Boolean4.true4);
equation
   b_cte_true_true = cte_true.y;
   b_cte_true_false = cte_true.y;
   b_cte_true_undecided = cte_true.y;
   b_cte_true_undefined = cte_true.y;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end CteTrue_no_ext;
