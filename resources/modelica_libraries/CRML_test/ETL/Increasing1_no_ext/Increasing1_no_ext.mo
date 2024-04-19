within CRML_test.ETL.Increasing1_no_ext;
model Increasing1_no_ext
  Integer x1 = 3;
  Integer x2 = 7;
  Integer x3 = 7;

  CRML.ETL.Types.Boolean4 b_increasing1_on_strictly_greater_1;
  CRML.ETL.Types.Boolean4 b_increasing1_on_strictly_greater_2;
  CRML.ETL.Types.Boolean4 b_increasing1_on_greater_or_equal_1;
  CRML.ETL.Types.Boolean4 b_increasing1_on_greater_or_equal_2;
  CRML.ETL.Types.Boolean4 b_increasing1_on_strictly_less_1;
  CRML.ETL.Types.Boolean4 b_increasing1_on_strictly_less_2;
  CRML.ETL.Types.Boolean4 b_increasing1_on_less_or_equal_1;
  CRML.ETL.Types.Boolean4 b_increasing1_on_less_or_equal_2;
  CRML.ETL.Types.Boolean4 b_increasing1_on_equal_1;
  CRML.ETL.Types.Boolean4 b_increasing1_on_equal_2;
  CRML.ETL.Types.Boolean4 b_increasing1_on_different_1;
  CRML.ETL.Types.Boolean4 b_increasing1_on_different_2;

equation
  b_increasing1_on_strictly_greater_1 = CRML.ETL.Types.cvBooleanToBoolean4(x1 > x2);
  b_increasing1_on_strictly_greater_2 = CRML.ETL.Types.cvBooleanToBoolean4(x2 > x1);
  b_increasing1_on_greater_or_equal_1 = CRML.ETL.Types.cvBooleanToBoolean4(x1 >= x2);
  b_increasing1_on_greater_or_equal_2 = CRML.ETL.Types.cvBooleanToBoolean4(x2 >= x1);
  b_increasing1_on_strictly_less_1 = CRML.ETL.Types.cvBooleanToBoolean4(x1 >= x2);
  b_increasing1_on_strictly_less_2 = CRML.ETL.Types.cvBooleanToBoolean4(x2 >= x1);
  b_increasing1_on_less_or_equal_1 = CRML.ETL.Types.cvBooleanToBoolean4(x1 > x2);
  b_increasing1_on_less_or_equal_2 = CRML.ETL.Types.cvBooleanToBoolean4(x2 > x1);
  b_increasing1_on_equal_1 = CRML.ETL.Types.cvBooleanToBoolean4(x1 > x2);
  b_increasing1_on_equal_2 = CRML.ETL.Types.cvBooleanToBoolean4(x2 > x3);
  b_increasing1_on_different_1 = CRML.ETL.Types.cvBooleanToBoolean4(x1 > x2);
  b_increasing1_on_different_2 = CRML.ETL.Types.cvBooleanToBoolean4(x2 > x3);

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Increasing1_no_ext;
