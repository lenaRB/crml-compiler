within CRML_test.Spec_doc.EventConstructors;
partial model EventConstructors
  Utilities.Boolean4Connector b
    annotation (Placement(transformation(extent={{-120,40},{-100,20}})));
  Utilities.BooleanConnector e
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  CRML.Blocks.Events.RisingEdge4 rising1
    annotation (Placement(transformation(extent={{-4,-4},{4,4}})));
  CRML.Blocks.Events.ShowEvent showEvent
    annotation (Placement(transformation(extent={{40,-24},{48,-16}})));
equation

  connect(rising1.u, b) annotation (Line(points={{-4.4,0},{-52.2,0},{-52.2,30},
          {-110,30}}, color={162,29,33}));
  connect(rising1.y, e)
    annotation (Line(points={{4.4,0},{110,0}}, color={217,67,180}));
  connect(showEvent.u, e) annotation (Line(points={{39.6,-20},{26,-20},{26,0},{
          110,0}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end EventConstructors;
