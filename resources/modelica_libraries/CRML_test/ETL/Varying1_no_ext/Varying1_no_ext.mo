within CRML_test.ETL.Varying1_no_ext;
model Varying1_no_ext
  import CRML.ETL.Types.Boolean4;
  CRML.ETL.Types.Boolean4 b_true = Boolean4.true4;
  CRML.ETL.Types.Boolean4 b_false = Boolean4.false4;
  CRML.ETL.Types.Boolean4 b_undecided = Boolean4.undecided;
  CRML.ETL.Types.Boolean4 b_undefined = Boolean4.undefined;
  CRML.ETL.Types.Boolean4 b_varying1_on_id_true;
  CRML.ETL.Types.Boolean4 b_varying1_on_id_false;
  CRML.ETL.Types.Boolean4 b_varying1_on_id_undecided;
  CRML.ETL.Types.Boolean4 b_varying1_on_id_undefined;

  CRML.Blocks.Logical4.Boolean4Constant cte_false(K=CRML.ETL.Types.Boolean4.false4);

equation
  b_varying1_on_id_true = cte_false.y;
  b_varying1_on_id_false = cte_false.y;
  b_varying1_on_id_undecided = cte_false.y;
  b_varying1_on_id_undefined = cte_false.y;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Varying1_no_ext;
