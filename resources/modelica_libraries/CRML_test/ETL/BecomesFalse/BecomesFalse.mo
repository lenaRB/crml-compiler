within CRML_test.ETL.BecomesFalse;
partial model BecomesFalse
  Utilities.Boolean4Connector b1
    annotation (Placement(transformation(extent={{-120,10},{-100,-10}})));
  CRML.ETL.Connectors.ClockOutput
                           c_b1_becomes_false
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  CRML.Blocks.Events.ClockEvent clockEvent
    annotation (Placement(transformation(extent={{-6,-6},{6,6}})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent(x(start=true))
    annotation (Placement(transformation(extent={{-54,-4},{-46,4}})));
  CRML.Blocks.Logical4.Not4 not4_1
    annotation (Placement(transformation(extent={{-88,-10},{-68,10}})));
  CRML.Blocks.Events.ShowEvent showEvent_c_b1_becomes_false
    annotation (Placement(transformation(extent={{60,-56},{68,-48}})));
equation
  connect(clockEvent.y, c_b1_becomes_false) annotation (Line(
      points={{6.6,0},{110,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(clockEvent.u, event4ToEvent.y)
    annotation (Line(points={{-6.6,0},{-45.6,0}}, color={217,67,180}));
  connect(event4ToEvent.u, not4_1.y)
    annotation (Line(points={{-54.4,0},{-67,0}}, color={162,29,33}));
  connect(b1, not4_1.u)
    annotation (Line(points={{-110,0},{-89,0}}, color={0,0,0}));
  connect(showEvent_c_b1_becomes_false.u, event4ToEvent.y) annotation (Line(
        points={{59.6,-52},{-36,-52},{-36,0},{-45.6,0}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(
          extent={{-100,102},{100,-98}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-250,170},{250,110}},
          textString="%name",
          lineColor={0,0,255}),                                              Line(points={{-80,34},
              {-50,34},{-4,34},{-50,34},{-50,34},{52,34}},
                                   color={0,140,72},
          pattern=LinePattern.Dot),
        Line(points={{-86,-52},{-50,-52},{-50,-8},{-8,-8},{-8,-54},{-8,-54}},
            color={0,0,0}),
        Line(
          points={{54,78},{54,34}},
          color={0,140,72},
          pattern=LinePattern.Dot),
        Line(points={{-8,-54},{28,-54},{28,-8},{52,-8},{52,-54},{76,-54}},
            color={0,0,0}),
        Line(
          points={{-8,78},{-8,34}},
          color={0,140,72},
          pattern=LinePattern.Dot),
        Ellipse(
          extent={{44,88},{64,68}},
          lineColor={0,140,72},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-18,88},{2,68}},
          lineColor={0,140,72},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid)}),                      Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    Documentation(info="<html>
</html>"));
end BecomesFalse;
