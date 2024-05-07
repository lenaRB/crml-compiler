within CRML_test.ETL.EvaluateOver;
partial block EvaluateOver

public
  Utilities.Boolean4Connector phi1 "Boolean4 condition" annotation (Placement(
        transformation(extent={{-120,-10},{-100,10}}), iconTransformation(
          extent={{-120,-10},{-100,10}})));
  Utilities.TimeLocatorConnector P1 annotation (Placement(transformation(
          extent={{-10,90},{10,110}}), iconTransformation(extent={{-10,90},{10,
            110}})));
  CRML.ETL.Connectors.Boolean4Output b_evaluate_over
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  IntegrateUndefined integrateUndefined
    annotation (Placement(transformation(extent={{40,-10},{60,10}})));
  CRML.ETL.Requirements.DecideOver decideOver
    annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
  CRML.Blocks.Logical4.Boolean4Constant boolean4Constant(K=CRML.ETL.Types.Boolean4.false4)
    annotation (Placement(transformation(extent={{-20,40},{0,60}})));
  CRML.Blocks.Events.EventFilter eventFilter
    annotation (Placement(transformation(extent={{-20,-10},{0,10}})));
  CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4
    annotation (Placement(transformation(extent={{6,-4},{14,4}})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent
    annotation (Placement(transformation(extent={{-44,4},{-36,12}})));
  CRML.Blocks.Events.Event4ToEvent event4ToEvent1
    annotation (Placement(transformation(extent={{-44,-24},{-36,-16}})));
equation
//         Text(
//           extent={{-74,32},{74,-36}},
//           lineColor={0,0,0},
//           fillColor={28,108,200},
//           fillPattern=FillPattern.Solid,
//           textString=boxName),
  connect(decideOver.u, phi1)
    annotation (Line(points={{-81,0},{-110,0}}, color={162,29,33}));
  connect(eventFilter.y, booleanToBoolean4.u)
    annotation (Line(points={{1,0},{5.6,0}},  color={217,67,180}));
  connect(decideOver.y, event4ToEvent.u) annotation (Line(points={{-59,0},{-50,0},
          {-50,8},{-44.4,8}}, color={162,29,33}));
  connect(event4ToEvent1.u, phi1) annotation (Line(points={{-44.4,-20},{-90,-20},
          {-90,0},{-110,0}}, color={162,29,33}));
  connect(event4ToEvent1.y, eventFilter.u) annotation (Line(points={{-35.6,-20},
          {-26,-20},{-26,0},{-21,0}}, color={217,67,180}));
  connect(event4ToEvent.y, eventFilter.cond)
    annotation (Line(points={{-35.6,8},{-21,8}}, color={217,67,180}));
  connect(decideOver.tl, P1) annotation (Line(points={{-70,10},{-70,80},{0,80},
          {0,100}}, color={0,0,255}));
  connect(integrateUndefined.tl, P1) annotation (Line(points={{50,10},{50,80},{
          0,80},{0,100}}, color={0,0,255}));
  connect(boolean4Constant.y, integrateUndefined.a) annotation (Line(points={{1,
          50},{20,50},{20,8},{39,8}}, color={162,29,33}));
  connect(booleanToBoolean4.y, integrateUndefined.u)
    annotation (Line(points={{14.4,0},{39,0}}, color={162,29,33}));
  connect(integrateUndefined.y, b_evaluate_over)
    annotation (Line(points={{61,0},{110,0}}, color={162,29,33}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                                         Rectangle(
          extent={{-100,100},{100,-100}},
          fillColor={162,29,33},
          lineThickness=5,
          fillPattern=FillPattern.Solid,
          borderPattern=BorderPattern.Raised,
          lineColor={0,0,0}),
        Rectangle(
          extent={{-78,80},{82,-80}},
          lineColor={175,175,175},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-70,72},{70,44}},
          lineColor={28,108,200},
          textString="Check"),
        Text(
          extent={{-70,18},{70,-10}},
          lineColor={28,108,200},
          textString="at end")}),                             Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    Documentation(info="<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckAtEnd </b>(<b>u</b> = condition, <b>tl</b> = time_period, <b>checkAtEnd</b>); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the condition <b>u</b> is satisfied (true) at the end of the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://CRML.ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create time locators, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://CRML.ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://CRML.ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://CRML.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://CRML.Blocks.Logical4.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another <a href=\"modelica://CRML.ETL.Requirements.Check\">Check</a>, <a href=\"modelica://CRML.ETL.Requirements.CheckInteger\">CheckInteger</a> or <a href=\"modelica://CRML.ETL.Requirements.CheckReal\">CheckReal</a> block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
end EvaluateOver;
