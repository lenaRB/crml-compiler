within CRML_test.ETL.Id_no_ext;
model Id_no_ext
  import CRML.ETL.Types.Boolean4;
  CRML.ETL.Types.Boolean4 b_true = Boolean4.true4;
  CRML.ETL.Types.Boolean4 b_false = Boolean4.false4;
  CRML.ETL.Types.Boolean4 b_undecided = Boolean4.undecided;
  CRML.ETL.Types.Boolean4 b_undefined = Boolean4.undefined;
  CRML.ETL.Types.Boolean4 b_id_true;
  CRML.ETL.Types.Boolean4 b_id_false;
  CRML.ETL.Types.Boolean4 b_id_undecided;
  CRML.ETL.Types.Boolean4 b_id_undefined;
equation
  b_id_true = b_true;
  b_id_false = b_false;
  b_id_undecided = b_undecided;
  b_id_undefined = b_undefined;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Id_no_ext;
