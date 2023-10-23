within CRML_test.ETL.wip_Inside;
partial model Inside
  Utilities.Boolean4Connector b1
    annotation (Placement(transformation(extent={{-120,40},{-100,20}})));
  Utilities.ClockConnector    C1
    annotation (Placement(transformation(extent={{-120,-20},{-100,-40}})));
  Utilities.ClockConnector c_filtered_ticks_of_c1_inside_p1
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  CRML.ETL.TimeLocators.Periods P1
    annotation (Placement(transformation(extent={{-20,20},{0,40}})));
  CRML.Blocks.Logical4.Not4 not4_1
    annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
equation
  connect(b1, P1.u1)
    annotation (Line(points={{-110,30},{-21,30}}, color={0,0,0}));
  connect(not4_1.y, P1.u2) annotation (Line(points={{-39,10},{-30,10},{-30,22},
          {-21,22}}, color={162,29,33}));
  connect(not4_1.u, b1) annotation (Line(points={{-61,10},{-82,10},{-82,30},{
          -110,30}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Inside;
