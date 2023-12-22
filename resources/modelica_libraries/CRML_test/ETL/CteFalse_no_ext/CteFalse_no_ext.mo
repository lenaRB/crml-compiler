within CRML_test.ETL.CteFalse_no_ext;
model CteFalse_no_ext
  import CRML;
  CRML.ETL.Types.Boolean4 b_true = CRML.ETL.Types.Boolean4.true4;
  CRML.ETL.Types.Boolean4 b_false = CRML.ETL.Types.Boolean4.false4;
  CRML.ETL.Types.Boolean4 b_undecided = CRML.ETL.Types.Boolean4.undecided;
  CRML.ETL.Types.Boolean4 b_undefined = CRML.ETL.Types.Boolean4.undefined;
  CRML.ETL.Types.Boolean4 b_cte_false_true;
  CRML.ETL.Types.Boolean4 b_cte_false_false;
  CRML.ETL.Types.Boolean4 b_cte_false_undecided;
  CRML.ETL.Types.Boolean4 b_cte_false_undefined;
  CRML.Blocks.Logical4.Boolean4Constant cte_false(K=CRML.ETL.Types.Boolean4.false4);
equation
   b_cte_false_true = cte_false.y;
   b_cte_false_false = cte_false.y;
   b_cte_false_undecided = cte_false.y;
   b_cte_false_undefined = cte_false.y;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end CteFalse_no_ext;
