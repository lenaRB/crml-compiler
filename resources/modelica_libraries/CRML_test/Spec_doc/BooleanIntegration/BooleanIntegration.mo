within CRML_test.Spec_doc.BooleanIntegration;
partial model BooleanIntegration
  Utilities.Boolean4Connector a
    annotation (Placement(transformation(extent={{-120,40},{-100,20}})));
  Utilities.Boolean4Connector b_integration
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  Utilities.TimeLocatorConnector       P
    annotation (Placement(transformation(extent={{-10,120},{10,100}})));
// protected
//     parameter Integer N=CRML.ETL.Types.nMaxOverlap;
public
  CRML.ETL.Evaluator.Integrate boolean4Integrator
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  CRML.Blocks.Logical4.Boolean4Constant boolean4Constant(K=CRML.ETL.Types.Boolean4.true4)
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
equation
  b_integration = CRML.Blocks.Logical4.not4(a);
  connect(boolean4Integrator.u, a) annotation (Line(points={{-11,0},{-60,0},{-60,
          30},{-110,30}}, color={162,29,33}));
  connect(P, boolean4Integrator.tl)
    annotation (Line(points={{0,110},{0,10}}, color={0,0,255}));
  connect(boolean4Integrator.y, b_integration) annotation (Line(points={{11,0},
          {64,0},{64,0},{110,0}}, color={162,29,33}));
  connect(boolean4Integrator.a, boolean4Constant.y) annotation (Line(points={{
          -11,8},{-26,8},{-26,50},{-39,50}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BooleanIntegration;
