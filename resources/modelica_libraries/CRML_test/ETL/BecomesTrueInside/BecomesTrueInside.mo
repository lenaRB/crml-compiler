within CRML_test.ETL.BecomesTrueInside;
partial model BecomesTrueInside
  Utilities.Boolean4Connector b1
    annotation (Placement(transformation(extent={{-120,60},{-100,40}})));
  CRML.ETL.Connectors.ClockOutput
                           c_b1_becomes_true_inside_p1
    annotation (Placement(transformation(extent={{100,10},{120,-10}})));
  Utilities.TimeLocatorConnector P1
    annotation (Placement(transformation(extent={{-120,-60},{-100,-40}})));
  CRML.ETL.Blocks.Events.BecomesTrue becomesTrue
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  CRML.ETL.Blocks.Clocks.Inside inside
    annotation (Placement(transformation(extent={{0,-10},{20,10}})));
equation
  connect(b1, becomesTrue.b1) annotation (Line(points={{-110,50},{-80,50},{-80,
          0},{-61,0}}, color={0,0,0}));
  connect(inside.u, becomesTrue.c_b1_becomes_true) annotation (Line(
      points={{-1,3},{-28,3},{-28,0},{-39,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  connect(P1, inside.tl) annotation (Line(points={{-110,-50},{-80,-50},{-80,-40},
          {-20,-40},{-20,-3},{-1,-3}}, color={0,0,0}));
  connect(inside.y, c_b1_becomes_true_inside_p1) annotation (Line(
      points={{21,0},{110,0}},
      color={175,175,175},
      pattern=LinePattern.Dot,
      thickness=0.5));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{28,78},{28,34}},
          color={0,140,72},
          pattern=LinePattern.Dot),
        Text(
          extent={{-250,170},{250,110}},
          textString="%name",
          lineColor={0,0,255}),                                              Line(points={{-80,34},
              {-50,34},{-50,78},{-50,78},{-50,34},{52,34}},
                                   color={0,140,72},
          pattern=LinePattern.Dot),
        Line(points={{-86,34},{-50,34},{-50,78},{-8,78},{-8,32},{-8,34}},
            color={162,29,33}),
        Ellipse(
          extent={{-60,88},{-40,68}},
          lineColor={0,140,72},
          fillColor={0,140,72},
          fillPattern=FillPattern.Solid),
        Line(points={{-8,34},{28,34},{28,78},{52,78},{52,34},{76,34}},
            color={162,29,33}),
        Ellipse(
          extent={{18,88},{38,68}},
          lineColor={0,140,72},
          fillColor={0,140,72},
          fillPattern=FillPattern.Solid),
        Line(points={{-90,-50},{-64,-50},{-64,-6},{16,-6},{16,-52},{84,-52}},
            color={28,108,200}),
        Ellipse(
          extent={{-58,4},{-38,-16}},
          lineColor={0,140,72},
          fillPattern=FillPattern.Solid,
          fillColor={255,255,255})}),                            Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BecomesTrueInside;
