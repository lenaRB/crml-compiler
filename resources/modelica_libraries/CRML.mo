package CRML
  package UsersGuide "User's Guide"
    class Overview "Overview of CRML"
      annotation(
        Documentation(info = "<html>
<p>CRML(Common Requirement Modeling Language) is a language for the simulation of temporal requirements on cyber-physical systems.</p>
<p>This library is a Modelica implementation of CRML. It requires the use of the Modelica language version 3.3 or later to support the notion of clock. </p>
<p>For more information, please consult the following references:</p>
<ul>
<li><span style=\"font-family: Arial;\">Bouskela D., Nguyen T. and Jardin A. (2017), &ldquo;Toward a Rigorous Approach for Verifying Cyber-Physical Systems Against Requirements,&rdquo; Canadian J. of Electrical and Computer Engineering, Vol. 40-2, pp. 66-73. </span></li>
<li><span style=\"font-family: Arial;\">Bouskela D., Buffoni L., Jardin A., Molnar V., Pop A. and Zavada A. (2023), &quot;The Common Requirement Modeling Language&quot;, Proceedings of the 15th International Modelica Conference 2023, Aachen, October 9-11.</span></li>
</ul>
<p>Regarding the RandomFailure block in package Blocks.Events, please consult the following reference:</p>
<ul>
<li><span style=\"font-family: Arial;\">Bouissou M. and Buffoni L. (2020), &ldquo;Generic Method to Transform a Modelica Simulation into a Dynamic Reliability Model,&rdquo; IMdR, Institut pour la ma&icirc;trise des Risques, 22e Congr&egrave;s de Ma&icirc;trise des Risques et S&ucirc;ret&eacute; de Fonctionnement. </span></li>
</ul>
</html>"),
        Icon(graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(origin = {-10.167, -15}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier), Ellipse(origin = {1.5, 56.5}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}})}));
    end Overview;

    class CrmlLicense "License"
      annotation(
        Documentation(info = "<html>
<p><b><span style=\"font-size: 12pt; color: #008000;\">The CRML License </span></b></p>
<p>Licensed by EDF under the provisions of an open source licence to be decided.</p>
<p>Copyright &copy; 2020, EDF. </p>
</html>"),
        Icon(graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(origin = {-10.167, -15}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier), Ellipse(origin = {1.5, 56.5}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}})}));
    end CrmlLicense;

    package ReleaseNotes "Release notes"
      class Version_0_1 "Version 0.1"
        annotation(
          DocumentationClass = true,
          Documentation(info = "<html>
<p><b><span style=\"font-size: 10pt; color: #008000;\">Version 0.1 (May 25, 2021)</span></b></p>
<p>This is the first beta release of the library. </p>
</html>"),Icon(graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(origin = {-10.167, -15}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier), Ellipse(origin = {1.5, 56.5}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}})}));
      end Version_0_1;

      class Version_0_2 "Version 0.2"
        annotation(
          DocumentationClass = true,
          Documentation(info = "<html>
<p><b><span style=\"font-size: 10pt; color: #008000;\">Version 0.2 (June 9, 2022)</span></b></p>
<p>This is the second beta release of the library. </p>
</html>"),Icon(graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(origin = {-10.167, -15}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier), Ellipse(origin = {1.5, 56.5}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}})}));
      end Version_0_2;

      class Version_0_3 "Version 0.3"
        annotation(
          DocumentationClass = true,
          Documentation(info = "<html>
<p><b><span style=\"font-size: 10pt; color: #008000;\">Version 0.3 (in progress, 2024)</span></b></p>
<p>This is the third beta release of the library. </p>
<p>Minor changes:</p>
<ul>
<li>Updated package &quot;Blocks.Events&quot;: declaration of x as public (and not protected) for setting start value</li>
<li>Updated package &quot;Examples&quot;: deletion of dependency with the Modelica_StateGraph2 library in &quot;traffic light&quot; example</li>
<li>New package &quot;Units&quot;: deletion of dependency with the Modelica Standard Library for units declaration</li>
</ul>
<p>Major changes:</p>
<ul>
<li>Updated package &quot;ETL.Requirements&quot;: addition of &quot;DecideOver&quot;, &quot;EvaluateOver&quot; and &quot;CheckOver&quot; ETL custom operators</li>
<li>New package &quot;ETL.Blocks&quot;: definition of ETL custom operators on Clocks and Events</li>
<li>Under progress</li>
</ul>
</html>"),Icon(graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(origin = {-10.167, -15}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier), Ellipse(origin = {1.5, 56.5}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}})}));
      end Version_0_3;
      annotation(
        Icon(graphics = {Polygon(points = {{-80, -100}, {-80, 100}, {0, 100}, {0, 20}, {80, 20}, {80, -100}, {-80, -100}}, lineColor = {0, 0, 0}, fillColor = {245, 245, 245}, fillPattern = FillPattern.Solid), Polygon(points = {{0, 100}, {80, 20}, {0, 20}, {0, 100}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Line(points = {{2, -12}, {50, -12}}, color = {0, 0, 0}), Ellipse(extent = {{-56, 2}, {-28, -26}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Line(points = {{2, -60}, {50, -60}}, color = {0, 0, 0}), Ellipse(extent = {{-56, -46}, {-28, -74}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid)}),
        Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Release notes</span></b></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This section summarizes the changes that have been performed on package CRML.</span></p>
</html>"));
    end ReleaseNotes;

    class Contacts "Contacts"
      annotation(
        Icon(graphics = {Rectangle(extent = {{-100, 70}, {100, -72}}, lineColor = {0, 0, 0}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Polygon(points = {{-100, -72}, {100, -72}, {0, 20}, {-100, -72}}, lineColor = {0, 0, 0}, smooth = Smooth.None, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Polygon(points = {{22, 0}, {100, 70}, {100, -72}, {22, 0}}, lineColor = {0, 0, 0}, smooth = Smooth.None, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Polygon(points = {{-100, 70}, {100, 70}, {0, -20}, {-100, 70}}, lineColor = {0, 0, 0}, smooth = Smooth.None, fillColor = {241, 241, 241}, fillPattern = FillPattern.Solid)}),
        Documentation(info = "<html>
<p><b><span style=\"font-size: 12pt; color: #008000;\">Contacts </span></b></p>
<p style=\"margin-left: 30px;\">Daniel Bouskela</p><p style=\"margin-left: 30px;\">Audrey Jardin</p><p style=\"margin-left: 30px;\">Yulu Dong</p>
<p style=\"margin-left: 30px;\">EDF Lab - PRISME</p><p style=\"margin-left: 30px;\">6, quai Watier</p><p style=\"margin-left: 30px;\">F-78401 Chatou Cedex</p><p style=\"margin-left: 30px;\">France</p>
<p style=\"margin-left: 30px;\"><br>email: <a href=\"mailto:audrey.jardin@edf.fr\">audrey.jardin@edf.fr</a></p>
</html>"));
    end Contacts;
    annotation(
      Icon(graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(origin = {-10.167, -15}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier), Ellipse(origin = {1.5, 56.5}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}})}),
      DocumentationClass = true,
      Documentation(info = "<html>
<p><b><span style=\"font-size: 12pt; color: #008000;\">Users Guide of the ETL Library</span></b></p>
</html>"));
  end UsersGuide;

  package TimeLocators
    package Continuous
      block Master "Master time locator"
        import CRML.ETL.Types.Boolean4;
        parameter Boolean leftBoundaryIncluded = true "If true, the left boundaries of the time periods are included";
        parameter Boolean rightBoundaryIncluded = true "If true, the right boundaries of the time periods are included";
        parameter Boolean defaultInputValue = true "Default input value when input u is not connected";
        ETL.Connectors.WhileOutput y "Vector of time periods";
        ETL.Connectors.Boolean4Input u "Alternating opening and closing events" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      equation
        if (cardinality(u) == 0) then
          u = CRML.ETL.Types.cvBooleanToBoolean4(defaultInputValue);
        end if;
        y.timePeriod = (u == Boolean4.true4);
        y.clock = Boolean4.true4;
        y.isLeftBoundaryIncluded = leftBoundaryIncluded;
        y.isRightBoundaryIncluded = rightBoundaryIncluded;
        //           borderPattern=BorderPattern.Raised,
        //           borderPattern=BorderPattern.Raised,
        annotation(
          defaultComponentName = "master",
          defaultComponentPrefixes = "inner",
          missingInnerMessage = "
Your model is using an outer \"master\" component but
an inner \"master\" component is not defined and therefore
a default inner \"master\" component is introduced by the tool.
To change the default setting, drag block CRML.TimeLocators.Continuous.Master
into your model.
          ",
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 127}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255}), Line(points = {{-50, 38}, {-70, 38}, {-70, -44}, {-50, -44}}, color = {0, 0, 0}, visible = leftBoundaryIncluded), Line(points = {{50, 38}, {70, 38}, {70, -44}, {50, -44}}, color = {0, 0, 0}, visible = rightBoundaryIncluded), Line(points = {{90, 38}, {70, 38}, {70, -44}, {90, -44}}, color = {0, 0, 0}, visible = not rightBoundaryIncluded), Line(points = {{-90, 38}, {-70, 38}, {-70, -44}, {-90, -44}}, color = {0, 0, 0}, visible = not leftBoundaryIncluded), Line(points = {{-50, -22}, {-50, 18}}, color = {0, 0, 0}), Line(points = {{-50, 18}, {20, 18}}, color = {0, 0, 0}), Text(extent = {{-40, 10}, {10, -14}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Line(points = {{-52, -22}, {56, -22}}, color = {175, 175, 175}), Line(points = {{20, 10}, {20, -30}}, color = {0, 0, 0}), Line(points = {{40, -22}, {40, 18}}, color = {0, 0, 0}), Line(points = {{40, 18}, {52, 18}}, color = {0, 0, 0}), Line(points = {{52, 18}, {52, -22}}, color = {0, 0, 0})}),
          Documentation(revisions = "<html>
</html>", info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>Master</b>(<b>u </b>= opening_or_closing_event); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Master</span></b> is a special case of a continuous time locator with no overlapping time periods.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Opening and closing events are respectively delivered on input <b>u</b> when <b>u</b> becomes respectively true and false.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block can be used as the mastertime  period of all <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> blocks within a given model by just dragging and dropping the block into the model. Only one master block per model is allowed.</span></p>
</html>"),Diagram(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 127}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255}), Line(points = {{-50, 38}, {-70, 38}, {-70, -44}, {-50, -44}}, color = {0, 0, 0}, visible = leftBoundaryIncluded), Line(points = {{50, 38}, {70, 38}, {70, -44}, {50, -44}}, color = {0, 0, 0}, visible = rightBoundaryIncluded), Line(points = {{90, 38}, {70, 38}, {70, -44}, {90, -44}}, color = {0, 0, 0}, visible = not rightBoundaryIncluded), Line(points = {{-90, 38}, {-70, 38}, {-70, -44}, {-90, -44}}, color = {0, 0, 0}, visible = not leftBoundaryIncluded), Line(points = {{-50, -22}, {-50, 18}}, color = {0, 0, 0}), Line(points = {{-50, 18}, {20, 18}}, color = {0, 0, 0}), Text(extent = {{-40, 10}, {10, -14}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Line(points = {{-52, -22}, {56, -22}}, color = {175, 175, 175}), Line(points = {{20, 10}, {20, -30}}, color = {0, 0, 0}), Line(points = {{40, -22}, {40, 18}}, color = {0, 0, 0}), Line(points = {{40, 18}, {52, 18}}, color = {0, 0, 0}), Line(points = {{52, 18}, {52, -22}}, color = {0, 0, 0})}));
      end Master;

      block While "While time locator"
        import CRML.ETL.Types.Boolean4;
        parameter Boolean leftBoundaryIncluded = true "If true, the left boundaries of the time periods are included";
        parameter Boolean rightBoundaryIncluded = true "If true, the right boundaries of the time periods are included";
      protected
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.WhileOutput y "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.Connectors.Boolean4Input u "Alternating opening and closing events" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
      public
        ETL.Connectors.WhileInput tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
        ETL.TimeLocators.While While(leftBoundaryIncluded = leftBoundaryIncluded, rightBoundaryIncluded = rightBoundaryIncluded) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(u, While.u) annotation(
          Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(tl1, While.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(While.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        annotation(
          Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 0.1, preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-78, 88}, {76, 40}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "while"), Line(points = {{-90, 30}, {-70, 30}, {-70, -52}, {-90, -52}}, color = {0, 0, 0}, visible = not leftBoundaryIncluded), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = rightBoundaryIncluded), Line(points = {{90, 30}, {70, 30}, {70, -52}, {90, -52}}, color = {0, 0, 0}, visible = not rightBoundaryIncluded), Text(extent = {{-40, 2}, {10, -22}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Line(points = {{-50, 10}, {20, 10}}, color = {0, 0, 0}), Line(points = {{-50, -30}, {-50, 10}}, color = {0, 0, 0}), Line(points = {{20, 10}, {20, -30}}, color = {0, 0, 0}), Line(points = {{-52, -30}, {56, -30}}, color = {175, 175, 175}), Line(points = {{40, -30}, {40, 10}}, color = {0, 0, 0}), Line(points = {{52, 10}, {52, -30}}, color = {0, 0, 0}), Line(points = {{40, 10}, {52, 10}}, color = {0, 0, 0})}),
          Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 0.1, preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>While</b>(<b>u </b>= opening_or_closing_event [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">While</span></b> is a special case of a continuous time locator with no overlapping time periods.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Opening and closing events are respectively delivered on input <b>u</b> when <b>u</b> becomes respectively true and false.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">While can only be used as the master time locator of a <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> block can be used to specify the same master period to all time periods of the same model.</span></p>
</html>"));
      end While;

      block After
        import CRML.ETL.Types.Boolean4;
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u1 "Opening event" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(durationSpecified = false, leftBoundaryIncluded = false, rightBoundaryIncluded = false) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        Blocks.Logical4.Boolean4Constant boolean4Constant(K = CRML.ETL.Types.Boolean4.false4) annotation(
          Placement(transformation(extent = {{-60, -40}, {-40, -20}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(u1, periods.u1) annotation(
          Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        connect(boolean4Constant.y, periods.u2) annotation(
          Line(points = {{-39, -30}, {-20, -30}, {-20, -8}, {-11, -8}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "after")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>After</b>(<b>u </b>= opening_events [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Returns the time periods that start after the opening events on <b>u</b>, excluding the opening events. The time periods are truncated by the master_time_period if provided on <b>tl</b>.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> block can be used to specify the same master period to all time periods of the same model.</span></p>
</html>"));
      end After;

      block From
        import CRML.ETL.Types.Boolean4;
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u1 "Opening event" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(durationSpecified = false, rightBoundaryIncluded = false, leftBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        Blocks.Logical4.Boolean4Constant boolean4Constant(K = CRML.ETL.Types.Boolean4.false4) annotation(
          Placement(transformation(extent = {{-60, -40}, {-40, -20}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(u1, periods.u1) annotation(
          Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        connect(boolean4Constant.y, periods.u2) annotation(
          Line(points = {{-39, -30}, {-20, -30}, {-20, -8}, {-11, -8}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "from")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>From</b>(<b>u </b>= opening_events [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Returns the time periods that start from the opening events on <b>u</b>, including the opening events. The time periods are truncated by the master_time_period if provided on <b>tl</b>.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> block can be used to specify the same master period to all time periods of the same model.</span></p>
</html>"));
      end From;

      block Before
        import CRML.ETL.Types.Boolean4;
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u1 "Opening event" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(durationSpecified = false, rightBoundaryIncluded = false, leftBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        Blocks.Logical4.Boolean4Constant boolean4Constant(K = CRML.ETL.Types.Boolean4.false4) annotation(
          Placement(transformation(extent = {{-60, 20}, {-40, 40}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        connect(u1, periods.u2) annotation(
          Line(points = {{-110, 0}, {-40, 0}, {-40, -8}, {-11, -8}}, color = {162, 29, 33}));
        connect(boolean4Constant.y, periods.u1) annotation(
          Line(points = {{-39, 30}, {-24, 30}, {-24, 0}, {-11, 0}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "before")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>Before</b>(<b>u </b>= closing_events [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Returns the time periods that end before the closing events on <b>u</b>, excluding the closing events. The time periods are truncated by the master_time_period if provided on <b>tl</b>.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> block can be used to specify the same master period to all time periods of the same model.</span></p>
</html>"));
      end Before;

      block Until
        import CRML.ETL.Types.Boolean4;
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u1 "Opening event" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(durationSpecified = false, leftBoundaryIncluded = true, rightBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        Blocks.Logical4.Boolean4Constant boolean4Constant(K = CRML.ETL.Types.Boolean4.false4) annotation(
          Placement(transformation(extent = {{-60, 20}, {-40, 40}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        connect(u1, periods.u2) annotation(
          Line(points = {{-110, 0}, {-40, 0}, {-40, -8}, {-11, -8}}, color = {162, 29, 33}));
        connect(boolean4Constant.y, periods.u1) annotation(
          Line(points = {{-39, 30}, {-24, 30}, {-24, 0}, {-11, 0}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "until")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>Until</b>(<b>u </b>= closing_events [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Returns the time periods that end before the closing events on <b>u</b>, including the closing events. The time periods are truncated by the master_time_period if provided on <b>tl</b>.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> block can be used to specify the same master period to all time periods of the same model.</span></p>
</html>"));
      end Until;

      block AfterBefore
        import CRML.ETL.Types.Boolean4;
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u1 "Opening event" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
        ETL.Connectors.Boolean4Input u2 "Closing event" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), visible = not periods.durationSpecified));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(durationSpecified = false, leftBoundaryIncluded = false, rightBoundaryIncluded = false) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(u1, periods.u1) annotation(
          Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(u2, periods.u2) annotation(
          Line(points = {{-110, -80}, {-60, -80}, {-60, -8}, {-11, -8}}, color = {162, 29, 33}));
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "after before")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>AfterBefore</b>(<b>u1</b> = opening_events, <b>u2 </b>= closing_events [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Returns the time periods that start after the opening events on <b>u1</b> and end before the closing events on <b>u2</b>, excluding the opening and the closing events. The time periods are truncated by the master_time_period if provided on <b>tl</b>.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> block can be used to specify the same master period to all time periods of the same model.</span></p>
</html>"));
      end AfterBefore;

      block AfterUntil
        import CRML.ETL.Types.Boolean4;
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u1 "Opening event" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
        ETL.Connectors.Boolean4Input u2 "Closing event" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), visible = not periods.durationSpecified));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(durationSpecified = false, leftBoundaryIncluded = false, rightBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(u1, periods.u1) annotation(
          Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(u2, periods.u2) annotation(
          Line(points = {{-110, -80}, {-60, -80}, {-60, -8}, {-11, -8}}, color = {162, 29, 33}));
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "after until")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>AfterUntil</b>(<b>u1</b> = opening_events, <b>u2 </b>= closing_events [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Returns the time periods that start after the opening events on <b>u1</b> and end before the closing events on <b>u2</b>, excluding the opening events and including the closing events. The time periods are truncated by the master_time_period if provided on <b>tl</b>.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> block can be used to specify the same master period to all time periods of the same model.</span></p>
</html>"));
      end AfterUntil;

      block AfterFor
        import CRML.ETL.Types.Boolean4;
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u "Opening event" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
        ETL.Connectors.RealInput duration "Duration" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), visible = periods.durationSpecified));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(leftBoundaryIncluded = false, rightBoundaryIncluded = true, durationSpecified = true) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(u, periods.u1) annotation(
          Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        connect(duration, periods.continuousDuration) annotation(
          Line(points = {{-110, -80}, {-60, -80}, {-60, -8}, {-11, -8}}, color = {0, 0, 0}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "after for")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>AfterFor</b>(<b>u</b> = opening_events, <b>duration </b>= duration [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Returns the time periods that start after the opening events on <b>u</b> and last for<b> duration </b>seconds, excluding the opening events and including the closing events. The time periods are truncated by the master_time_period if provided on <b>tl</b>.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> block can be used to specify the same master period to all time periods of the same model.</span></p>
</html>"));
      end AfterFor;

      block During
        import CRML.ETL.Types.Boolean4;
        parameter Boolean leftBoundaryIncluded = true "If true, the left boundaries of the time periods are included";
        parameter Boolean rightBoundaryIncluded = true "If true, the right boundaries of the time periods are included";
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u "Opening and closing events" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(durationSpecified = false, leftBoundaryIncluded = leftBoundaryIncluded, rightBoundaryIncluded = rightBoundaryIncluded) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        Blocks.Logical4.Not4 not4_1 annotation(
          Placement(transformation(extent = {{-60, -40}, {-40, -20}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(u, periods.u1) annotation(
          Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        connect(not4_1.y, periods.u2) annotation(
          Line(points = {{-39, -30}, {-20, -30}, {-20, -8}, {-11, -8}}, color = {162, 29, 33}));
        connect(u, not4_1.u) annotation(
          Line(points = {{-110, 0}, {-80, 0}, {-80, -30}, {-61, -30}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "during"), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Line(points = {{90, 30}, {70, 30}, {70, -52}, {90, -52}}, color = {0, 0, 0}, visible = not periods.rightBoundaryIncluded), Line(points = {{-90, 30}, {-70, 30}, {-70, -52}, {-90, -52}}, color = {0, 0, 0}, visible = not periods.leftBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>During</b>(<b>u</b> = Boolean [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Returns the time periods that start when the Boolean on <b>u</b> becomes true and end when the Boolean on <b>u</b> becomes false. The opening and the closing events are included or excluded according to the values of the parameters <code>leftBoundaryIncluded </code>and<code> rightBoundaryIncluded</code>. The time periods are truncated by the master_time_period if provided on <b>tl</b>.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> block can be used to specify the same master period to all time periods of the same model.</span></p>
</html>"));
      end During;

      block FromBefore
        import CRML.ETL.Types.Boolean4;
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u1 "Opening event" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
        ETL.Connectors.Boolean4Input u2 "Closing event" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), visible = not periods.durationSpecified));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(durationSpecified = false, rightBoundaryIncluded = false, leftBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(u1, periods.u1) annotation(
          Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(u2, periods.u2) annotation(
          Line(points = {{-110, -80}, {-60, -80}, {-60, -8}, {-11, -8}}, color = {162, 29, 33}));
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "from before")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>FromBefore</b>(<b>u1</b> = opening_events, <b>u2 </b>= closing_events [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Returns the time periods that start from the opening events on <b>u1</b> and end before the closing events on <b>u2</b>, including the opening events and excluding the closing events. The time periods are truncated by the master_time_period if provided on <b>tl</b>.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> block can be used to specify the same master period to all time periods of the same model.</span></p>
</html>"));
      end FromBefore;

      block FromUntil
        import CRML.ETL.Types.Boolean4;
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u1 "Opening event" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
        ETL.Connectors.Boolean4Input u2 "Closing event" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), visible = not periods.durationSpecified));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(durationSpecified = false, leftBoundaryIncluded = true, rightBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(u1, periods.u1) annotation(
          Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(u2, periods.u2) annotation(
          Line(points = {{-110, -80}, {-60, -80}, {-60, -8}, {-11, -8}}, color = {162, 29, 33}));
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "from until")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>FromUntil</b>(<b>u1</b> = opening_events, <b>u2 </b>= closing_events [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Returns the time periods that start from the opening events on <b>u1</b> and end before the closing events on <b>u2</b>, including the opening and the closing events. The time periods are truncated by the master_time_period if provided on <b>tl</b>.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> block can be used to specify the same master period to all time periods of the same model.</span></p>
</html>"));
      end FromUntil;

      block FromFor
        import CRML.ETL.Types.Boolean4;
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u "Opening event" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
        ETL.Connectors.RealInput duration "Duration" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), visible = not periods.durationSpecified));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(rightBoundaryIncluded = true, durationSpecified = true, leftBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(u, periods.u1) annotation(
          Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        connect(duration, periods.continuousDuration) annotation(
          Line(points = {{-110, -80}, {-60, -80}, {-60, -8}, {-11, -8}}, color = {0, 0, 0}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "from for")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>FromFor</b>(<b>u</b> = opening_events, <b>duration </b>= duration [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Returns the time periods that start after the opening events on <b>u</b> and last for<b> duration </b>seconds, including the opening and closing events. The time periods are truncated by the master_time_period if provided on <b>tl</b>.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> block can be used to specify the same master period to all time periods of the same model.</span></p>
</html>"));
      end FromFor;

      block When
        import CRML.ETL.Types.Boolean4;
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u "Opening and closing events" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(durationSpecified = false, leftBoundaryIncluded = true, rightBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(u, periods.u1) annotation(
          Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        connect(u, periods.u2) annotation(
          Line(points = {{-110, 0}, {-40, 0}, {-40, -8}, {-11, -8}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "when"), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>When</b>(<b>u</b> = events [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Returns the time periods that start and end when events on <b>u</b> occur. The time periods are truncated by the master_time_period if provided on <b>tl</b>.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">For more information, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> block can be used to specify the same master period to all time periods of the same model.</span></p>
</html>"));
      end When;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Line(points = {{-80, 0}, {-50, 0}, {-50, 46}, {50, 46}, {50, 0}, {80, 0}}, color = {0, 0, 0})}));
    end Continuous;

    package Discrete
      block AfterFor
        import CRML.ETL.Types.Boolean4;
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u "Opening event" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(leftBoundaryIncluded = false, rightBoundaryIncluded = true, durationSpecified = true, discreteClockSpecified = true) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        ETL.Connectors.Boolean4Input clock annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}}), iconTransformation(extent = {{-120, 70}, {-100, 90}})));
        ETL.Connectors.IntegerInput duration annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), iconTransformation(extent = {{-120, -90}, {-100, -70}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(u, periods.u1) annotation(
          Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        connect(clock, periods.clock) annotation(
          Line(points = {{-110, 80}, {-60, 80}, {-60, 8}, {-11, 8}}, color = {162, 29, 33}));
        connect(duration, periods.discreteDuration) annotation(
          Line(points = {{-110, -80}, {-60, -80}, {-60, -8}, {-11, -8}}, color = {255, 127, 0}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "after for")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
</html>"));
      end AfterFor;

      block FromFor
        import CRML.ETL.Types.Boolean4;
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        ETL.Connectors.WhileOutput tl1 = tl;
      public
        ETL.Connectors.Boolean4Input u "Opening event" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
      public
        ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        ETL.TimeLocators.Periods periods(rightBoundaryIncluded = true, durationSpecified = true, discreteClockSpecified = true, leftBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        ETL.Connectors.Boolean4Input clock annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}}), iconTransformation(extent = {{-120, 70}, {-100, 90}})));
        ETL.Connectors.IntegerInput duration annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), iconTransformation(extent = {{-120, -90}, {-100, -70}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        connect(u, periods.u1) annotation(
          Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(tl1, periods.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(periods.y, y) annotation(
          Line(points = {{0, -10}, {0, -100}}, color = {0, 0, 255}));
        connect(clock, periods.clock) annotation(
          Line(points = {{-110, 80}, {-60, 80}, {-60, 8}, {-11, 8}}, color = {162, 29, 33}));
        connect(duration, periods.discreteDuration) annotation(
          Line(points = {{-110, -80}, {-60, -80}, {-60, -8}, {-11, -8}}, color = {255, 127, 0}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {85, 170, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = periods.leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = periods.rightBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "from for")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)));
      end FromFor;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Line(points = {{-30, 46}, {-30, 0}}, color = {0, 0, 0}), Line(points = {{0, 46}, {0, 0}}, color = {0, 0, 0}), Line(points = {{30, 46}, {30, 0}}, color = {0, 0, 0}), Line(points = {{-80, 0}, {-50, 0}, {-50, 46}, {50, 46}, {50, 0}, {80, 0}}, color = {0, 0, 0})}));
    end Discrete;

    package Attributes
      block PeriodsStart "Returns the starting events of a multiple time period"
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
      public
        ETL.Connectors.TimeLocatorInput[N] tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        ETL.TimeLocators.Attributes.PeriodStart[N] timePeriodStartingEvents annotation(
          Placement(transformation(extent = {{-4, -4}, {4, 4}})));
        Blocks.Logical.Or_n or_n annotation(
          Placement(transformation(extent = {{40, -10}, {60, 10}})));
      equation
        connect(tl, timePeriodStartingEvents.tl) annotation(
          Line(points = {{0, 100}, {0, 4}}, color = {0, 0, 255}));
        connect(timePeriodStartingEvents.y, or_n.u) annotation(
          Line(points = {{4.4, 0}, {39, 0}}, color = {217, 67, 180}));
        connect(or_n.y, y) annotation(
          Line(points = {{61, 0}, {110, 0}}, color = {217, 67, 180}));
        annotation(
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5, fillColor = {170, 213, 255}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-86, -64}, {-50, -64}, {-50, -20}, {60, -20}, {60, -66}, {88, -66}}, color = {0, 0, 0}), Text(extent = {{-72, 40}, {-26, -22}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol")}),
          Diagram(coordinateSystem(initialScale = 0.04)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> =<b>PeriodsStart</b>(<b>tl</b>); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Returns the opening events of the time period <b>tl</b>.</span></p>
</html>"));
      end PeriodsStart;

      block PeriodsEnd "Returns the closing events of a multiple time period"
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
      public
        ETL.Connectors.TimeLocatorInput[N] tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        Blocks.Logical.Or_n or_n annotation(
          Placement(transformation(extent = {{40, -10}, {60, 10}})));
        ETL.TimeLocators.Attributes.PeriodEnd[N] timePeriodClosingEvents annotation(
          Placement(transformation(extent = {{-4, -4}, {4, 4}})));
      equation
        connect(tl, timePeriodClosingEvents.tl) annotation(
          Line(points = {{0, 100}, {0, 4}}, color = {0, 0, 255}));
        connect(timePeriodClosingEvents.y, or_n.u) annotation(
          Line(points = {{4.4, 0}, {39, 0}}, color = {217, 67, 180}));
        connect(or_n.y, y) annotation(
          Line(points = {{61, 0}, {110, 0}}, color = {217, 67, 180}));
        annotation(
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5, fillColor = {170, 213, 255}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-86, -64}, {-50, -64}, {-50, -20}, {60, -20}, {60, -66}, {88, -66}}, color = {0, 0, 0}), Text(extent = {{36, 40}, {82, -22}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol")}),
          Diagram(coordinateSystem(initialScale = 0.04)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> =<b>PeriodsEnd</b>(<b>tl</b>); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Returns the closing events of the time period <b>tl</b>.</span></p>
</html>"));
      end PeriodsEnd;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(extent = {{-76, -26}, {80, -76}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-76, 24}, {80, -26}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-76, 74}, {80, 24}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Line(points = {{-28, 74}, {-28, -76}}, color = {95, 95, 95}), Line(points = {{24, 74}, {24, -76}}, color = {95, 95, 95})}));
    end Attributes;
    annotation(
      Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Line(points = {{-80, -66}, {-50, -66}, {-50, -20}, {50, -20}, {50, -66}, {80, -66}}, color = {0, 0, 0}), Text(extent = {{28, 68}, {74, 6}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Text(extent = {{-70, 68}, {-24, 6}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol")}));
  end TimeLocators;

  package Requirements
    block CheckAnytime
    protected
      parameter Integer N = CRML.ETL.Types.nMaxOverlap;
    public
      ETL.Connectors.Boolean4Input u "Boolean4 condition" annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      ETL.Connectors.TimeLocatorInput[N] tl annotation(
        Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      ETL.Connectors.Boolean4Output y "Result of the comparison" annotation(
        Placement(transformation(extent = {{100, -10}, {120, 10}})));
      ETL.Requirements.CheckAnytime check annotation(
        Placement(transformation(extent = {{-10, -10}, {10, 10}})));
    equation
      connect(u, check.u) annotation(
        Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
      connect(tl, check.tl) annotation(
        Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
      connect(check.y, y) annotation(
        Line(points = {{11, 0}, {110, 0}}, color = {162, 29, 33}));
      //         Text(
      //           extent={{-74,32},{74,-36}},
      //           lineColor={0,0,0},
      //           fillColor={28,108,200},
      //           fillPattern=FillPattern.Solid,
      //           textString=boxName),
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{-68, 72}, {72, 44}}, lineColor = {28, 108, 200}, textString = "Check anytime"), Line(points = {{-78, -62}, {-50, -62}, {-50, -18}, {60, -18}, {60, -64}, {82, -64}}, color = {0, 0, 0}), Text(extent = {{-24, 52}, {22, -10}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckAnytime</b>(<b>u</b> = condition, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the condition <b>u</b> is satisfied (true) as soon as <b>u</b> becomes true within the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a Boolean4 that takes its values in the { true, false, undecided, undefined } set. The value <b>y</b> is true as long as the condition <b>u</b> is true within the time period <b>tl</b>. When <b>u</b> becomes false, then <b>y</b> becomes false, and stays always false whatever the subsequent values of <b>u</b>. Therefore if <b>u</b> is never undecided, <b>y</b> is never undecided.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create continuous time locators, refer to the <a href=\"modelica://ETL.TimeLocators.ContinuousTimeLocator\">ContinuousTimeLocator</a> block. To create discrete time locators, refer to the <a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://ETL.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://ETL.Blocks.Logical.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another requirement block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
    end CheckAnytime;

    block CheckAtEnd
    protected
      parameter Integer N = CRML.ETL.Types.nMaxOverlap;
    public
      ETL.Connectors.Boolean4Input u "Boolean4 condition" annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      ETL.Connectors.TimeLocatorInput[N] tl annotation(
        Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      ETL.Connectors.Boolean4Output y "Result of the comparison" annotation(
        Placement(transformation(extent = {{100, -10}, {120, 10}})));
      ETL.Requirements.CheckAtEnd check annotation(
        Placement(transformation(extent = {{-10, -10}, {10, 10}})));
    equation
      connect(u, check.u) annotation(
        Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
      connect(tl, check.tl) annotation(
        Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
      connect(check.y, y) annotation(
        Line(points = {{11, 0}, {110, 0}}, color = {162, 29, 33}));
      //         Text(
      //           extent={{-74,32},{74,-36}},
      //           lineColor={0,0,0},
      //           fillColor={28,108,200},
      //           fillPattern=FillPattern.Solid,
      //           textString=boxName),
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{-68, 72}, {72, 44}}, lineColor = {28, 108, 200}, textString = "Check at end"), Line(points = {{-78, -62}, {-50, -62}, {-50, -18}, {60, -18}, {60, -64}, {82, -64}}, color = {0, 0, 0}), Text(extent = {{36, 52}, {82, -10}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckAtEnd</b>(<b>u</b> = condition, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the condition <b>u</b> is true at the end of the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set. The value<b> y</b> is undefined, undecided, true or false.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The difference with the <a href=\"modelica://CRML.Requirements.Ensure\">Ensure</a> block is the following: <b>CheckAtEnd</b> is evaluated at the end of time period <b>tl</b> only so that the value of <b>y</b> within <b>tl</b> is always undecided.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create continuous time locators, refer to the <a href=\"modelica://ETL.TimeLocators.ContinuousTimeLocator\">ContinuousTimeLocator</a> block. To create discrete time locators, refer to the <a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://ETL.Blocks.Logical4\">Logical4</a> package.CRML.Requirements.CheckAtEnd</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://ETL.Blocks.Logical.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another requirement block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
    end CheckAtEnd;

    block CheckCountGreater
      parameter Integer threshold = 10;
    protected
      parameter Integer N = CRML.ETL.Types.nMaxOverlap;
    public
      ETL.Connectors.Boolean4Input u "Boolean4 condition" annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      ETL.Connectors.TimeLocatorInput[N] tl annotation(
        Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      ETL.Connectors.Boolean4Output y "Result of the comparison" annotation(
        Placement(transformation(extent = {{100, -10}, {120, 10}})));
      ETL.Requirements.CheckInteger check(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerGreater) annotation(
        Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      Blocks.MathInteger.IntegerConstant integerConstant(K = threshold) annotation(
        Placement(transformation(extent = {{-60, -40}, {-40, -20}})));
    equation
      connect(u, check.u) annotation(
        Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
      connect(tl, check.tl) annotation(
        Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
      connect(check.y, y) annotation(
        Line(points = {{11, 0}, {110, 0}}, color = {162, 29, 33}));
      connect(integerConstant.y, check.threshold) annotation(
        Line(points = {{-39, -30}, {-20, -30}, {-20, -8}, {-11, -8}}, color = {255, 127, 0}));
      //         Text(
      //           extent={{-74,32},{74,-36}},
      //           lineColor={0,0,0},
      //           fillColor={28,108,200},
      //           fillPattern=FillPattern.Solid,
      //           textString=boxName),
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{-72, 72}, {68, 44}}, lineColor = {28, 108, 200}, textString = "Check count"), Text(extent = {{-50, 28}, {46, -26}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = ">")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckCountGreater</b>(<b>u</b> = condition, <b>threshold</b>=threshold,<code> </code><b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the number of events on <b>u</b> is greater than the <b>threshold</b> at the end of the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set. The value of <b>y</b> is undecided within the time period <b>tl</b> until the decision whether the condition is satisfied can be made. Then it is true or false.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create continuous time locators, refer to the <a href=\"modelica://ETL.TimeLocators.ContinuousTimeLocator\">ContinuousTimeLocator</a> block. To create discrete time locators, refer to the <a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://ETL.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://ETL.Blocks.Logical.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another requirement block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
    end CheckCountGreater;

    block CheckCountGreaterEqual
      parameter Integer threshold = 10;
    protected
      parameter Integer N = CRML.ETL.Types.nMaxOverlap;
    public
      ETL.Connectors.Boolean4Input u "Boolean4 condition" annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      ETL.Connectors.TimeLocatorInput[N] tl annotation(
        Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      ETL.Connectors.Boolean4Output y "Result of the comparison" annotation(
        Placement(transformation(extent = {{100, -10}, {120, 10}})));
      ETL.Requirements.CheckInteger check(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerGreaterEqual) annotation(
        Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      Blocks.MathInteger.IntegerConstant integerConstant(K = threshold) annotation(
        Placement(transformation(extent = {{-60, -40}, {-40, -20}})));
    equation
      connect(u, check.u) annotation(
        Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
      connect(tl, check.tl) annotation(
        Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
      connect(check.y, y) annotation(
        Line(points = {{11, 0}, {110, 0}}, color = {162, 29, 33}));
      connect(integerConstant.y, check.threshold) annotation(
        Line(points = {{-39, -30}, {-20, -30}, {-20, -8}, {-11, -8}}, color = {255, 127, 0}));
      //         Text(
      //           extent={{-74,32},{74,-36}},
      //           lineColor={0,0,0},
      //           fillColor={28,108,200},
      //           fillPattern=FillPattern.Solid,
      //           textString=boxName),
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{-72, 72}, {68, 44}}, lineColor = {28, 108, 200}, textString = "Check count"), Text(extent = {{-50, 28}, {46, -26}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, fontName = "Symbol", textString = "")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckCountGreaterEqual</b>(<b>u</b> = condition, <b>threshold</b>=threshold, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the number of events on <b>u</b> is greater or equal to the <b>threshold</b> at the end of the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set. The value of y is undecided within the time period tl until the decision whether the condition is satisfied can be made. Then it is true or false.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create continuous time locators, refer to the <a href=\"modelica://ETL.TimeLocators.ContinuousTimeLocator\">ContinuousTimeLocator</a> block. To create discrete time locators, refer to the <a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://ETL.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://ETL.Blocks.Logical.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another requirement block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
    end CheckCountGreaterEqual;

    block CheckCountLower
      parameter Integer threshold = 10;
    protected
      parameter Integer N = CRML.ETL.Types.nMaxOverlap;
    public
      ETL.Connectors.Boolean4Input u "Boolean4 condition" annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      ETL.Connectors.TimeLocatorInput[N] tl annotation(
        Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      ETL.Connectors.Boolean4Output y "Result of the comparison" annotation(
        Placement(transformation(extent = {{100, -10}, {120, 10}})));
      ETL.Requirements.CheckInteger check(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerLower) annotation(
        Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      Blocks.MathInteger.IntegerConstant integerConstant(K = threshold) annotation(
        Placement(transformation(extent = {{-60, -40}, {-40, -20}})));
    equation
      connect(u, check.u) annotation(
        Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
      connect(tl, check.tl) annotation(
        Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
      connect(check.y, y) annotation(
        Line(points = {{11, 0}, {110, 0}}, color = {162, 29, 33}));
      connect(integerConstant.y, check.threshold) annotation(
        Line(points = {{-39, -30}, {-20, -30}, {-20, -8}, {-11, -8}}, color = {255, 127, 0}));
      //         Text(
      //           extent={{-74,32},{74,-36}},
      //           lineColor={0,0,0},
      //           fillColor={28,108,200},
      //           fillPattern=FillPattern.Solid,
      //           textString=boxName),
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{-72, 72}, {68, 44}}, lineColor = {28, 108, 200}, textString = "Check count"), Text(extent = {{-50, 28}, {46, -26}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "<")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckCountLower</b>(<b>u</b> = condition, <b>threshold</b>=threshold, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the number of events on <b>u</b> is lower than the <b>threshold</b> at the end of the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set. The value of y is undecided within the time period tl until the decision whether the condition is satisfied can be made. Then it is true or false.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create continuous time locators, refer to the <a href=\"modelica://ETL.TimeLocators.ContinuousTimeLocator\">ContinuousTimeLocator</a> block. To create discrete time locators, refer to the <a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://ETL.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://ETL.Blocks.Logical.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another requirement block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
    end CheckCountLower;

    block CheckCountLowerEqual
      parameter Integer threshold = 10;
    protected
      parameter Integer N = CRML.ETL.Types.nMaxOverlap;
    public
      ETL.Connectors.Boolean4Input u "Boolean4 condition" annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      ETL.Connectors.TimeLocatorInput[N] tl annotation(
        Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      ETL.Connectors.Boolean4Output y "Result of the comparison" annotation(
        Placement(transformation(extent = {{100, -10}, {120, 10}})));
      ETL.Requirements.CheckInteger check(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerLowerEqual) annotation(
        Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      Blocks.MathInteger.IntegerConstant integerConstant(K = threshold) annotation(
        Placement(transformation(extent = {{-60, -40}, {-40, -20}})));
    equation
      connect(u, check.u) annotation(
        Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
      connect(tl, check.tl) annotation(
        Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
      connect(check.y, y) annotation(
        Line(points = {{11, 0}, {110, 0}}, color = {162, 29, 33}));
      connect(integerConstant.y, check.threshold) annotation(
        Line(points = {{-39, -30}, {-20, -30}, {-20, -8}, {-11, -8}}, color = {255, 127, 0}));
      //         Text(
      //           extent={{-74,32},{74,-36}},
      //           lineColor={0,0,0},
      //           fillColor={28,108,200},
      //           fillPattern=FillPattern.Solid,
      //           textString=boxName),
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{-72, 72}, {68, 44}}, lineColor = {28, 108, 200}, textString = "Check count"), Text(extent = {{-50, 28}, {46, -26}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "", fontName = "Symbol")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckCountLowerEqual</b>(<b>u</b> = condition, <b>threshold</b>=threshold, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the number of events on <b>u</b> is lower or equal to the <b>threshold</b> at the end of the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set. The value of y is undecided within the time period tl until the decision whether the condition is satisfied can be made. Then it is true or false.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create continuous time locators, refer to the <a href=\"modelica://ETL.TimeLocators.ContinuousTimeLocator\">ContinuousTimeLocator</a> block. To create discrete time locators, refer to the <a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://ETL.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://ETL.Blocks.Logical.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another requirement block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
    end CheckCountLowerEqual;

    block CheckCountEqual
      parameter Integer threshold = 10;
    protected
      parameter Integer N = CRML.ETL.Types.nMaxOverlap;
    public
      ETL.Connectors.Boolean4Input u "Boolean4 condition" annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      ETL.Connectors.TimeLocatorInput[N] tl annotation(
        Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      ETL.Connectors.Boolean4Output y "Result of the comparison" annotation(
        Placement(transformation(extent = {{100, -10}, {120, 10}})));
      ETL.Requirements.CheckInteger check(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerEqual) annotation(
        Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      Blocks.MathInteger.IntegerConstant integerConstant(K = threshold) annotation(
        Placement(transformation(extent = {{-60, -40}, {-40, -20}})));
    equation
      connect(u, check.u) annotation(
        Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
      connect(tl, check.tl) annotation(
        Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
      connect(check.y, y) annotation(
        Line(points = {{11, 0}, {110, 0}}, color = {162, 29, 33}));
      connect(integerConstant.y, check.threshold) annotation(
        Line(points = {{-39, -30}, {-20, -30}, {-20, -8}, {-11, -8}}, color = {255, 127, 0}));
      //         Text(
      //           extent={{-74,32},{74,-36}},
      //           lineColor={0,0,0},
      //           fillColor={28,108,200},
      //           fillPattern=FillPattern.Solid,
      //           textString=boxName),
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{-72, 72}, {68, 44}}, lineColor = {28, 108, 200}, textString = "Check count"), Text(extent = {{-50, 28}, {46, -26}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "=")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckCountEqual</b>(<b>u</b> = condition, <b>threshold</b>=threshold, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the number of events on <b>u</b> is equal to the <b>threshold</b> at the end of the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set. The value of y is undecided within the time period tl until the decision whether the condition is satisfied can be made. Then it is true or false.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create continuous time locators, refer to the <a href=\"modelica://ETL.TimeLocators.ContinuousTimeLocator\">ContinuousTimeLocator</a> block. To create discrete time locators, refer to the <a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://ETL.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://ETL.Blocks.Logical.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another requirement block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
    end CheckCountEqual;

    block CheckDurationGreater
      parameter Real threshold = 10;
    protected
      parameter Integer N = CRML.ETL.Types.nMaxOverlap;
    public
      ETL.Connectors.Boolean4Input u "Boolean4 condition" annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      ETL.Connectors.TimeLocatorInput[N] tl annotation(
        Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      ETL.Connectors.Boolean4Output y "Result of the comparison" annotation(
        Placement(transformation(extent = {{100, -10}, {120, 10}})));
      ETL.Requirements.CheckReal check(redeclare model Function = ETL.Requirements.Functions.Math.Boolean4Integrator, redeclare model Condition = ETL.Requirements.Conditions.Math.Greater) annotation(
        Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      Blocks.Math.Constant integerConstant(k = threshold) annotation(
        Placement(transformation(extent = {{-60, -40}, {-40, -20}})));
    equation
      connect(u, check.u) annotation(
        Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
      connect(tl, check.tl) annotation(
        Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
      connect(check.y, y) annotation(
        Line(points = {{11, 0}, {110, 0}}, color = {162, 29, 33}));
      connect(integerConstant.y, check.threshold) annotation(
        Line(points = {{-39, -30}, {-20, -30}, {-20, -8}, {-11, -8}}, color = {0, 0, 0}));
      //         Text(
      //           extent={{-74,32},{74,-36}},
      //           lineColor={0,0,0},
      //           fillColor={28,108,200},
      //           fillPattern=FillPattern.Solid,
      //           textString=boxName),
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{-72, 72}, {68, 44}}, lineColor = {28, 108, 200}, textString = "Check duration"), Text(extent = {{-50, 28}, {46, -26}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = ">")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckDurationGreater</b>(<b>u</b> = condition, <b>threshold</b>=threshold, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the duration while the Boolean on <b>u</b> is true is greater than the <b>threshold</b> at the end of the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set. The value of y is undecided within the time period tl until the decision whether the condition is satisfied can be made. Then it is true or false.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create continuous time locators, refer to the <a href=\"modelica://ETL.TimeLocators.ContinuousTimeLocator\">ContinuousTimeLocator</a> block. To create discrete time locators, refer to the <a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://ETL.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://ETL.Blocks.Logical.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another requirement block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
    end CheckDurationGreater;

    block CheckDurationGreaterEqual
      parameter Real threshold = 10;
    protected
      parameter Integer N = CRML.ETL.Types.nMaxOverlap;
    public
      ETL.Connectors.Boolean4Input u "Boolean4 condition" annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      ETL.Connectors.TimeLocatorInput[N] tl annotation(
        Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      ETL.Connectors.Boolean4Output y "Result of the comparison" annotation(
        Placement(transformation(extent = {{100, -10}, {120, 10}})));
      ETL.Requirements.CheckReal check(redeclare model Function = ETL.Requirements.Functions.Math.Boolean4Integrator, redeclare model Condition = ETL.Requirements.Conditions.Math.GreaterEqual) annotation(
        Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      Blocks.Math.Constant integerConstant(k = threshold) annotation(
        Placement(transformation(extent = {{-60, -40}, {-40, -20}})));
    equation
      connect(u, check.u) annotation(
        Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
      connect(tl, check.tl) annotation(
        Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
      connect(check.y, y) annotation(
        Line(points = {{11, 0}, {110, 0}}, color = {162, 29, 33}));
      connect(integerConstant.y, check.threshold) annotation(
        Line(points = {{-39, -30}, {-20, -30}, {-20, -8}, {-11, -8}}, color = {0, 0, 0}));
      //         Text(
      //           extent={{-74,32},{74,-36}},
      //           lineColor={0,0,0},
      //           fillColor={28,108,200},
      //           fillPattern=FillPattern.Solid,
      //           textString=boxName),
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{-72, 72}, {68, 44}}, lineColor = {28, 108, 200}, textString = "Check duration"), Text(extent = {{-50, 28}, {46, -26}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, fontName = "Symbol", textString = "")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckDurationGreaterEqual</b>(<b>u</b> = condition, <b>threshold</b>=threshold, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the<b> </b>duration<b> </b>while the Boolean on<b> u </b>is true is greater or equal to the <b>threshold</b> at the end of the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set. The value of y is undecided within the time period tl until the decision whether the condition is satisfied can be made. Then it is true or false.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create continuous time locators, refer to the <a href=\"modelica://ETL.TimeLocators.ContinuousTimeLocator\">ContinuousTimeLocator</a> block. To create discrete time locators, refer to the <a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://ETL.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://ETL.Blocks.Logical.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another requirement block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
    end CheckDurationGreaterEqual;

    block CheckDurationLower
      parameter Real threshold = 10;
    protected
      parameter Integer N = CRML.ETL.Types.nMaxOverlap;
    public
      ETL.Connectors.Boolean4Input u "Boolean4 condition" annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      ETL.Connectors.TimeLocatorInput[N] tl annotation(
        Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      ETL.Connectors.Boolean4Output y "Result of the comparison" annotation(
        Placement(transformation(extent = {{100, -10}, {120, 10}})));
      ETL.Requirements.CheckReal check(redeclare model Function = ETL.Requirements.Functions.Math.Boolean4Integrator, redeclare model Condition = ETL.Requirements.Conditions.Math.Lower) annotation(
        Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      Blocks.Math.Constant integerConstant(k = threshold) annotation(
        Placement(transformation(extent = {{-60, -40}, {-40, -20}})));
    equation
      connect(u, check.u) annotation(
        Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
      connect(tl, check.tl) annotation(
        Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
      connect(check.y, y) annotation(
        Line(points = {{11, 0}, {110, 0}}, color = {162, 29, 33}));
      connect(integerConstant.y, check.threshold) annotation(
        Line(points = {{-39, -30}, {-20, -30}, {-20, -8}, {-11, -8}}, color = {0, 0, 0}));
      //         Text(
      //           extent={{-74,32},{74,-36}},
      //           lineColor={0,0,0},
      //           fillColor={28,108,200},
      //           fillPattern=FillPattern.Solid,
      //           textString=boxName),
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{-72, 72}, {68, 44}}, lineColor = {28, 108, 200}, textString = "Check duration"), Text(extent = {{-50, 28}, {46, -26}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "<")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckDurationLower</b>(<b>u</b> = condition, <b>threshold</b>=threshold, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the<b> </b>duration<b> </b>while the Boolean on <b>u </b>is true is lower than the <b>threshold</b> at the end of the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set. The value of y is undecided within the time period tl until the decision whether the condition is satisfied can be made. Then it is true or false.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create continuous time locators, refer to the <a href=\"modelica://ETL.TimeLocators.ContinuousTimeLocator\">ContinuousTimeLocator</a> block. To create discrete time locators, refer to the <a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://ETL.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://ETL.Blocks.Logical.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another requirement block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
    end CheckDurationLower;

    block CheckDurationLowerEqual
      parameter Real threshold = 10;
    protected
      parameter Integer N = CRML.ETL.Types.nMaxOverlap;
    public
      ETL.Connectors.Boolean4Input u "Boolean4 condition" annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      ETL.Connectors.TimeLocatorInput[N] tl annotation(
        Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      ETL.Connectors.Boolean4Output y "Result of the comparison" annotation(
        Placement(transformation(extent = {{100, -10}, {120, 10}})));
      ETL.Requirements.CheckReal check(redeclare model Function = ETL.Requirements.Functions.Math.Boolean4Integrator, redeclare model Condition = ETL.Requirements.Conditions.Math.LowerEqual) annotation(
        Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      Blocks.Math.Constant integerConstant(k = threshold) annotation(
        Placement(transformation(extent = {{-60, -40}, {-40, -20}})));
    equation
      connect(u, check.u) annotation(
        Line(points = {{-110, 0}, {-11, 0}}, color = {162, 29, 33}));
      connect(tl, check.tl) annotation(
        Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
      connect(check.y, y) annotation(
        Line(points = {{11, 0}, {110, 0}}, color = {162, 29, 33}));
      connect(integerConstant.y, check.threshold) annotation(
        Line(points = {{-39, -30}, {-20, -30}, {-20, -8}, {-11, -8}}, color = {0, 0, 0}));
      //         Text(
      //           extent={{-74,32},{74,-36}},
      //           lineColor={0,0,0},
      //           fillColor={28,108,200},
      //           fillPattern=FillPattern.Solid,
      //           textString=boxName),
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{-72, 72}, {68, 44}}, lineColor = {28, 108, 200}, textString = "Check duration"), Text(extent = {{-50, 28}, {46, -26}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "", fontName = "Symbol")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckDurationLowerEqual</b>(<b>u</b> = condition, <b>threshold</b>=threshold, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the<b> </b>duration<b> </b>while the Boolean on<b> u </b>is true is lower or equal to the <b>threshold</b> at the end of the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set. The value of y is undecided within the time period tl until the decision whether the condition is satisfied can be made. Then it is true or false.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create continuous time locators, refer to the <a href=\"modelica://ETL.TimeLocators.ContinuousTimeLocator\">ContinuousTimeLocator</a> block. To create discrete time locators, refer to the <a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://ETL.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://ETL.Blocks.Logical.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another requirement block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
    end CheckDurationLowerEqual;

    block Ensure
    protected
      parameter Integer N = CRML.ETL.Types.nMaxOverlap;
    public
      ETL.Connectors.Boolean4Input u "Boolean4 condition" annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      ETL.Connectors.TimeLocatorInput[N] tl annotation(
        Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      ETL.Connectors.Boolean4Output y "Result of the comparison" annotation(
        Placement(transformation(extent = {{100, -10}, {120, 10}})));
      CheckCountEqual checkCountEqual(threshold = 0) annotation(
        Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      CheckAnytime checkAnyTime annotation(
        Placement(transformation(extent = {{-50, -40}, {-30, -20}})));
      Blocks.Logical4.And4 and4_1 annotation(
        Placement(transformation(extent = {{60, -10}, {80, 10}})));
      Blocks.Logical4.Not4 not4_1 annotation(
        Placement(transformation(extent = {{-68, -10}, {-48, 10}})));
    equation
      connect(tl, checkCountEqual.tl) annotation(
        Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
      connect(u, checkAnyTime.u) annotation(
        Line(points = {{-110, 0}, {-80, 0}, {-80, -30}, {-51, -30}}, color = {162, 29, 33}));
      connect(tl, checkAnyTime.tl) annotation(
        Line(points = {{0, 100}, {0, 60}, {-40, 60}, {-40, -20}, {-40, -20}}, color = {0, 0, 255}));
      connect(checkCountEqual.y, and4_1.u1) annotation(
        Line(points = {{11, 0}, {40, 0}, {40, 8}, {59, 8}}, color = {162, 29, 33}));
      connect(checkAnyTime.y, and4_1.u2) annotation(
        Line(points = {{-29, -30}, {40, -30}, {40, -8}, {59, -8}}, color = {162, 29, 33}));
      connect(and4_1.y, y) annotation(
        Line(points = {{81, 0}, {90, 0}, {90, 0}, {110, 0}}, color = {162, 29, 33}));
      connect(u, not4_1.u) annotation(
        Line(points = {{-110, 0}, {-69, 0}}, color = {162, 29, 33}));
      connect(not4_1.y, checkCountEqual.u) annotation(
        Line(points = {{-47, 0}, {-11, 0}}, color = {162, 29, 33}));
      //         Text(
      //           extent={{-74,32},{74,-36}},
      //           lineColor={0,0,0},
      //           fillColor={28,108,200},
      //           fillPattern=FillPattern.Solid,
      //           textString=boxName),
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Text(extent = {{-68, 72}, {72, 44}}, lineColor = {28, 108, 200}, textString = "Ensure"), Line(points = {{-78, -62}, {-50, -62}, {-50, -18}, {60, -18}, {60, -64}, {82, -64}}, color = {0, 0, 0}), Text(extent = {{-18, 58}, {28, -4}}, lineColor = {0, 0, 0}, fontName = "Symbol", textString = "")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>Ensure</b>(<b>u</b> = condition, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the condition <b>u</b> is true all along the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set. The value of <b>y</b> is always undecided within the time period <b>tl</b>, and is true or false at the end of <b>tl</b>.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The difference with the <a href=\"modelica://CRML.Requirements.CheckAnytime\">CheckAnyTime</a> block is the following: <b>Ensure</b> is evaluated all along time period <b>tl</b> and the sole decision event is the end of <b>tl</b>. Therefore, the value of <b>y</b> can never be true inside <b>tl</b>, but only at the end of <b>tl</b>.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create continuous time locators, refer to the <a href=\"modelica://ETL.TimeLocators.ContinuousTimeLocator\">ContinuousTimeLocator</a> block. To create discrete time locators, refer to the <a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://ETL.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://ETL.Blocks.Logical.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another requirement block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
    end Ensure;
    annotation(
      Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Text(extent = {{-64, 36}, {58, -32}}, lineColor = {0, 0, 0}, textString = "ℛ")}));
  end Requirements;

  package Blocks
    package Events "Events blocks"
      block RisingEdge "Output y is true, if the input u has a rising edge (u becomes true), otherwise it is false"
        ETL.Connectors.BooleanInput u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
      initial equation
        pre(u) = false;
      equation
        y = edge(u);
        annotation(
          defaultComponentName = "rising1",
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -68}, {-36, -68}, {-36, -24}, {22, -24}, {22, -68}, {66, -68}}), Line(points = {{-80, 32}, {-36, 32}, {-36, 76}, {-36, 76}, {-36, 32}, {66, 32}}, color = {255, 0, 255})}),
          Documentation(info = "<html>
<p>
A rising edge of the Boolean input u results in y = <b>true</b> at this
time instant. At all other time instants, y = <b>false</b>.
</p>

<p>
The usage is demonstrated, e.g., in example
<a href=\"modelica://Modelica.Blocks.Examples.BooleanNetwork1\">Modelica.Blocks.Examples.BooleanNetwork1</a>.
</p>

</html>"),Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -68}, {-36, -68}, {-36, -24}, {22, -24}, {22, -68}, {66, -68}}), Line(points = {{-80, 32}, {-36, 32}, {-36, 76}, {-36, 76}, {-36, 32}, {66, 32}}, color = {255, 0, 255})}));
      end RisingEdge;

      block RisingEdge4 "Output y is true, if the input u has a rising edge (u becomes true), otherwise it is false"
        import CRML.ETL.Types.Boolean4;
      protected
        Boolean v = (u == Boolean4.true4);
      public
        ETL.Connectors.Boolean4Input u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
      initial equation
        pre(u) = Boolean4.false4;
        pre(v) = false;
      equation
        y = edge(v);
        annotation(
          defaultComponentName = "rising1",
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -68}, {-36, -68}, {-36, -24}, {22, -24}, {22, -68}, {66, -68}}), Line(points = {{-80, 32}, {-36, 32}, {-36, 76}, {-36, 76}, {-36, 32}, {66, 32}}, color = {255, 0, 255})}),
          Documentation(info = "<html>
<p>
A rising edge of the Boolean input u results in y = <b>true</b> at this
time instant. At all other time instants, y = <b>false</b>.
</p>

<p>
The usage is demonstrated, e.g., in example
<a href=\"modelica://Modelica.Blocks.Examples.BooleanNetwork1\">Modelica.Blocks.Examples.BooleanNetwork1</a>.
</p>

</html>"),Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -68}, {-36, -68}, {-36, -24}, {22, -24}, {22, -68}, {66, -68}}), Line(points = {{-80, 32}, {-36, 32}, {-36, 76}, {-36, 76}, {-36, 32}, {66, 32}}, color = {255, 0, 255})}));
      end RisingEdge4;

      block FallingEdge "Output y is true, if the input u has a falling edge (u becomes false), otherwise it is false"
        ETL.Connectors.BooleanInput u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
      protected
        Boolean not_u = not u;
      initial equation
        pre(not_u) = true;
      equation
        y = edge(not_u);
        annotation(
          defaultComponentName = "falling1",
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -68}, {-36, -68}, {-36, -24}, {22, -24}, {22, -68}, {66, -68}}), Line(points = {{-80, 32}, {24, 32}, {24, 76}, {24, 76}, {24, 32}, {66, 32}}, color = {255, 0, 255})}),
          Documentation(info = "<html>
<p>
A falling edge of the Boolean input u results in y = <b>true</b> at this
time instant. At all other time instants, y = <b>false</b>.
</p>

<p>
The usage is demonstrated, e.g., in example
<a href=\"modelica://Modelica.Blocks.Examples.BooleanNetwork1\">Modelica.Blocks.Examples.BooleanNetwork1</a>.
</p>

</html>"),Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -68}, {-36, -68}, {-36, -24}, {22, -24}, {22, -68}, {66, -68}}), Line(points = {{-80, 32}, {24, 32}, {24, 76}, {24, 76}, {24, 32}, {66, 32}}, color = {255, 0, 255})}));
      end FallingEdge;

      block FallingEdge4 "Output y is true, if the input u has a falling edge (u becomes false), otherwise it is false"
        import CRML.ETL.Types.Boolean4;
      protected
        Boolean v = (u == Boolean4.false4);
      public
        ETL.Connectors.Boolean4Input u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
      initial equation
        pre(u) = Boolean4.false4;
        pre(v) = false;
      equation
        y = edge(v);
        annotation(
          defaultComponentName = "falling1",
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -68}, {-36, -68}, {-36, -24}, {22, -24}, {22, -68}, {66, -68}}), Line(points = {{-80, 32}, {24, 32}, {24, 76}, {24, 76}, {24, 32}, {66, 32}}, color = {255, 0, 255})}),
          Documentation(info = "<html>
<p>
A falling edge of the Boolean input u results in y = <b>true</b> at this
time instant. At all other time instants, y = <b>false</b>.
</p>

<p>
The usage is demonstrated, e.g., in example
<a href=\"modelica://Modelica.Blocks.Examples.BooleanNetwork1\">Modelica.Blocks.Examples.BooleanNetwork1</a>.
</p>

</html>"),Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -68}, {-36, -68}, {-36, -24}, {22, -24}, {22, -68}, {66, -68}}), Line(points = {{-80, 32}, {24, 32}, {24, 76}, {24, 76}, {24, 32}, {66, 32}}, color = {255, 0, 255})}));
      end FallingEdge4;

      block ChangingEdge "Output y is true, if the input u has either a rising (becomes true) or a falling edge (becomes false), otherwise it is false"
        ETL.Connectors.BooleanInput u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
      initial equation
        pre(u) = false;
      equation
        y = change(u);
        annotation(
          defaultComponentName = "changing1",
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -68}, {-36, -68}, {-36, -24}, {22, -24}, {22, -68}, {66, -68}}), Line(points = {{-80, 32}, {-36, 32}, {-36, 76}, {-36, 76}, {-36, 32}, {66, 32}}, color = {255, 0, 255}), Line(points = {{24, 32}, {24, 76}}, color = {255, 0, 255})}),
          Documentation(info = "<html>
<p>
A changing edge, i.e., either rising or falling,
of the Boolean input u results in y = <b>true</b> at this
time instant. At all other time instants, y = <b>false</b>.
</p>

<p>
The usage is demonstrated, e.g., in example
<a href=\"modelica://Modelica.Blocks.Examples.BooleanNetwork1\">Modelica.Blocks.Examples.BooleanNetwork1</a>.
</p>

</html>"),Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -68}, {-36, -68}, {-36, -24}, {22, -24}, {22, -68}, {66, -68}}), Line(points = {{-80, 32}, {-36, 32}, {-36, 76}, {-36, 76}, {-36, 32}, {66, 32}}, color = {255, 0, 255}), Line(points = {{24, 32}, {24, 76}}, color = {255, 0, 255})}));
      end ChangingEdge;

      block ChangingEdge4 "Output y is true, if the input u has either a rising (becomes true) or a falling edge (becomes false), otherwise it is false"
        import CRML.ETL.Types.Boolean4;
      protected
        Boolean v1 = (u == Boolean4.false4);
        Boolean v2 = (u == Boolean4.true4);
      public
        ETL.Connectors.Boolean4Input u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
      initial equation
        pre(u) = Boolean4.false4;
        pre(v1) = false;
        pre(v2) = false;
      equation
        y = edge(v1) or edge(v2);
        annotation(
          defaultComponentName = "changing1",
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -68}, {-36, -68}, {-36, -24}, {22, -24}, {22, -68}, {66, -68}}), Line(points = {{-80, 32}, {-36, 32}, {-36, 76}, {-36, 76}, {-36, 32}, {66, 32}}, color = {255, 0, 255}), Line(points = {{24, 32}, {24, 76}}, color = {255, 0, 255})}),
          Documentation(info = "<html>
<p>
A changing edge, i.e., either rising or falling,
of the Boolean input u results in y = <b>true</b> at this
time instant. At all other time instants, y = <b>false</b>.
</p>

<p>
The usage is demonstrated, e.g., in example
<a href=\"modelica://Modelica.Blocks.Examples.BooleanNetwork1\">Modelica.Blocks.Examples.BooleanNetwork1</a>.
</p>

</html>"),Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -68}, {-36, -68}, {-36, -24}, {22, -24}, {22, -68}, {66, -68}}), Line(points = {{-80, 32}, {-36, 32}, {-36, 76}, {-36, 76}, {-36, 32}, {66, 32}}, color = {255, 0, 255}), Line(points = {{24, 32}, {24, 76}}, color = {255, 0, 255})}));
      end ChangingEdge4;

      block Before "Returns true if event on u1 occurs before event on u2"
      protected
        Real t1(start = 0, fixed = true);
        Real t2(start = 0, fixed = true);
        Boolean x1(start = false, fixed = true);
        Boolean x2(start = false, fixed = true);
      public
        ETL.Connectors.BooleanInput u1 annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}}), iconTransformation(extent = {{-120, 70}, {-100, 90}})));
        ETL.Connectors.BooleanInput u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), iconTransformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.BooleanOutput y "y = true if event on u1 occurs before event on u2" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.BooleanOutput isUndecided(start = true, fixed = true) "isUndecided = false if at least one  event has occurred on u1 or  u2, else true" annotation(
          Placement(transformation(extent = {{100, -90}, {120, -70}})));
        ETL.Connectors.BooleanInput reset annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
        ETL.Connectors.BooleanInput strictlyBefore "If true, event on u1 should occurr strictly before event on u2" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
      algorithm
        when reset then
          x1 := false;
          x2 := false;
          isUndecided := true;
        end when;
        when u1 then
          x1 := true;
          t1 := time;
          isUndecided := false;
        end when;
        when u2 then
          x2 := true;
          t2 := time;
        end when;
        if strictlyBefore then
          y := (x1 and x2 and (t2 - t1) > 0) or (x1 and not x2);
        else
          y := (x1 and x2 and (t2 - t1) >= 0) or (x1 and not x2);
        end if;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-80, -58}, {-4, -58}, {-4, -58}, {38, -58}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 32}, {-20, 32}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-62, 76}, {-62, 32}}, color = {217, 67, 180}), Line(points = {{24, -14}, {24, -58}}, color = {0, 0, 0}), Text(extent = {{-90, -40}, {60, 40}}, lineColor = {0, 0, 0}, textString = "<")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-80, -58}, {-4, -58}, {-4, -58}, {38, -58}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 32}, {-20, 32}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-62, 76}, {-62, 32}}, color = {217, 67, 180}), Line(points = {{24, -14}, {24, -58}}, color = {0, 0, 0}), Text(extent = {{-90, -40}, {60, 40}}, lineColor = {0, 0, 0}, textString = "<")}));
      end Before;

      block ElapsedTime "Elapsed time u2 - u1 time between events u1 and u2"
      protected
        Real t1(start = 0, fixed = true);
        Real t2(start = 0, fixed = true);
        Boolean x1(start = false, fixed = true);
        Boolean x2(start = false, fixed = true);
      public
        ETL.Connectors.BooleanInput u1 annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}}), iconTransformation(extent = {{-120, 70}, {-100, 90}})));
        ETL.Connectors.RealOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.BooleanInput u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), iconTransformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.BooleanOutput isUndecided "isUndecided = false if both events have occurred on u1 and u2, else true" annotation(
          Placement(transformation(extent = {{100, -90}, {120, -70}})));
        ETL.Connectors.BooleanInput reset annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
      algorithm
        when reset then
          x1 := false;
          x2 := false;
        end when;
        when u1 then
          x1 := true;
          t1 := time;
        end when;
        when u2 then
          x2 := true;
          t2 := time;
        end when;
        isUndecided := not (x1 and x2);
        y := t2 - t1;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-80, -58}, {-4, -58}, {-4, -58}, {38, -58}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 32}, {-20, 32}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-62, 76}, {-62, 32}}, color = {217, 67, 180}), Line(points = {{24, -14}, {24, -58}}, color = {0, 0, 0})}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-80, -58}, {-4, -58}, {-4, -58}, {38, -58}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 32}, {-20, 32}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-62, 76}, {-62, 32}}, color = {217, 67, 180}), Line(points = {{24, -14}, {24, -58}}, color = {0, 0, 0})}));
      end ElapsedTime;

      block Event3ToEvent
        import CRML.ETL.Types.Boolean3;
      protected
        Boolean x(start = false, fixed = true) = (u == Boolean3.true3);
      public
        ETL.Connectors.Boolean3Input u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = edge(x);
        annotation(
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {0, -100}}, fillColor = {213, 255, 170}, fillPattern = FillPattern.Solid, lineColor = {158, 158, 0}), Rectangle(extent = {{0, 100}, {100, -100}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Line(points = {{-58, 0}, {68, 0}, {48, 20}}, color = {0, 0, 0}), Line(points = {{68, 0}, {48, -20}}, color = {0, 0, 0})}),
          Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {0, -100}}, fillColor = {213, 255, 170}, fillPattern = FillPattern.Solid, lineColor = {158, 158, 0}), Rectangle(extent = {{0, 100}, {100, -100}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Line(points = {{-58, 0}, {68, 0}, {48, 20}}, color = {0, 0, 0}), Line(points = {{68, 0}, {48, -20}}, color = {0, 0, 0})}));
      end Event3ToEvent;

      block Event4ToEvent
        import CRML.ETL.Types.Boolean4;
        // protected
        Boolean x(start = false, fixed = true) = (u == Boolean4.true4);
      public
        ETL.Connectors.Boolean4Input u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = edge(x);
        annotation(
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {0, -100}}, fillColor = {255, 213, 170}, fillPattern = FillPattern.Solid, lineColor = {255, 170, 170}), Rectangle(extent = {{0, 100}, {100, -100}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Line(points = {{-58, 0}, {68, 0}, {48, 20}}, color = {0, 0, 0}), Line(points = {{68, 0}, {48, -20}}, color = {0, 0, 0})}),
          Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {0, -100}}, fillColor = {255, 213, 170}, fillPattern = FillPattern.Solid, lineColor = {255, 170, 170}), Rectangle(extent = {{0, 100}, {100, -100}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Line(points = {{-58, 0}, {68, 0}, {48, 20}}, color = {0, 0, 0}), Line(points = {{68, 0}, {48, -20}}, color = {0, 0, 0})}));
      end Event4ToEvent;

      block EventCounter "Counts events on input u"
      protected
        Integer x(start = 0, fixed = true);
      public
        ETL.Connectors.BooleanInput u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.IntegerOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.BooleanInput reset "Reset counter to zero" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
      algorithm
        when reset then
          x := 0;
        end when;
        when u then
          x := x + 1;
        end when;
        y := x;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-82, 12}, {-62, 12}, {-62, 32}, {-22, 32}, {-22, 52}, {38, 52}, {38, 72}, {68, 72}, {68, 91.9805}, {88, 92}}, color = {244, 125, 35}), Line(points = {{-80, -60}, {-62, -60}, {-62, -60}, {-20, -60}, {-20, -60}, {88, -60}}, color = {255, 0, 255}), Line(points = {{-62, -16}, {-62, -60}}, color = {217, 67, 180}), Line(points = {{-20, -16}, {-20, -60}}, color = {217, 67, 180}), Line(points = {{38, -16}, {38, -60}}, color = {217, 67, 180}), Line(points = {{68, -16}, {68, -60}}, color = {217, 67, 180})}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-82, 12}, {-62, 12}, {-62, 32}, {-22, 32}, {-22, 52}, {38, 52}, {38, 72}, {68, 72}, {68, 91.981}, {88, 92}}, color = {244, 125, 35}), Line(points = {{-80, -60}, {-62, -60}, {-62, -60}, {-20, -60}, {-20, -60}, {88, -60}}, color = {255, 0, 255}), Line(points = {{-62, -16}, {-62, -60}}, color = {217, 67, 180}), Line(points = {{-20, -16}, {-20, -60}}, color = {217, 67, 180}), Line(points = {{38, -16}, {38, -60}}, color = {217, 67, 180}), Line(points = {{68, -16}, {68, -60}}, color = {217, 67, 180})}));
      end EventCounter;

      block EventDelay "Event delay"
      protected
        parameter Integer Nmax = 10;
        // Maximum number of elements in the stack
        Integer N;
        // Number of elements in the stack
        Real T[Nmax](each start = 0, each fixed = true);
        // Time stack
        Boolean V[Nmax](each start = true, each fixed = true);
        // Value stack
        Integer n1t;
        // Stack top (points above the last element pushed on the stack)
        Integer n2t(start = 1, fixed = true);
        // Stack top
        Integer n1b;
        // Stack bottom (points to the first element pushed on the stack)
        Integer n2b(start = 1, fixed = true);
        // Stack bottom
        Integer n;
        // Number of stack pushes
      public
        ETL.Connectors.BooleanInput u(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.RealInput delay "Shift delay" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
      initial equation
        n = if u then 1 else 0;
        n1t = if u then 2 else 1;
        n1b = if u then 1 else 0;
      algorithm
        assert(N <= Nmax, "Stack overflow");
        N := if (n2t == n2b) then n1t - n1b else Nmax - (n1b - n1t);
        when change(u) then
          T[n1t] := time;
          V[n1t] := u;
          n1t := if (pre(n1t) < Nmax) then pre(n1t) + 1 else 1;
          n2t := if (pre(n1t) < Nmax) then pre(n2t) else pre(n2t) + 1;
          n := pre(n) + 1;
        end when;
        when n > 0 then
          n1b := 1;
        end when;
        y := false;
        when (n1b > 0) and (time >= T[n1b] + delay) then
          y := V[n1b];
          n1b := if (pre(n1b) < Nmax) then pre(n1b) + 1 else 1;
          n2b := if (pre(n1b) < Nmax) then pre(n2b) else pre(n2b) + 1;
        end when;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -58}, {-4, -58}, {-4, -58}, {38, -58}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 32}, {-20, 32}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-62, 76}, {-62, 32}}, color = {217, 67, 180}), Line(points = {{-20, 76}, {-20, 32}}, color = {217, 67, 180}), Line(points = {{-4, -14}, {-4, -58}}, color = {0, 0, 0}), Line(points = {{38, -14}, {38, -58}}, color = {0, 0, 0})}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -58}, {-4, -58}, {-4, -58}, {38, -58}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 32}, {-20, 32}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-62, 76}, {-62, 32}}, color = {217, 67, 180}), Line(points = {{-20, 76}, {-20, 32}}, color = {217, 67, 180}), Line(points = {{-4, -14}, {-4, -58}}, color = {0, 0, 0}), Line(points = {{38, -14}, {38, -58}}, color = {0, 0, 0})}));
      end EventDelay;

      block EventClockedDelay "Boolean signal clocked delay"
      protected
        parameter Integer Nmax = 10;
        // Maximum number of elements in the stack
        Integer N;
        // Number of elements in the stack
        Real T[Nmax](each start = 0, each fixed = true);
        // Time stack
        Boolean V[Nmax](each start = true, each fixed = true);
        // Value stack
        Integer n1t;
        // Stack top (points above the last element pushed on the stack)
        Integer n2t(start = 1, fixed = true);
        // Stack top
        Integer n1b;
        // Stack bottom (points to the first element pushed on the stack)
        Integer n2b(start = 1, fixed = true);
        // Stack bottom
        Integer n;
        // Number of stack pushes
        Integer ticks(start = 0, fixed = true);
        // Clock ticks counter
        Boolean u0(start = false, fixed = true);
        // True input delayed to next clock tick
        Boolean u1(start = false, fixed = true);
        // True input delayed to next clock tick
      public
        ETL.Connectors.BooleanInput u(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.IntegerInput delay "Shift delay" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
      public
        ETL.Connectors.BooleanInput clock(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}})));
      initial equation
        n = if u then 1 else 0;
        n1t = if u then 2 else 1;
        n1b = if u then 1 else 0;
      algorithm
        assert(N <= Nmax, "Stack overflow");
        N := if (n2t == n2b) then n1t - n1b else Nmax - (n1b - n1t);
        when u then
          u0 := true;
        end when;
        when clock then
          u1 := u0;
          u0 := false;
          ticks := pre(ticks) + 1;
        end when;
        when change(u1) then
          T[n1t] := ticks;
          V[n1t] := u1;
          n1t := if (pre(n1t) < Nmax) then pre(n1t) + 1 else 1;
          n2t := if (pre(n1t) < Nmax) then pre(n2t) else pre(n2t) + 1;
          n := pre(n) + 1;
        end when;
        when n > 0 then
          n1b := 1;
        end when;
        y := false;
        when (n1b > 0) and (ticks >= T[n1b] + delay) then
          y := V[n1b];
          n1b := if (pre(n1b) < Nmax) then pre(n1b) + 1 else 1;
          n2b := if (pre(n1b) < Nmax) then pre(n2b) else pre(n2b) + 1;
        end when;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -58}, {-4, -58}, {-4, -58}, {38, -58}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 32}, {-20, 32}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Line(points = {{-62, 76}, {-62, 32}}, color = {217, 67, 180}), Line(points = {{-20, 76}, {-20, 32}}, color = {217, 67, 180}), Line(points = {{-4, -14}, {-4, -58}}, color = {0, 0, 0}), Line(points = {{38, -14}, {38, -58}}, color = {0, 0, 0})}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -58}, {-4, -58}, {-4, -58}, {38, -58}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 32}, {-20, 32}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Line(points = {{-62, 76}, {-62, 32}}, color = {217, 67, 180}), Line(points = {{-20, 76}, {-20, 32}}, color = {217, 67, 180}), Line(points = {{-4, -14}, {-4, -58}}, color = {0, 0, 0}), Line(points = {{38, -14}, {38, -58}}, color = {0, 0, 0})}));
      end EventClockedDelay;

      block EventFilter "Filters events depending on condition"
      protected
        Boolean x(start = false, fixed = true);
      public
        ETL.Connectors.BooleanInput u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.BooleanInput cond "Condition" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 0, origin = {-110, 80})));
      equation
        x = u and cond;
        y = edge(x);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-80, -60}, {-62, -60}, {-62, -60}, {-20, -60}, {-20, -60}, {88, -60}}, color = {255, 0, 255}), Line(points = {{-62, -16}, {-62, -60}}, color = {217, 67, 180}), Line(points = {{-20, -16}, {-20, -60}}, color = {217, 67, 180}), Line(points = {{38, -16}, {38, -60}}, color = {217, 67, 180}), Line(points = {{68, -16}, {68, -60}}, color = {217, 67, 180}), Line(points = {{-78, 38}, {-50, 38}, {-50, 82}, {48, 82}, {48, 38}, {68, 38}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-80, -60}, {-62, -60}, {-62, -60}, {-20, -60}, {-20, -60}, {88, -60}}, color = {255, 0, 255}), Line(points = {{-62, -16}, {-62, -60}}, color = {217, 67, 180}), Line(points = {{-20, -16}, {-20, -60}}, color = {217, 67, 180}), Line(points = {{38, -16}, {38, -60}}, color = {217, 67, 180}), Line(points = {{68, -16}, {68, -60}}, color = {217, 67, 180}), Line(points = {{-78, 38}, {-50, 38}, {-50, 82}, {48, 82}, {48, 38}, {68, 38}})}));
      end EventFilter;

      block EventPeriodic "Generate periodic events"
        parameter Real period = 1 "Time for one period (s)";
        parameter Real startTime = 0 "Time instant of first sample trigger";
      protected
        Real tick;
        Boolean btick(start = false, fixed = true) = (time > tick);
      public
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.BooleanInput reset annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
      initial equation
        if (cardinality(reset) == 0) then
          tick = startTime;
        else
          tick = Modelica.Constants.inf;
        end if;
      equation
        if (cardinality(reset) == 0) then
          reset = false;
        end if;
        when {time >= pre(tick) + period, reset} then
          tick = time;
        end when;
        y = edge(btick);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5.0, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Polygon(points = {{-80, 88}, {-88, 66}, {-72, 66}, {-80, 88}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, 66}, {-80, -82}}, color = {255, 0, 255}), Line(points = {{-90, -70}, {72, -70}}, color = {255, 0, 255}), Polygon(points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Line(points = {{-60, -70}, {-60, 40}}), Line(points = {{-20, -70}, {-20, 40}}), Line(points = {{20, -70}, {20, 40}}), Line(points = {{60, -70}, {60, 40}}), Text(extent = {{-172, 56}, {172, 90}}, lineColor = {0, 0, 0}, textString = "%period"), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid)}),
          Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-70, 82}, {-76, 60}, {-64, 60}, {-70, 82}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-70, 60}, {-70, -98}}, color = {95, 95, 95}), Line(points = {{-90, -80}, {68, -80}}, color = {95, 95, 95}), Polygon(points = {{90, -80}, {68, -74}, {68, -86}, {90, -80}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{54, -90}, {106, -102}}, lineColor = {0, 0, 0}, textString = "time"), Text(extent = {{-64, 82}, {-46, 64}}, lineColor = {0, 0, 0}, textString = "y"), Text(extent = {{-51, -82}, {-11, -91}}, lineColor = {0, 0, 0}, textString = "startTime"), Line(points = {{-30, 37}, {-30, 9}}, color = {95, 95, 95}), Line(points = {{0, 37}, {0, 8}}, color = {95, 95, 95}), Line(points = {{-30, 31}, {0, 31}}, color = {95, 95, 95}), Text(extent = {{-37, 51}, {9, 39}}, lineColor = {0, 0, 0}, textString = "period"), Line(points = {{-73, 9}, {-30, 9}}, color = {95, 95, 95}), Polygon(points = {{-30, 31}, {-21, 33}, {-21, 29}, {-30, 31}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{0, 31}, {-8, 33}, {-8, 29}, {0, 31}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{-91, 13}, {-71, 3}}, lineColor = {0, 0, 0}, textString = "true"), Text(extent = {{-90, -69}, {-70, -78}}, lineColor = {0, 0, 0}, textString = "false"), Line(points = {{0, -80}, {0, 9}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{-30, -80}, {-30, 9}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{30, -80}, {30, 9}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{60, -80}, {60, 9}}, color = {0, 0, 255}, thickness = 0.5)}),
          Documentation(info = "<html>
<h4>Adapted from the Modelica.Blocks.Sources library </h4>
<h4>Version 1.0 </h4>
<p>The Boolean output y is a trigger signal where the output y is only <b>true</b> at sample times (defined by parameter <b>period</b>) and is otherwise <b>false</b>. </p>
<p><img src=\"modelica://Modelica/Resources/Images/Blocks/Sources/SampleTrigger.png\" alt=\"SampleTrigger.png\"/> </p>
</html>"));
      end EventPeriodic;

      block EventProjection "Event projection on a clock"
      protected
        Boolean x(start = false, fixed = true);
        // Input event delayed until the next clock tick
      public
        ETL.Connectors.BooleanInput clock annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}})));
        ETL.Connectors.BooleanInput u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      algorithm
        /* Maintain event u until the next clock tick */
        when u then
          x := true;
        end when;
        y := false;
        /* Output event on clock tick */
        when clock then
          if x then
            y := true;
            x := false;
          end if;
        end when;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -58}, {-4, -58}, {-4, -58}, {38, -58}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 32}, {-20, 32}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Line(points = {{-22, 76}, {-22, 32}}, color = {217, 67, 180}), Line(points = {{20, 76}, {20, 32}}, color = {217, 67, 180}), Line(points = {{-38, -14}, {-38, -58}}, color = {0, 0, 0}), Line(points = {{10, -14}, {10, -58}}, color = {0, 0, 0})}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -58}, {-4, -58}, {-4, -58}, {38, -58}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 32}, {-20, 32}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Line(points = {{-22, 76}, {-22, 32}}, color = {217, 67, 180}), Line(points = {{20, 76}, {20, 32}}, color = {217, 67, 180}), Line(points = {{-38, -14}, {-38, -58}}, color = {0, 0, 0}), Line(points = {{10, -14}, {10, -58}}, color = {0, 0, 0})}));
      end EventProjection;

      block EventTable "Table for events"
        parameter Boolean option_width = true "true: width is used - false: time instant is used";
        parameter CRML.Units.SI.Time width[:](each min = 0) = {1} "Vector of widths";
        parameter CRML.Units.SI.Time instant[:](each min = 0) = {1} "Vector of time instants";
      protected
        parameter Integer iMax = if option_width then size(width, 1) else size(instant, 1);
        CRML.Units.SI.Time t[iMax];
        Integer i(start = 1, fixed = true);
        discrete Boolean val(start = false, fixed = true);
      public
        ETL.Connectors.BooleanOutput y annotation(
          extent = [100, -10; 120, 10],
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      algorithm
        for i in 1:iMax loop
          if option_width then
            assert(width[i] > 0, "Width must be strictly positive");
          else
            assert(instant[1] > 0, "First instant must be strictly positive");
            if (i > 1) then
              assert(instant[i] > instant[i - 1], "Instants time series must be stricly increasing");
            end if;
          end if;
        end for;
        t[1] := if option_width then width[1] else instant[1];
        for i in 2:iMax loop
          t[i] := if option_width then t[i - 1] + width[i] else instant[i];
        end for;
        when (time > t[i]) then
          if (i <= iMax) then
            val := not (pre(val));
          end if;
          if (i < iMax) then
            i := pre(i) + 1;
          end if;
        end when;
        y := change(val);
        annotation(
          Coordsys(extent = [-100, -100; 100, 100], grid = [2, 2], component = [20, 20]),
          Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-60, -74}, {-19, -82}}, lineColor = {0, 0, 0}, textString = "instant"), Line(points = {{-70, 20}, {-41, 20}}, color = {95, 95, 95}), Text(extent = {{-95, 26}, {-66, 17}}, lineColor = {0, 0, 0}, textString = "true"), Text(extent = {{-96, -60}, {-75, -69}}, lineColor = {0, 0, 0}, textString = "false"), Polygon(points = {{-70, 92}, {-76, 70}, {-64, 70}, {-70, 92}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-70, 70}, {-70, -88}}, color = {95, 95, 95}), Line(points = {{-90, -70}, {68, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-40, 20}, {-40, -70}}, color = {28, 108, 200}, thickness = 0.5), Line(points = {{0, 20}, {0, -70}}, color = {28, 108, 200}, thickness = 0.5), Line(points = {{60, 20}, {60, -70}}, color = {28, 108, 200}, thickness = 0.5)}),
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5.0, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Polygon(points = {{-80, 88}, {-88, 66}, {-72, 66}, {-80, 88}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, 66}, {-80, -82}}, color = {255, 0, 255}), Line(points = {{-90, -70}, {72, -70}}, color = {255, 0, 255}), Polygon(points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-50, 60}, {30, 30}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-50, 30}, {30, 0}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-50, 0}, {30, -30}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-50, -30}, {30, -60}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid)}),
          Window(x = 0.1, y = 0.22, width = 0.6, height = 0.6),
          Documentation(info = "<html>
<h4>Adapted from the Modelica.Blocks.Sources library </h4>
<p><b>Version 1.0</b> </p>
</html>"));
      end EventTable;

      block Initial "Generate an event at initial time"
      protected
        Boolean e(start = false, fixed = true) = (time > 0);
      public
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = edge(e);
        annotation(
          Coordsys(extent = [-100, -100; 100, 100], grid = [2, 2], component = [20, 20]),
          Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5.0, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{71, 7}, {85, -7}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Text(extent = {{-92, 40}, {88, -40}}, lineColor = {0, 0, 0}, textString = "t=0")}),
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5.0, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{71, 7}, {85, -7}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Text(extent = {{-92, 40}, {88, -40}}, lineColor = {0, 0, 0}, textString = "t=0")}),
          Window(x = 0.1, y = 0.22, width = 0.6, height = 0.6),
          Documentation(info = "<html>
<p><b>Version 1.0</b></p>
</HTML>
          "));
      end Initial;

      block TimeFrom "Continuous physical time from an event"
        parameter Real initialValue = 0 "Output value before the first event has occurred";
      protected
        Real t0(start = 0, fixed = true);
        Boolean eventOccurred(start = false, fixed = true);
        outer CRML.TimeLocators.Continuous.Master master;
      public
        ETL.Connectors.BooleanInput u(start = false, fixed = true) "Event giving the time origin" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.RealOutput y "Delay since the time origin" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        if cardinality(u) == 0 then
          u = master.y.timePeriod;
        end if;
        when u then
          t0 = time;
          eventOccurred = true;
        end when;
        y = if eventOccurred then time - t0 else initialValue;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.06), graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 0}), Ellipse(extent = {{9, -10}, {-11, 10}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-1, 0}, {52, 50}}, color = {0, 0, 0}), Rectangle(extent = {{80, 6}, {100, -6}}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{-100, 6}, {-80, -6}}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, -120}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {80, 6}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {-6, 80}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {122, -48}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, 60}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {-52, -118}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Documentation(info = "<html>
<p>This component generates the continuous physical time elpased from the event given as input to the block.</p>
<p>The output is equal to initialValue if the event has never occurred. Otherwise, the output is the delay between the current time and the latest event on the input.</p>
<p>The <a href=\"modelica://CRML.TimeLocators.Continuous.Master\">Master</a> time locator can be used to generate the event instead of input u.</p>
</html>"),Diagram(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 0}), Ellipse(extent = {{9, -10}, {-11, 10}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-1, 0}, {52, 50}}, color = {0, 0, 0}), Rectangle(extent = {{80, 6}, {100, -6}}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{-100, 6}, {-80, -6}}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, -120}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {80, 6}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {-6, 80}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {122, -48}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, 60}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {-52, -118}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}));
      end TimeFrom;

      block ClockEvent "Generates a clock signal when the Boolean input changes from false to true"
      protected
        Boolean z;
      public
        ETL.Connectors.BooleanInput u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.ClockOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      initial equation
        pre(u) = false;
      equation
        z = edge(u);
        y = Clock(z);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.06), graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineColor = {0, 140, 72}), Ellipse(extent = {{9, -10}, {-11, 10}}, lineColor = {0, 140, 72}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-1, 0}, {52, 50}}, color = {0, 140, 72}), Rectangle(extent = {{80, 6}, {100, -6}}, fillPattern = FillPattern.Solid, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{-100, 6}, {-80, -6}}, fillPattern = FillPattern.Solid, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, -120}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {80, 6}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {-6, 80}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {122, -48}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, 60}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {-52, -118}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Documentation(info = "<html>
<p>
This component generates a clock signal triggered by a continuous-time
Boolean input signal u: Whenever the Boolean input signal <b>u</b>
changes from <b>false</b> to <b>true</b>, then the output
clock signal <b>y</b> ticks.
</p>

<p>
For an introduction to clocks see
<a href=\"modelica://Modelica_Synchronous.UsersGuide.Clocks\">UsersGuide.Clocks</a>.
</p>

<p>
If a clock is associated to a clocked continuous-time partition, then an <b>integrator</b>
has to be defined that is used to integrate the partition from the previous
to the current clock tick. This is performed by setting parameter <b>useSolver</b>
= <b>true</b> and defining the integration method as String with
parameter <b>solver</b>. Both parameters are in tab <b>Advanced</b>.
For an example, see
<a href=\"modelica://Modelica_Synchronous.Examples.Systems.ControlledMixingUnit\">Examples.Systems.ControlledMixingUnit</a>.
</p>
</html>"),Diagram(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineColor = {0, 140, 72}), Ellipse(extent = {{9, -10}, {-11, 10}}, lineColor = {0, 140, 72}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-1, 0}, {52, 50}}, color = {0, 140, 72}), Rectangle(extent = {{80, 6}, {100, -6}}, fillPattern = FillPattern.Solid, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{-100, 6}, {-80, -6}}, fillPattern = FillPattern.Solid, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, -120}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {80, 6}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {-6, 80}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {122, -48}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, 60}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {-52, -118}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}));
      end ClockEvent;

      block ClockTick "Generates an event when the integer input changes"
        ETL.Connectors.IntegerInput u(start = 0, fixed = true) annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = u <> pre(u);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.06), graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineColor = {217, 67, 180}), Ellipse(extent = {{9, -10}, {-11, 10}}, lineColor = {217, 67, 180}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-1, 0}, {52, 50}}, color = {217, 67, 180}), Rectangle(extent = {{80, 6}, {100, -6}}, fillPattern = FillPattern.Solid, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{-100, 6}, {-80, -6}}, fillPattern = FillPattern.Solid, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, -120}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {80, 6}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {-6, 80}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {122, -48}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, 60}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {-52, -118}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Documentation(info = "<html>
<p>
This component generates a clock signal triggered by a continuous-time
Boolean input signal u: Whenever the Boolean input signal <b>u</b>
changes from <b>false</b> to <b>true</b>, then the output
clock signal <b>y</b> ticks.
</p>

<p>
For an introduction to clocks see
<a href=\"modelica://Modelica_Synchronous.UsersGuide.Clocks\">UsersGuide.Clocks</a>.
</p>

<p>
If a clock is associated to a clocked continuous-time partition, then an <b>integrator</b>
has to be defined that is used to integrate the partition from the previous
to the current clock tick. This is performed by setting parameter <b>useSolver</b>
= <b>true</b> and defining the integration method as String with
parameter <b>solver</b>. Both parameters are in tab <b>Advanced</b>.
For an example, see
<a href=\"modelica://Modelica_Synchronous.Examples.Systems.ControlledMixingUnit\">Examples.Systems.ControlledMixingUnit</a>.
</p>
</html>"),Diagram(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineColor = {217, 67, 180}), Ellipse(extent = {{9, -10}, {-11, 10}}, lineColor = {217, 67, 180}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-1, 0}, {52, 50}}, color = {217, 67, 180}), Rectangle(extent = {{80, 6}, {100, -6}}, fillPattern = FillPattern.Solid, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{-100, 6}, {-80, -6}}, fillPattern = FillPattern.Solid, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, -120}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {80, 6}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {-6, 80}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {122, -48}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, 60}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {-52, -118}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}));
      end ClockTick;

      block ClockToBoolean "Transform clock to clocked Boolean (output is true if clock is active)"
        ETL.Connectors.BooleanOutput y "Clocked Boolean output signal" annotation(
          Placement(transformation(extent = {{100, -20}, {140, 20}})));
        ETL.Connectors.ClockInput u annotation(
          Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
      equation
        when u then
          y = true;
        end when;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-250, 170}, {250, 110}}, textString = "%name", lineColor = {0, 0, 255}), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-74, -82}, {-30, -82}, {-30, -38}, {-30, -38}, {-30, -82}, {72, -82}}, color = {95, 95, 95}, pattern = LinePattern.Dot), Ellipse(extent = {{-40, -28}, {-20, -48}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-72, 34}, {-28, 34}, {-28, 78}, {-28, 78}, {-28, 34}, {74, 34}}, color = {255, 0, 255}, pattern = LinePattern.Dot), Ellipse(extent = {{-38, 88}, {-18, 68}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid)}),
          Diagram(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-250, 170}, {250, 110}}, textString = "%name", lineColor = {0, 0, 255}), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-74, -82}, {-30, -82}, {-30, -38}, {-30, -38}, {-30, -82}, {72, -82}}, color = {95, 95, 95}, pattern = LinePattern.Dot), Ellipse(extent = {{-40, -28}, {-20, -48}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-72, 34}, {-28, 34}, {-28, 78}, {-28, 78}, {-28, 34}, {74, 34}}, color = {255, 0, 255}, pattern = LinePattern.Dot), Ellipse(extent = {{-38, 88}, {-18, 68}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid)}));
      end ClockToBoolean;

      block ShowEvent "Event visualizer"
        ETL.Connectors.BooleanInput u(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ClockEvent eventClock annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        ClockToBoolean clockToBoolean annotation(
          Placement(transformation(extent = {{40, -10}, {60, 10}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        connect(u, eventClock.u) annotation(
          Line(points = {{-110, 0}, {-11, 0}, {-11, 0}}, color = {217, 67, 180}));
        connect(clockToBoolean.u, eventClock.y) annotation(
          Line(points = {{38, 0}, {24, 0}, {24, 0}, {11, 0}}, color = {175, 175, 175}, pattern = LinePattern.Dot, thickness = 0.5));
        connect(clockToBoolean.y, y) annotation(
          Line(points = {{62, 0}, {110, 0}}, color = {217, 67, 180}));
        annotation(
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Ellipse(lineColor = {64, 64, 64}, fillColor = DynamicSelect({192, 192, 192}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-40, -42}, {40, 40}}), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Diagram(coordinateSystem(initialScale = 0.04)));
      end ShowEvent;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Line(points = {{-78, 0}, {70, 0}}, color = {255, 0, 255}), Polygon(points = {{92, 0}, {70, 8}, {70, -8}, {92, 0}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-36, 0}, {-36, 81}}, color = {255, 0, 255}), Line(points = {{40, 0}, {40, 81}}, color = {255, 0, 255})}));
    end Events;

    package Logical "Logical blocks"
      block BooleanConstant "Generate a constant signal of type Boolean"
        parameter Boolean K = true "Constant output value";
        ETL.Connectors.BooleanOutput y annotation(
          extent = [100, -10; 120, 10],
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = K;
        annotation(
          Coordsys(extent = [-100, -100; 100, 100], grid = [2, 2], component = [20, 20]),
          Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 0}, {70, 0}}, color = {255, 0, 128}, thickness = 0.5), Text(extent = {{-47, 30}, {-27, 10}}, lineColor = {192, 192, 192}, textString = "K"), Text(extent = {{-106, 6}, {-86, -4}}, lineColor = {192, 192, 192}, textString = "true"), Text(extent = {{-108, -58}, {-82, -68}}, lineColor = {192, 192, 192}, textString = "false"), Polygon(points = {{-80, 92}, {-86, 70}, {-74, 70}, {-80, 92}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, 70}, {-80, -88}}, color = {192, 192, 192}), Text(extent = {{-74, 92}, {-56, 74}}, lineColor = {192, 192, 192}, textString = "y"), Line(points = {{-100, -70}, {58, -70}}, color = {192, 192, 192}), Polygon(points = {{80, -70}, {58, -64}, {58, -76}, {80, -70}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Text(extent = {{44, -80}, {96, -92}}, lineColor = {192, 192, 192}, textString = "time")}),
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5.0, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Polygon(points = {{-80, 88}, {-88, 66}, {-72, 66}, {-80, 88}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, 66}, {-80, -82}}, color = {255, 0, 255}), Line(points = {{-90, -70}, {72, -70}}, color = {255, 0, 255}), Polygon(points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{71, 7}, {85, -7}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, 0}, {80, 0}}), Text(extent = {{-176, 22}, {168, 56}}, lineColor = {0, 0, 0}, textString = "%K")}),
          Window(x = 0.1, y = 0.22, width = 0.6, height = 0.6),
          Documentation(info = "<html>
<h4>Adapted from the Modelica.Blocks.Sources library </h4>
<p><b>Version 1.0</b> </p>
</html>"));
      end BooleanConstant;

      block BooleanClockedDelay "Boolean signal clocked delay"
      protected
        parameter Integer Nmax = 10;
        // Maximum number of elements in the stack
        Integer N;
        // Number of elements in the stack
        Real T[Nmax](each start = 0, each fixed = true);
        // Time stack
        Boolean V[Nmax](each start = true, each fixed = true);
        // Value stack
        Integer n1t;
        // Stack top (points above the last element pushed on the stack)
        Integer n2t(start = 1, fixed = true);
        // Stack top
        Integer n1b;
        // Stack bottom (points to the first element pushed on the stack)
        Integer n2b(start = 1, fixed = true);
        // Stack bottom
        Integer n;
        // Number of stack pushes
        Integer ticks(start = 0, fixed = true);
        // Clock ticks counter
        Boolean u1(start = false, fixed = true);
        // True input delayed to next clock tick
      public
        ETL.Connectors.BooleanInput u(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.IntegerInput delay "Shift delay" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
      public
        ETL.Connectors.BooleanInput clock(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}})));
      initial equation
        n = if u then 1 else 0;
        n1t = if u then 2 else 1;
        n1b = if u then 1 else 0;
      algorithm
        assert(N <= Nmax, "Stack overflow");
        N := if (n2t == n2b) then n1t - n1b else Nmax - (n1b - n1t);
        when clock then
          u1 := u;
          ticks := pre(ticks) + 1;
        end when;
        when change(u1) then
          T[n1t] := ticks;
          V[n1t] := u1;
          n1t := if (pre(n1t) < Nmax) then pre(n1t) + 1 else 1;
          n2t := if (pre(n1t) < Nmax) then pre(n2t) else pre(n2t) + 1;
          n := pre(n) + 1;
        end when;
        when n > 0 then
          n1b := 1;
        end when;
        when (n1b > 0) and (ticks >= T[n1b] + delay) then
          y := V[n1b];
          n1b := if (pre(n1b) < Nmax) then pre(n1b) + 1 else 1;
          n2b := if (pre(n1b) < Nmax) then pre(n2b) else pre(n2b) + 1;
        end when;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -58}, {-4, -58}, {-4, -14}, {38, -14}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 76}, {-20, 76}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -58}, {-4, -58}, {-4, -14}, {38, -14}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 76}, {-20, 76}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}));
      end BooleanClockedDelay;

      block BooleanDelay "Boolean signal delay"
      protected
        parameter Integer Nmax = 10;
        // Maximum number of elements in the stack
        Integer N;
        // Number of elements in the stack
        Real T[Nmax](each start = 0, each fixed = true);
        // Time stack
        Boolean V[Nmax](each start = true, each fixed = true);
        // Value stack
        Integer n1t;
        // Stack top (points above the last element pushed on the stack)
        Integer n2t(start = 1, fixed = true);
        // Stack top
        Integer n1b;
        // Stack bottom (points to the first element pushed on the stack)
        Integer n2b(start = 1, fixed = true);
        // Stack bottom
        Integer n;
        // Number of stack pushes
      public
        ETL.Connectors.BooleanInput u(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y(start = false, fixed = true) annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.RealInput delay "Shift delay" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
      initial equation
        n = if u then 1 else 0;
        n1t = if u then 2 else 1;
        n1b = if u then 1 else 0;
      algorithm
        assert(N <= Nmax, "Stack overflow");
        N := if (n2t == n2b) then n1t - n1b else Nmax - (n1b - n1t);
        when change(u) then
          T[n1t] := time;
          V[n1t] := u;
          n1t := if (pre(n1t) < Nmax) then pre(n1t) + 1 else 1;
          n2t := if (pre(n1t) < Nmax) then pre(n2t) else pre(n2t) + 1;
          n := pre(n) + 1;
        end when;
        when n > 0 then
          n1b := 1;
        end when;
        when (n1b > 0) and (time >= T[n1b] + delay) then
          y := V[n1b];
          n1b := if (pre(n1b) < Nmax) then pre(n1b) + 1 else 1;
          n2b := if (pre(n1b) < Nmax) then pre(n2b) else pre(n2b) + 1;
        end when;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -58}, {-4, -58}, {-4, -14}, {38, -14}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 76}, {-20, 76}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5.0, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -58}, {-4, -58}, {-4, -14}, {38, -14}, {38, -58}, {66, -58}}, color = {0, 0, 0}), Line(points = {{-80, 32}, {-62, 32}, {-62, 76}, {-20, 76}, {-20, 32}, {66, 32}}, color = {255, 0, 255}), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}));
      end BooleanDelay;

      block BooleanPulse "Generate pulse signal of type Boolean"
        parameter Real width = 0.5 "Width of pulse (s)";
        parameter Real period = 1 "Time for one period (s)";
        parameter Real startTime = 0 "Output = false for time < startTime";
      protected
        Real tick;
      public
        ETL.Connectors.BooleanInput reset "Reset signal" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
      public
        ETL.Connectors.BooleanOutput y annotation(
          extent = [100, -10; 120, 10],
          Placement(transformation(extent = {{100, -10}, {120, 10}}, rotation = 0), iconTransformation(extent = {{100, -10}, {120, 10}})));
      initial equation
        if (cardinality(reset) == 0) then
          tick = startTime;
        else
          tick = Modelica.Constants.inf;
        end if;
      equation
        if (cardinality(reset) == 0) then
          reset = false;
        end if;
        when {time >= pre(tick) + period, reset} then
          tick = time;
        end when;
        y = (time > tick) and (time <= tick + width);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5.0, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Polygon(points = {{-80, 88}, {-88, 66}, {-72, 66}, {-80, 88}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, 66}, {-80, -82}}, color = {255, 0, 255}), Line(points = {{-90, -70}, {72, -70}}, color = {255, 0, 255}), Polygon(points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{71, 7}, {85, -7}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, -70}, {-40, -70}, {-40, 44}, {0, 44}, {0, -70}, {40, -70}, {40, 44}, {79, 44}}), Text(extent = {{-172, 56}, {172, 90}}, lineColor = {0, 0, 0}, textString = "%width% / %period"), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-60, -74}, {-19, -82}}, lineColor = {0, 0, 0}, textString = "startTime"), Line(points = {{-78, -70}, {-40, -70}, {-40, 20}, {20, 20}, {20, -70}, {50, -70}, {50, 20}, {100, 20}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{-40, 61}, {-40, 21}}, color = {95, 95, 95}), Line(points = {{20, 44}, {20, 20}}, color = {95, 95, 95}), Line(points = {{50, 58}, {50, 20}}, color = {95, 95, 95}), Line(points = {{-40, 53}, {50, 53}}, color = {95, 95, 95}), Line(points = {{-40, 35}, {20, 35}}, color = {95, 95, 95}), Text(extent = {{-30, 65}, {16, 55}}, lineColor = {0, 0, 0}, textString = "period"), Text(extent = {{-33, 47}, {14, 37}}, lineColor = {0, 0, 0}, textString = "width"), Line(points = {{-70, 20}, {-41, 20}}, color = {95, 95, 95}), Polygon(points = {{-40, 35}, {-31, 37}, {-31, 33}, {-40, 35}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{20, 35}, {12, 37}, {12, 33}, {20, 35}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{-40, 53}, {-31, 55}, {-31, 51}, {-40, 53}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{50, 53}, {42, 55}, {42, 51}, {50, 53}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{-95, 26}, {-66, 17}}, lineColor = {0, 0, 0}, textString = "true"), Text(extent = {{-96, -60}, {-75, -69}}, lineColor = {0, 0, 0}, textString = "false"), Polygon(points = {{-70, 92}, {-76, 70}, {-64, 70}, {-70, 92}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-70, 70}, {-70, -88}}, color = {95, 95, 95}), Line(points = {{-90, -70}, {68, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid)}),
          Documentation(info = "<html>
<p>
The Boolean output y is a pulse signal:
</p>

<p>
<img src=\"modelica://Modelica/Resources/Images/Blocks/Sources/Pulse.png\"
     alt=\"Pulse.png\">
</p>
</html>"));
      end BooleanPulse;

      block BooleanStep "Generate step signal of type Boolean"
        parameter CRML.Units.SI.Time startTime = 0 "Time instant of step start";
        ETL.Connectors.BooleanOutput y annotation(
          extent = [100, -10; 120, 10],
          Placement(transformation(extent = {{100, -10}, {120, 10}}, rotation = 0)));
      equation
        y = (if time < startTime then false else true);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5.0, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Polygon(points = {{-80, 88}, {-88, 66}, {-72, 66}, {-80, 88}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, 66}, {-80, -82}}, color = {255, 0, 255}), Line(points = {{-90, -70}, {72, -70}}, color = {255, 0, 255}), Polygon(points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{71, 7}, {85, -7}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(visible = true, points = {{-80, -70}, {0, -70}, {0, 50}, {80, 50}}), Text(extent = {{-150, -100}, {150, -70}}, lineColor = {0, 0, 0}, textString = "%startTime"), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-70, 92}, {-76, 70}, {-64, 70}, {-70, 92}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{-64, 92}, {-46, 74}}, lineColor = {0, 0, 0}, textString = "y"), Text(extent = {{-66, 62}, {-22, 48}}, lineColor = {0, 0, 0}, textString = "true"), Polygon(points = {{2, 50}, {-80, 50}, {2, 50}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-70, 70}, {-70, -88}}, color = {95, 95, 95}), Text(extent = {{-58, -56}, {-26, -70}}, lineColor = {0, 0, 0}, textString = "false"), Text(extent = {{-15, -74}, {20, -82}}, lineColor = {0, 0, 0}, textString = "startTime"), Line(points = {{-90, -70}, {68, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{54, -80}, {106, -92}}, lineColor = {0, 0, 0}, textString = "time"), Line(points = {{-80, -70}, {0, -70}, {0, 50}, {80, 50}}, color = {0, 0, 255}, thickness = 0.5)}),
          Documentation(info = "<html>
<p>
The Boolean output y is a step signal:
</p>

<p>
<img src=\"modelica://Modelica/Resources/Images/Blocks/Sources/BooleanStep.png\"
     alt=\"BooleanStep.png\">
</p>
</html>"));
      end BooleanStep;

      block BooleanTable "Generate a time series signal of type Boolean"
        parameter Boolean y0 = false "Initial output value";
        parameter Boolean option_width = true "true: pulse width is used - false: time instant is used";
        parameter CRML.Units.SI.Time width[:](each min = 0) = {1} "Vector of pulse widths";
        parameter CRML.Units.SI.Time instant[:](each min = 0) = {1} "Vector of time instants";
      protected
        parameter Integer iMax = if option_width then size(width, 1) else size(instant, 1);
        CRML.Units.SI.Time t[iMax];
        Integer i(start = 1, fixed = true);
        discrete Boolean val(start = y0, fixed = true);
      public
        ETL.Connectors.BooleanOutput y annotation(
          extent = [100, -10; 120, 10],
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      algorithm
        for i in 1:iMax loop
          if option_width then
            assert(width[i] > 0, "Width must be strictly positive");
          else
            assert(instant[1] > 0, "First instant must be strictly positive");
            if (i > 1) then
              assert(instant[i] > instant[i - 1], "Instants time series must be stricly increasing");
            end if;
          end if;
        end for;
        t[1] := if option_width then width[1] else instant[1];
        for i in 2:iMax loop
          t[i] := if option_width then t[i - 1] + width[i] else instant[i];
        end for;
        when (time >= t[i]) then
          if (i <= iMax) then
            val := not (pre(val));
          end if;
          if (i < iMax) then
            i := pre(i) + 1;
          end if;
        end when;
        y := val;
        annotation(
          Coordsys(extent = [-100, -100; 100, 100], grid = [2, 2], component = [20, 20]),
          Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-60, -74}, {-19, -82}}, lineColor = {0, 0, 0}, textString = "instant"), Line(points = {{-78, -70}, {-40, -70}, {-40, 20}, {20, 20}, {20, -70}, {50, -70}, {50, 20}, {100, 20}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{-40, 61}, {-40, 21}}, color = {95, 95, 95}), Line(points = {{20, 44}, {20, 20}}, color = {95, 95, 95}), Line(points = {{50, 58}, {50, 20}}, color = {95, 95, 95}), Line(points = {{-40, 35}, {20, 35}}, color = {95, 95, 95}), Text(extent = {{-33, 47}, {14, 37}}, lineColor = {0, 0, 0}, textString = "width"), Line(points = {{-70, 20}, {-41, 20}}, color = {95, 95, 95}), Polygon(points = {{-40, 35}, {-31, 37}, {-31, 33}, {-40, 35}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{20, 35}, {12, 37}, {12, 33}, {20, 35}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{-95, 26}, {-66, 17}}, lineColor = {0, 0, 0}, textString = "true"), Text(extent = {{-96, -60}, {-75, -69}}, lineColor = {0, 0, 0}, textString = "false"), Polygon(points = {{-70, 92}, {-76, 70}, {-64, 70}, {-70, 92}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-70, 70}, {-70, -88}}, color = {95, 95, 95}), Line(points = {{-90, -70}, {68, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid)}),
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5.0, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Polygon(points = {{-80, 88}, {-88, 66}, {-72, 66}, {-80, 88}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, 66}, {-80, -82}}, color = {255, 0, 255}), Line(points = {{-90, -70}, {72, -70}}, color = {255, 0, 255}), Polygon(points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{71, 7}, {85, -7}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Rectangle(extent = {{-50, 60}, {30, 30}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-50, 30}, {30, 0}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-50, 0}, {30, -30}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-50, -30}, {30, -60}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Window(x = 0.1, y = 0.22, width = 0.6, height = 0.6),
          Documentation(info = "<html>
<h4>Adapted from the Modelica.Blocks.Sources library </h4>
<p><b>Version 1.0</b> </p>
</html>"));
      end BooleanTable;

      block Heaviside "Heaviside function"
      protected
        Boolean x(start = false, fixed = true);
      public
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.BooleanInput u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
      equation
        x = u or pre(x);
        y = x;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5.0, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Polygon(points = {{-80, 88}, {-88, 66}, {-72, 66}, {-80, 88}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, 66}, {-80, -82}}, color = {255, 0, 255}), Line(points = {{-90, -70}, {72, -70}}, color = {255, 0, 255}), Polygon(points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{71, 7}, {85, -7}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(visible = true, points = {{-80, -70}, {-40, -70}, {-40, 50}, {80, 50}}), Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{0, 50}, {0, -70}, {68, -70}}, color = {0, 0, 0}, pattern = LinePattern.Dash)}),
          Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-70, 92}, {-76, 70}, {-64, 70}, {-70, 92}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{-64, 92}, {-46, 74}}, lineColor = {0, 0, 0}, textString = "y"), Text(extent = {{-66, 62}, {-22, 48}}, lineColor = {0, 0, 0}, textString = "true"), Polygon(points = {{2, 50}, {-80, 50}, {2, 50}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-70, 70}, {-70, -88}}, color = {95, 95, 95}), Text(extent = {{-58, -56}, {-26, -70}}, lineColor = {0, 0, 0}, textString = "false"), Line(points = {{-90, -70}, {68, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{54, -80}, {106, -92}}, lineColor = {0, 0, 0}, textString = "time"), Line(points = {{-80, -70}, {0, -70}, {0, 50}, {80, 50}}, color = {0, 0, 255}, thickness = 0.5)}),
          Documentation(info = "<html>
<p>
The Boolean output y is a step signal:
</p>

<p>
<img src=\"modelica://Modelica/Resources/Images/Blocks/Sources/BooleanStep.png\"
     alt=\"BooleanStep.png\">
</p>
</html>"));
      end Heaviside;

      block Hold "Hold the clocked, Boolean input signal and provide it as continuous-time output signal (zero order hold)"
        parameter Boolean y_start = false "Value of output y before the first tick of the clock associated to input u";
        Modelica.Blocks.Interfaces.BooleanInput u(final start = y_start) "Connector of clocked, Boolean input signal" annotation(
          Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
        Modelica.Blocks.Interfaces.BooleanOutput y "Connector of continuous-time, Boolean output signal" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = hold(u);
        annotation(
          defaultComponentName = "hold1",
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.06), graphics = {Line(points = {{-80, -60}, {-40, -60}, {-40, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 80}, {40, 80}, {40, 40}, {80, 40}, {80, 0}, {80, 0}, {80, 0}, {100, 0}}, color = {255, 0, 255}), Line(points = {{-80, -60}, {-80, 0}, {-106, 0}}, color = {255, 0, 255}), Ellipse(extent = {{-90, -50}, {-70, -70}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-50, 10}, {-30, -10}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-10, 90}, {10, 70}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{30, 50}, {50, 30}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{70, 10}, {90, -10}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, -100}, {150, -140}}, textString = "%y_start", textColor = {0, 0, 0}), Text(extent = {{-150, 130}, {150, 90}}, textString = "%name", textColor = {0, 0, 255})}),
          Documentation(info = "<html>
<p>
This block for Boolean signals works similarly as the corresponding block for Real signals (see <a href=\"modelica://Modelica.Clocked.RealSignals.Sampler.Hold\">RealSignals.Sampler.Hold</a>).
</p>

<p>
Analog to the corresponding Real signal block example there exists an elementary
<a href=\"modelica://Modelica.Clocked.Examples.Elementary.BooleanSignals.Hold\">example</a> for this Boolean block.
</p>

</html>"),Diagram(graphics = {Line(points = {{-80, -60}, {-40, -60}, {-40, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 80}, {40, 80}, {40, 40}, {80, 40}, {80, 0}, {80, 0}, {80, 0}, {100, 0}}, color = {255, 0, 255}), Line(points = {{-80, -60}, {-80, 0}, {-106, 0}}, color = {255, 0, 255}), Ellipse(extent = {{-90, -50}, {-70, -70}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-50, 10}, {-30, -10}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-10, 90}, {10, 70}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{30, 50}, {50, 30}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{70, 10}, {90, -10}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, -100}, {150, -140}}, textString = "%y_start", textColor = {0, 0, 0}), Text(extent = {{-150, 130}, {150, 90}}, textString = "%name", textColor = {0, 0, 255})}));
      end Hold;

      block Or_n "Or operator to on N Boolean: u1 or u2 or ... or uN"
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
      protected
        Boolean z[N];
      public
        ETL.Connectors.BooleanInput[N] u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        z[1] = u[1];
        for i in 2:N loop
          z[i] = z[i - 1] or u[i];
        end for;
        y = z[N];
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5.0, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{71, 7}, {85, -7}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "or")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5.0, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(extent = {{71, 7}, {85, -7}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "or")}));
      end Or_n;

      block GlobalSeed "Generates a global seed for the RandomFailure block"
        parameter Boolean useAutomaticSeed = true "true: global seed is automatically generated - false: global seed is set by user (cf. parameter fixedSeed)";
        parameter Integer fixedSeed = 67867967 "Fixed seed (active if useAutomaticSeed = false)" annotation(
          Dialog(enable = not useAutomaticSeed));
        final parameter Integer seed(fixed = false) "Global seed";
      initial equation
        seed = if not useAutomaticSeed then Modelica.Math.Random.Utilities.initializeImpureRandom(fixedSeed) else Modelica.Math.Random.Utilities.initializeImpureRandom(Modelica.Math.Random.Utilities.automaticGlobalSeed());
        //         Line(visible = not enableNoise,
        //           points={{-80,-4},{84,-4}},
        //           color={215,215,215})
        //         Line(visible = not enableNoise,
        //           points={{-80,-4},{84,-4}},
        //           color={215,215,215})
        annotation(
          defaultComponentName = "globalSeed",
          defaultComponentPrefixes = "inner",
          missingInnerMessage = "
Your model is using an outer \"globalSeed\" component but
an inner \"globalSeed\" component is not defined and therefore
a default inner \"globalSeed\" component is introduced by the tool.
To change the default setting, drag CRML.Blocks.Logical.GlobalSeed
into your model and specify the seed.
          ",
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255}), Line(visible = true, points = {{-73, -15}, {-59, -15}, {-59, 1}, {-51, 1}, {-51, -47}, {-43, -47}, {-43, -25}, {-35, -25}, {-35, 59}, {-27, 59}, {-27, 27}, {-27, 27}, {-27, -33}, {-17, -33}, {-17, -15}, {-7, -15}, {-7, -43}, {3, -43}, {3, 39}, {9, 39}, {9, 53}, {15, 53}, {15, -3}, {25, -3}, {25, 9}, {31, 9}, {31, -21}, {41, -21}, {41, 51}, {51, 51}, {51, 17}, {59, 17}, {59, -49}, {69, -49}}, color = {215, 215, 215}), Text(visible = true and not useAutomaticSeed, extent = {{-92, 10}, {86, -16}}, lineColor = {255, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%fixedSeed")}),
          Documentation(revisions = "<html>
</html>", info = "<html>
<h4>Adapted from the Modelica.Blocks.Noise library </h4>
<h4>Version 1.0 </h4>
<p>When using <a href=\"modelica://Modelica.Blocks.Noise\">t</a>he RandomFailure block on the same or a higher hierarchical level, GlobalSeed must be dragged resulting in a declaration </p>
<p><code><b>inner</b> CRML.Blocks.Events.GlobalSeed globalSeed;</code> </p>
<p>The GlobalSeed block provides global options for all RandomFailure blocks of the same or a lower hierarchical level. The following options can be selected: </p>
<table cellspacing=\"0\" cellpadding=\"2\" border=\"1\"><tr>
<td><p align=\"center\"><h4>Icon</h4></p></td>
<td><p align=\"center\"><h4>Description</h4></p></td>
</tr>
<tr>
<td><p><img src=\"modelica://Modelica/Resources/Images/Blocks/Noise/GlobalSeed_FixedSeed.png\"/> </p></td>
<td><p><b>useAutomaticSeed=false</b> (= default):</p><p>A fixed global seed is defined with Integer parameter fixedSeed. The value of fixedSeed is displayed in the icon. By default all Noise blocks use fixedSeed for initialization of their pseudo random number generators, in combination with a local seed defined for every instance separately. Therefore, whenever a simulation is performed with the same fixedSeed exactly the same noise is generated in all instances of the Noise blocks (provided the settings of these blocks are not changed as well).</p><p>This option can be used (a) to design a control system (e.g. by parameter optimization) and keep the same noise for all simulations, or (b) perform Monte Carlo Simulations where fixedSeed is changed from the environment for every simulation, in order to produce different noise at every simulation run.</p></td>
</tr>
<tr>
<td><p><img src=\"modelica://Modelica/Resources/Images/Blocks/Noise/GlobalSeed_AutomaticSeed.png\"/> </p></td>
<td><p><b>useAutomaticSeed=true</b>:</p><p>An automatic global seed is computed by using the ID of the process in which the simulation takes place and the current local time. As a result, the global seed is changed automatically for every new simulation, including parallelized simulation runs. This option can be used to perform Monte Carlo Simulations with minimal effort (just performing many simulation runs) where every simulation run uses a different noise.</p></td>
</tr>
</table>
</html>"),Diagram(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255}), Line(visible = true, points = {{-73, -15}, {-59, -15}, {-59, 1}, {-51, 1}, {-51, -47}, {-43, -47}, {-43, -25}, {-35, -25}, {-35, 59}, {-27, 59}, {-27, 27}, {-27, 27}, {-27, -33}, {-17, -33}, {-17, -15}, {-7, -15}, {-7, -43}, {3, -43}, {3, 39}, {9, 39}, {9, 53}, {15, 53}, {15, -3}, {25, -3}, {25, 9}, {31, 9}, {31, -21}, {41, -21}, {41, 51}, {51, 51}, {51, 17}, {59, 17}, {59, -49}, {69, -49}}, color = {215, 215, 215}), Text(visible = true and not useAutomaticSeed, extent = {{-92, 10}, {86, -16}}, lineColor = {255, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%fixedSeed")}));
      end GlobalSeed;

      partial block PartialRandom "Partial random"
      protected
        outer Logical.GlobalSeed globalSeed "Definition of global seed via inner/outer";
        parameter Integer seed = globalSeed.seed "Seed for the generation of random numbers";
      public
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.BooleanInput failureIsPresent annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5.0, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Text(extent = {{-56, 132}, {56, 106}}, lineColor = {0, 0, 0}, textString = "%name"), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid)}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {210, 210, 210}, lineThickness = 5.0, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Text(extent = {{-56, 132}, {56, 106}}, lineColor = {0, 0, 0}, textString = "%name"), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid)}),
          experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002));
      end PartialRandom;

      block RandomFailure "Generates failure events depending on repair rates"
        extends Logical.PartialRandom;
        parameter Boolean perfect = false "true: failures are inhibited - false: failures are not inhibited";
      protected
        Boolean independent "Failures are independent from other components";
        Boolean componentIsWorking(start = true, fixed = true);
        Real r(start = 0, fixed = true) "Random number" annotation(
          HideResult = false);
        Real F(start = 0, fixed = true) "Cumulative distribution function" annotation(
          HideResult = true);
        Real hazardRate "Hazard rate";
      public
        ETL.Connectors.BooleanInput failureIsPresent annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
        ETL.Connectors.RealInput failureRate "Failure rate (nb of failures per time unit, active if perfect is false)" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), visible = not perfect));
        ETL.Connectors.RealInput repairRate "Repair rate (nb of repairs per time unit, active if perfect is false)" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), visible = not perfect));
      equation
        if (cardinality(failureIsPresent)) == 0 then
          failureIsPresent = not componentIsWorking;
          independent = true;
        else
          independent = false;
        end if;
        /* Component with failures */
        if not perfect then
          hazardRate = if componentIsWorking then failureRate else repairRate;
          der(F) = (1 - F)*hazardRate;
          /* Generate a new random number when initial() or each time a transition occurs */
          when {initial(), componentIsWorking <> pre(componentIsWorking)} then
            r = CRML.ETL.Utilities.getRandom(s = seed);
          end when;
          /* Allow transition if it is a repair (not componentIsWorking) or if no failure is present
       in a group of mutually exclusive failure modes or if it is independent */
          when (F > pre(r)) and (not pre(componentIsWorking) or not pre(failureIsPresent) or independent) then
            reinit(F, 0);
            componentIsWorking = not pre(componentIsWorking);
          end when;
          /* Component without failures */
        else
          {r, F, hazardRate} = {0.0, 0.0, 0.0};
          componentIsWorking = true;
        end if;
        y = not componentIsWorking;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Text(extent = {{-56, 132}, {56, 106}}, lineColor = {0, 0, 0}, textString = "%name"), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid), Line(points = {{-80, 0}, {40, 0}}, color = {0, 0, 0}), Line(points = {{-70, 40}, {-70, 0}}, color = {0, 0, 0}), Line(points = {{-54, 40}, {-54, 0}}, color = {0, 0, 0}), Line(points = {{-32, 40}, {-32, 0}}, color = {0, 0, 0}), Line(points = {{-20, 40}, {-20, 0}}, color = {0, 0, 0}), Line(points = {{-4, 40}, {-4, 0}}, color = {0, 0, 0}), Line(points = {{26, 40}, {26, 0}}, color = {0, 0, 0}), Line(points = {{-70, 40}, {-54, 40}}, color = {0, 0, 0}), Line(points = {{-32, 40}, {-20, 40}}, color = {0, 0, 0}), Line(points = {{-4, 40}, {26, 40}}, color = {0, 0, 0})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002));
      end RandomFailure;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Line(points = {{-86, -22}, {-50, -22}, {-50, 22}, {48, 22}, {48, -22}, {88, -24}}, color = {255, 0, 255})}));
    end Logical;

    package Logical3
      block BooleanToBoolean3
        ETL.Connectors.BooleanInput u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.Boolean3Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = ETL.Types.cvBooleanToBoolean3(u);
        annotation(
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{0, 100}, {100, -100}}, fillColor = {213, 255, 170}, fillPattern = FillPattern.Solid, lineColor = {127, 127, 0}), Rectangle(extent = {{-100, 100}, {0, -100}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Line(points = {{-58, 0}, {68, 0}, {48, 20}}, color = {0, 0, 0}), Line(points = {{68, 0}, {48, -20}}, color = {0, 0, 0})}),
          Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{0, 100}, {100, -100}}, fillColor = {213, 255, 170}, fillPattern = FillPattern.Solid, lineColor = {127, 127, 0}), Rectangle(extent = {{-100, 100}, {0, -100}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Line(points = {{-58, 0}, {68, 0}, {48, 20}}, color = {0, 0, 0}), Line(points = {{68, 0}, {48, -20}}, color = {0, 0, 0})}));
      end BooleanToBoolean3;

      block And3 "And operator on two Boolean3: u1 or u2"
        ETL.Connectors.Boolean3Input u1 annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}}), iconTransformation(extent = {{-120, 70}, {-100, 90}})));
        ETL.Connectors.Boolean3Input u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), iconTransformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.Boolean3Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = Logical3.and3(u1, u2);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {213, 255, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "and")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {213, 255, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "and")}));
      end And3;

      block Not3 "Not operator on a Boolean3: u"
        ETL.Connectors.Boolean3Input u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.Boolean3Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = Logical3.not3(u);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {213, 255, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "not")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {213, 255, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "not")}));
      end Not3;

      block Or3 "Or operator on two Boolean3: u1 or u2"
        ETL.Connectors.Boolean3Input u1 annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}}), iconTransformation(extent = {{-120, 70}, {-100, 90}})));
        ETL.Connectors.Boolean3Input u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), iconTransformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.Boolean3Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = Logical3.or3(u1, u2);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {213, 255, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "or")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {213, 255, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "or")}));
      end Or3;

      function and3 "Boolean3 and operator"
        import CRML.ETL.Types.Boolean3;
        input Boolean3 x1;
        input Boolean3 x2;
        output Boolean3 y;
      algorithm
        y := Logical3.TruthTables.and3[Integer(x1), Integer(x2)];
      end and3;

      function not3 "Boolean3 not operator"
        import CRML.ETL.Types.Boolean3;
        input Boolean3 x;
        output Boolean3 y;
      algorithm
        y := Logical3.TruthTables.not3[Integer(x)];
      end not3;

      function or3 "Boolean3 or operator"
        import CRML.ETL.Types.Boolean3;
        input Boolean3 x1;
        input Boolean3 x2;
        output Boolean3 y;
      algorithm
        y := Logical3.not3(Logical3.and3(Logical3.not3(x1), Logical3.not3(x2)));
      end or3;

      package TruthTables
        import CRML.ETL.Types.Boolean3;
        constant Boolean3 and3[3, 3] = [Boolean3.undecided, Boolean3.false3, Boolean3.undecided; Boolean3.false3, Boolean3.false3, Boolean3.false3; Boolean3.undecided, Boolean3.false3, Boolean3.true3];
        constant Boolean3 not3[3] = {Boolean3.undecided, Boolean3.true3, Boolean3.false3};
        annotation(
          Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(extent = {{-76, -26}, {80, -76}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-76, 24}, {80, -26}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-76, 74}, {80, 24}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Line(points = {{-28, 74}, {-28, -76}}, color = {95, 95, 95}), Line(points = {{24, 74}, {24, -76}}, color = {95, 95, 95})}));
      end TruthTables;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Line(points = {{-60, -40}, {-20, -40}, {-20, 0}, {20, 0}, {20, 40}, {60, 40}, {60, 40}, {60, 40}}, color = {127, 127, 0})}));
    end Logical3;

    package Logical4
      block BooleanToBoolean4
        ETL.Connectors.BooleanInput u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = ETL.Types.cvBooleanToBoolean4(u);
        annotation(
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{0, 100}, {100, -100}}, fillColor = {255, 213, 170}, fillPattern = FillPattern.Solid, lineColor = {255, 170, 170}), Rectangle(extent = {{-100, 100}, {0, -100}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Line(points = {{-58, 0}, {68, 0}, {48, 20}}, color = {0, 0, 0}), Line(points = {{68, 0}, {48, -20}}, color = {0, 0, 0})}),
          Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{0, 100}, {100, -100}}, fillColor = {255, 213, 170}, fillPattern = FillPattern.Solid, lineColor = {255, 170, 170}), Rectangle(extent = {{-100, 100}, {0, -100}}, lineColor = {175, 175, 175}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Line(points = {{-58, 0}, {68, 0}, {48, 20}}, color = {0, 0, 0}), Line(points = {{68, 0}, {48, -20}}, color = {0, 0, 0})}));
      end BooleanToBoolean4;

      block Boolean4Constant "Generate a constant signal of type Boolean4"
        import CRML.ETL.Types.Boolean4;
        parameter Boolean4 K = Boolean4.true4 "Constant output value";
        ETL.Connectors.Boolean4Output y annotation(
          extent = [100, -10; 120, 10],
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = K;
        //         Ellipse(
        //           extent={{71,7},{85,-7}},
        //           lineColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,255,0}
        //                else {235,235,235}),
        //           fillColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,255,0}
        //                else {235,235,235}),
        //           fillPattern=FillPattern.Solid),
        annotation(
          Coordsys(extent = [-100, -100; 100, 100], grid = [2, 2], component = [20, 20]),
          Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 0}, {70, 0}}, color = {255, 0, 128}, thickness = 0.5), Text(extent = {{-47, 30}, {-27, 10}}, lineColor = {192, 192, 192}, textString = "K"), Text(extent = {{-106, 6}, {-86, -4}}, lineColor = {192, 192, 192}, textString = "true"), Text(extent = {{-108, -58}, {-82, -68}}, lineColor = {192, 192, 192}, textString = "false"), Polygon(points = {{-80, 92}, {-86, 70}, {-74, 70}, {-80, 92}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, 70}, {-80, -88}}, color = {192, 192, 192}), Text(extent = {{-74, 92}, {-56, 74}}, lineColor = {192, 192, 192}, textString = "y"), Line(points = {{-100, -70}, {58, -70}}, color = {192, 192, 192}), Polygon(points = {{80, -70}, {58, -64}, {58, -76}, {80, -70}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Text(extent = {{44, -80}, {96, -92}}, lineColor = {192, 192, 192}, textString = "time")}),
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-60, 148}, {62, 112}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Polygon(points = {{-80, 88}, {-88, 66}, {-72, 66}, {-80, 88}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, 66}, {-80, -82}}, color = {255, 0, 255}), Line(points = {{-90, -70}, {72, -70}}, color = {255, 0, 255}), Polygon(points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, 0}, {80, 0}}), Text(extent = {{-148, 24}, {158, 52}}, lineColor = {0, 0, 0}, textString = "%K")}),
          Window(x = 0.1, y = 0.22, width = 0.6, height = 0.6),
          Documentation(info = "<html>
<h4>Adapted from the Modelica.Blocks.Sources library </h4>
<p><b>Version 1.0</b> </p>
</html>"));
      end Boolean4Constant;

      block And4 "And operator on two Boolean4: u1 and u2"
        ETL.Connectors.Boolean4Input u1 annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}}), iconTransformation(extent = {{-120, 70}, {-100, 90}})));
        ETL.Connectors.Boolean4Input u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), iconTransformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = and4(u1, u2);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "and")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "and")}));
      end And4;

      block And4_n "And operator on N Boolean4: u1 and u2 and ... and uN"
        import CRML.ETL.Types.Boolean4;
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
      protected
        Boolean4 z4[N];
      public
        ETL.Connectors.Boolean4Input[N] u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        z4[1] = u[1];
        for i in 2:N loop
          z4[i] = Logical4.and4(z4[i - 1], u[i]);
        end for;
        y = z4[N];
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "and")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "and")}));
      end And4_n;

      block Not4 "Not operator on a Boolean4: not u"
        ETL.Connectors.Boolean4Input u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = not4(u);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "not")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "not")}));
      end Not4;

      block Or4 "Or operator to on two Boolean4: u1 or u2"
        ETL.Connectors.Boolean4Input u1 annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}}), iconTransformation(extent = {{-120, 70}, {-100, 90}})));
        ETL.Connectors.Boolean4Input u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), iconTransformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = or4(u1, u2);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "or")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "or")}));
      end Or4;

      block Or4_n "Or operator to on N Boolean4: u1 or u2 or ... or uN"
        import CRML.ETL.Types.Boolean4;
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
      protected
        Boolean4 z4[N];
      public
        ETL.Connectors.Boolean4Input[N] u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        z4[1] = u[1];
        for i in 2:N loop
          z4[i] = or4(z4[i - 1], u[i]);
        end for;
        y = z4[N];
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "or")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "or")}));
      end Or4_n;

      block Xor4 "Xor operator to on two Boolean4: u1 xor u2"
        ETL.Connectors.Boolean4Input u1 annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}}), iconTransformation(extent = {{-120, 70}, {-100, 90}})));
        ETL.Connectors.Boolean4Input u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), iconTransformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = xor4(u1, u2);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "xor")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-90, 40}, {90, -40}}, lineColor = {0, 0, 0}, textString = "xor")}));
      end Xor4;

      block Implies4 "Implies operator on two Boolean4: u1 implies u2"
        ETL.Connectors.Boolean4Input u1 annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.Boolean4Input u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), iconTransformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = implies4(u1, u2);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-104, 36}, {62, -22}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {162, 29, 33}), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {162, 29, 33}, fillColor = {162, 29, 33}, fillPattern = FillPattern.Solid)}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-104, 36}, {62, -22}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {162, 29, 33}), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {162, 29, 33}, fillColor = {162, 29, 33}, fillPattern = FillPattern.Solid)}));
      end Implies4;

      block Equivalent4 "Equivalent operator on two Boolean4: u1 equivalent to u2"
        ETL.Connectors.Boolean4Input u1 annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.Boolean4Input u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), iconTransformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = equivalent4(u1, u2);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-106, 36}, {60, -22}}, lineColor = {0, 0, 0}, fontName = "Symbol", textString = ""), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {162, 29, 33}), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {162, 29, 33}, fillColor = {162, 29, 33}, fillPattern = FillPattern.Solid)}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-106, 36}, {60, -22}}, lineColor = {0, 0, 0}, fontName = "Symbol", textString = ""), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {162, 29, 33}), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {162, 29, 33}, fillColor = {162, 29, 33}, fillPattern = FillPattern.Solid)}));
      end Equivalent4;

      block Probability "Probability that input is true"
        import CRML.ETL.Types.Boolean4;
        import Modelica.Utilities.Files;
        import Modelica.Utilities.Streams;
        import Modelica.Utilities.Strings;
        parameter Real p = 1.96 "Quantile of normal distribution with probability p";
        parameter String fileName "Name of the file that stores the results for the next run. Name must be unique within model. File extension must be .csv.";
        parameter String dirName "Name of the directory that stores the results for the next run (without the trailing ' / ')";
        parameter String decimalSeparator = "," "Decimal separator in the result file";
        parameter Boolean reset "Reset file for a new set of runs";
      protected
        parameter Real infRange = 1 "Infinite range corresponding to the complete uncertainty on the probability estimate";
        parameter String input_file = dirName + "/" + fileName "Full name of the input file that stores the results of the previous run";
        parameter String output_file = input_file + "_temp" "Full name of the temporary output file that stores the results of the current run";
        Integer n(start = 0, fixed = true) "Number of runs";
        Integer nevents(start = 0, fixed = true) "Number of expected events";
        Integer X_n "Random variable for the predicate of u";
        Integer sigma_X_n(start = 0, fixed = true) "Sum of X_n over n";
        Real var_n(start = 0, fixed = true) "(X_n - y)^2";
        Real sigma_var_n(start = 0, fixed = true) "Sum of (X_n - y)^2 over n";
        Real variance(start = 0, fixed = true) "Variance";
        Integer i(start = 0, fixed = true) "Event counter";
        String line "Line in file";
        Integer ln(start = 0, fixed = true) "Index for the current line number in file";
        Integer p1(start = 0, fixed = true) "Index for the current position in line";
        Integer p2(start = 0, fixed = true) "Index for the current position in line";
        Boolean header_processed(start = false, fixed = true) "File header is processed";
        String dir, ker, ext;
        Boolean firstRun = not Files.exist(input_file) or reset;
      public
        ETL.Connectors.Boolean4Input u "Random Boolean input" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.RealOutput y(start = 0, fixed = true) "Estimate of the probability that input is true at the current time" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.RealOutput range(start = infRange, fixed = true) "Half-width uncertainty range of y" annotation(
          Placement(transformation(extent = {{100, -90}, {120, -70}})));
        ETL.Connectors.BooleanInput event annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), iconTransformation(extent = {{-120, -90}, {-100, -70}})));
      algorithm
        /* Start of simulation */
        when initial() then
          /* Check that directory exists */
          assert(Files.exist(dirName), "Directory <" + dirName + "> given by parameter dirName does not exist");
          /* Check that file name is correct. It should not contain the directory name
       and should have the .csv extension */
          (dir, ker, ext) := Files.splitPathName(fileName);
          assert(dir == "", "Parameter fileName must not include the path of a directory (directory path found is <" + dir + ">)");
          assert(ext == ".csv", "The extension of parameter fileName must be .csv (extension found is <" + ext + ">)");
          /* Remove temporary output file in case previous run aborted without executing the exit handler */
          Files.removeFile(output_file);
        end when;
        /* Compute outputs at each event */
        when event then
          /* Increment event counter */
          i := i + 1;
          /* Process file header */
          if not header_processed then
            if not firstRun then
              /* Read number of lines in input file. Number of expected events is equal to number of lines minus one (the header).*/
              nevents := Streams.countLines(input_file) - 1;
              /* Skip header in input file */
              ln := ln + 1;
            end if;
            /* Write header to output file */
            Streams.print("Time; Number of runs; sigma_X_n; sigma_var_n; Probability; Half-width confidence range;", output_file);
            header_processed := true;
          end if;
          /* Initialize from input file for second and following runs */
          if not firstRun then
            /* Check that event counter does not exceed number of expected events */
            assert(i <= nevents, "Number of events in current run (" + String(i) + ") exceeds number of events in previous run (" + String(nevents) + ")");
            /* Read next line in input file */
            ln := ln + 1;
            line := Streams.readLine(input_file, ln);
            /*  Read time in line */
            p1 := 1;
            p2 := Strings.find(line, ";", p1);
            /*  Read number of runs in line */
            p1 := p2 + 1;
            p2 := Strings.find(line, ";", p1);
            n := Strings.scanInteger(Strings.substring(line, p1, p2 - 1));
            /*  Read sigma_X_n in line */
            p1 := p2 + 1;
            p2 := Strings.find(line, ";", p1);
            sigma_X_n := Strings.scanInteger(Strings.substring(line, p1, p2 - 1));
            /*  Read sigma_var_n in line */
            p1 := p2 + 1;
            p2 := Strings.find(line, ";", p1);
            sigma_var_n := Strings.scanReal(Strings.replace(Strings.substring(line, p1, p2 - 1), decimalSeparator, "."));
            /* Initialize from scratch for first run */
          else
            p1 := 1;
            p2 := 1;
            ln := 1;
            line := "";
            n := 0;
            nevents := 0;
            sigma_X_n := 0;
            sigma_var_n := 0;
          end if;
          /* Compute new probability and probability error estimates if u is true or false */
          if u == Boolean4.true4 or u == Boolean4.false4 then
            n := n + 1;
            X_n := (if u == Boolean4.true4 then 1 else 0);
            sigma_X_n := sigma_X_n + X_n;
            y := sigma_X_n/n;
            var_n := (X_n - y)^2;
            sigma_var_n := sigma_var_n + var_n;
            variance := if n >= 2 then sigma_var_n/(n - 1) else (infRange/p)^2;
            range := p*sqrt(variance/n);
          end if;
          /* Write results in temporary output file */
          line := String(time) + ";";
          line := line + String(n) + ";";
          line := line + String(sigma_X_n) + ";";
          line := line + Strings.replace(String(sigma_var_n), ".", decimalSeparator) + ";";
          line := line + Strings.replace(String(y), ".", decimalSeparator) + ";";
          line := line + Strings.replace(String(range), ".", decimalSeparator) + ";";
          Streams.print(line, output_file);
        end when;
        /* End of simulation: exit handler */
        when terminal() then
          /* Check that event counter is equal to number of expected events */
          if not firstRun then
            assert(i == nevents, "Number of events in current run (" + String(i) + ") is different from number of events in previous run (" + String(nevents) + ")");
          end if;
          /* Close input file */
          Streams.close(input_file);
          /* Close output file */
          Streams.close(output_file);
          /* Copy temporary output file to result file and remove temporary output file */
          Files.move(oldName = output_file, newName = input_file, replace = true);
        end when;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-160, 160}, {158, -160}}, lineColor = {0, 0, 0}, textString = "ℙ", fontName = "Cambria Math"), Text(extent = {{-218, 140}, {198, 100}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%fileName")}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-160, 160}, {158, -160}}, lineColor = {0, 0, 0}, textString = "ℙ", fontName = "Cambria Math"), Text(extent = {{-218, 140}, {198, 100}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%fileName")}));
      end Probability;

      block ShowBoolean4 "Show Boolean4 in diagram layer dynamically"
        import CRML.ETL.Types.Boolean4;
        output Boolean4 y;
      public
        ETL.Connectors.Boolean4Input u annotation(
          Placement(transformation(extent = {{-220, -10}, {-200, 10}}), iconTransformation(extent = {{-220, -10}, {-200, 10}})));
      equation
        y = u;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-200, -100}, {200, 100}}, initialScale = 0.1), graphics = {Rectangle(lineColor = {0, 0, 127}, fillColor = {255, 213, 170}, fillPattern = FillPattern.Solid, lineThickness = 5, borderPattern = BorderPattern.Raised, extent = {{-200, -40}, {200, 40}}), Text(extent = {{-76, -20}, {76, 26}}, textString = DynamicSelect("-------", if Integer(u) == 1 then "undefined" else if Integer(u) == 2 then "undecided" else if Integer(u) == 3 then "false" else if Integer(u) == 4 then "true" else "????"))}),
          Documentation(info = "<html>
<p>
This block visualizes an Integer number in a diagram animation.
The number to be visualized can be defined in the following ways:
</p>

<ul>
<li> If useNumberPort = <b>true</b> (which is the default), an Integer
     input is present and this input variable is shown.</li>

<li> If useNumberPort = <b>false</b> no input connector is present.
     Instead, an Integer input field is activated in the parameter menu
     and the Integer expression from this input menu is shown.</li>
</ul>

<p>
The two versions of the block are shown in the following image (in the right variant, the
name of the variable value that is displayed is also shown below the icon):
</p>

<p>
<img src=\"modelica://Modelica/Resources/Images/Blocks/Interaction/IntegerValue.png\"
     alt=\"IntegerValue.png\">
</p>

<p>
The usage is demonstrated, e.g., in example
<a href=\"modelica://Modelica.Blocks.Examples.IntegerNetwork1\">Modelica.Blocks.Examples.IntegerNetwork1</a>.
</p>
</html>"),Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-200, -100}, {200, 100}}, initialScale = 0.1), graphics = {Rectangle(lineColor = {0, 0, 127}, fillColor = {255, 213, 170}, fillPattern = FillPattern.Solid, lineThickness = 5, borderPattern = BorderPattern.Raised, extent = {{-200, -40}, {200, 40}}), Text(extent = {{-76, -20}, {76, 26}}, textString = DynamicSelect("-------", if Integer(u) == 1 then "undefined" else if Integer(u) == 2 then "undecided" else if Integer(u) == 3 then "false" else if Integer(u) == 4 then "true" else "????"))}));
      end ShowBoolean4;

      function and4 "Boolean4 and operator"
        import CRML.ETL.Types.Boolean4;
        input Boolean4 x1;
        input Boolean4 x2;
        output Boolean4 y;
      algorithm
        y := TruthTables.and4[Integer(x1), Integer(x2)];
      end and4;

      function not4 "Boolean4 not operator"
        import CRML.ETL.Types.Boolean4;
        input Boolean4 x;
        output Boolean4 y;
      algorithm
        y := TruthTables.not4[Integer(x)];
      end not4;

      function or4 "Boolean4 or operator"
        import CRML.ETL.Types.Boolean4;
        input Boolean4 x1;
        input Boolean4 x2;
        output Boolean4 y;
      algorithm
        y := not4(and4(not4(x1), not4(x2)));
      end or4;

      function xor4 "Boolean4 xor operator"
        import CRML.ETL.Types.Boolean4;
        input Boolean4 x1;
        input Boolean4 x2;
        output Boolean4 y;
      algorithm
        y := or4(and4(x1, not4(x2)), and4(not4(x1), x2));
      end xor4;

      function implies4 "Boolean4 implies operator"
        import CRML.ETL.Types.Boolean4;
        input Boolean4 x1;
        input Boolean4 x2;
        output Boolean4 y;
      algorithm
        y := or4(not4(x1), x2);
      end implies4;

      function equivalent4 "Boolean4 equivalent operator"
        import CRML.ETL.Types.Boolean4;
        input Boolean4 x1;
        input Boolean4 x2;
        output Boolean4 y;
      algorithm
        y := and4(implies4(x1, x2), implies4(x2, x1));
      end equivalent4;

      package TruthTables
        import CRML.ETL.Types.Boolean4;
        constant Boolean4 and4[4, 4] = [Boolean4.undefined, Boolean4.undecided, Boolean4.false4, Boolean4.true4; Boolean4.undecided, Boolean4.undecided, Boolean4.false4, Boolean4.undecided; Boolean4.false4, Boolean4.false4, Boolean4.false4, Boolean4.false4; Boolean4.true4, Boolean4.undecided, Boolean4.false4, Boolean4.true4];
        constant Boolean4 not4[4] = {Boolean4.undefined, Boolean4.undecided, Boolean4.true4, Boolean4.false4};
        annotation(
          Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(extent = {{-76, -26}, {80, -76}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-76, 24}, {80, -26}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-76, 74}, {80, 24}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Line(points = {{-28, 74}, {-28, -76}}, color = {95, 95, 95}), Line(points = {{24, 74}, {24, -76}}, color = {95, 95, 95})}));
      end TruthTables;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Line(points = {{-80, -60}, {-40, -60}, {-40, -20}, {0, -20}, {0, 60}, {40, 60}, {40, 20}, {80, 20}}, color = {162, 29, 33})}));
    end Logical4;

    package Math
      block Constant "Generate constant signal of type Real"
        parameter Real k = 1 "Constant output value";
        ETL.Connectors.RealOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = k;
        annotation(
          defaultComponentName = "const",
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Polygon(points = {{-80, 90}, {-86, 68}, {-74, 68}, {-80, 90}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, 68}, {-80, -80}}, color = {95, 95, 95}), Line(points = {{-90, -70}, {82, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, 0}, {80, 0}}, color = {0, 0, 0}), Text(extent = {{-176, 22}, {168, 56}}, lineColor = {0, 0, 0}, textString = "%k"), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-80, 90}, {-86, 68}, {-74, 68}, {-80, 90}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, 68}, {-80, -80}}, color = {95, 95, 95}), Line(points = {{-80, 0}, {80, 0}}, color = {28, 108, 200}, thickness = 0.5), Line(points = {{-90, -70}, {82, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{-83, 92}, {-30, 74}}, lineColor = {0, 0, 0}, textString = "y"), Text(extent = {{70, -80}, {94, -100}}, lineColor = {0, 0, 0}, textString = "time"), Text(extent = {{-101, 8}, {-81, -12}}, lineColor = {0, 0, 0}, textString = "k")}),
          Documentation(info = "<html>
<p>
The Real output y is a constant signal:
</p>

<p>
<img src=\"modelica://Modelica/Resources/Images/Blocks/Sources/Constant.png\"
     alt=\"Constant.png\">
</p>
</html>"));
      end Constant;

      block Ramp "Generate ramp signal"
        parameter Real height = 1 "Height of ramps";
        parameter CRML.Units.SI.Time duration(min = 0.0, start = 2) = 1 "Duration of ramp (= 0.0 gives a Step)";
        parameter Real offset = 0 "Offset of output signal";
        parameter CRML.Units.SI.Time startTime = 0 "Output = offset for time < startTime";
      protected
        CRML.Units.SI.Time t0;
      public
        ETL.Connectors.RealOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      public
        ETL.Connectors.BooleanInput reset "Reset signal" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
      initial equation
        if (cardinality(reset) == 0) then
          t0 = startTime;
        else
          t0 = Modelica.Constants.inf;
        end if;
      equation
        if (cardinality(reset) == 0) then
          reset = false;
        end if;
        when reset then
          t0 = time;
        end when;
        y = offset + (if time < t0 then 0 else if time < (t0 + duration) then (time - t0)*height/duration else height);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-158, 54}, {186, 88}}, lineColor = {0, 0, 0}, textString = "%height% / %duration"), Line(points = {{-80, 68}, {-80, -80}}, color = {0, 0, 0}), Polygon(points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(points = {{-90, -70}, {82, -70}}, color = {0, 0, 0}), Polygon(points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(points = {{-80, -70}, {-40, -70}, {31, 38}}, color = {0, 0, 0}), Line(points = {{31, 38}, {86, 38}}, color = {0, 0, 0}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-80, 90}, {-86, 68}, {-74, 68}, {-80, 90}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, 68}, {-80, -80}}, color = {95, 95, 95}), Line(points = {{-80, -20}, {-20, -20}, {50, 50}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{-90, -70}, {82, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{-40, -20}, {-42, -30}, {-38, -30}, {-40, -20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-40, -20}, {-40, -70}}, color = {95, 95, 95}), Polygon(points = {{-40, -70}, {-42, -60}, {-38, -60}, {-40, -70}, {-40, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{-72, -39}, {-34, -50}}, lineColor = {0, 0, 0}, textString = "offset"), Text(extent = {{-38, -72}, {6, -83}}, lineColor = {0, 0, 0}, textString = "startTime"), Text(extent = {{-78, 92}, {-37, 72}}, lineColor = {0, 0, 0}, textString = "y"), Text(extent = {{70, -80}, {94, -91}}, lineColor = {0, 0, 0}, textString = "time"), Line(points = {{-20, -20}, {-20, -70}}, color = {95, 95, 95}), Line(points = {{-19, -20}, {50, -20}}, color = {95, 95, 95}), Line(points = {{50, 50}, {101, 50}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{50, 50}, {50, -20}}, color = {95, 95, 95}), Polygon(points = {{50, -20}, {42, -18}, {42, -22}, {50, -20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{-20, -20}, {-11, -18}, {-11, -22}, {-20, -20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{50, 50}, {48, 40}, {52, 40}, {50, 50}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{50, -20}, {48, -10}, {52, -10}, {50, -20}, {50, -20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{53, 23}, {82, 10}}, lineColor = {0, 0, 0}, textString = "height"), Text(extent = {{-2, -21}, {37, -33}}, lineColor = {0, 0, 0}, textString = "duration")}),
          Documentation(info = "<html>
<p>
The Real output y is a ramp signal:
</p>

<p>
<img src=\"modelica://Modelica/Resources/Images/Blocks/Sources/Ramp.png\"
     alt=\"Ramp.png\">
</p>

<p>
If parameter duration is set to 0.0, the limiting case of a Step signal is achieved.
</p>
</html>"));
      end Ramp;

      block Greater4 "Output y is true if input u1 is greater than input u2"
        import CRML.ETL.Types.Boolean4;
      public
        ETL.Connectors.RealInput u1 annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.RealInput u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.RealInput tolerance "Half-width uncertainty range" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
      equation
        if (cardinality(tolerance) == 0) then
          tolerance = 0;
        end if;
        if u1 > u2 + tolerance then
          y = Boolean4.true4;
        elseif u1 <= u2 - tolerance then
          y = Boolean4.false4;
        else
          y = Boolean4.undecided;
        end if;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 0}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 0}), Line(points = {{-54, 22}, {-8, 2}, {-54, -18}}, thickness = 0.5, color = {0, 0, 0})}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 0}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 0}), Line(points = {{-54, 22}, {-8, 2}, {-54, -18}}, thickness = 0.5, color = {0, 0, 0})}));
      end Greater4;

      block GreaterEqual4 "Output y is true if input u1 is greater or equal than input u2"
        import CRML.ETL.Types.Boolean4;
      public
        ETL.Connectors.RealInput u1 annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.RealInput u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.RealInput tolerance "Half-width uncertainty range" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
      equation
        if (cardinality(tolerance) == 0) then
          tolerance = 0;
        end if;
        if u1 >= u2 + tolerance then
          y = Boolean4.true4;
        elseif u1 < u2 - tolerance then
          y = Boolean4.false4;
        else
          y = Boolean4.undecided;
        end if;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 0}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 0}), Line(points = {{-54, 22}, {-8, 2}, {-54, -18}}, thickness = 0.5, color = {0, 0, 0}), Line(points = {{-52, -36}, {-6, -14}}, thickness = 0.5)}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 0}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 0}), Line(points = {{-54, 22}, {-8, 2}, {-54, -18}}, thickness = 0.5, color = {0, 0, 0}), Line(points = {{-52, -36}, {-6, -14}}, thickness = 0.5)}));
      end GreaterEqual4;

      block Less4 "Output y is true if input u1 is less than input u2"
        import CRML.ETL.Types.Boolean4;
      public
        ETL.Connectors.RealInput u1 annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.RealInput u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.RealInput tolerance "Half-width uncertainty range" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
      equation
        if (cardinality(tolerance) == 0) then
          tolerance = 0;
        end if;
        if u1 < u2 - tolerance then
          y = Boolean4.true4;
        elseif u1 >= u2 + tolerance then
          y = Boolean4.false4;
        else
          y = Boolean4.undecided;
        end if;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 0}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 0}), Line(points = {{-6, 18}, {-50, -2}, {-6, -20}}, thickness = 0.5)}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 0}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 0}), Line(points = {{-6, 18}, {-50, -2}, {-6, -20}}, thickness = 0.5)}));
      end Less4;

      block LessEqual4 "Output y is true if input u1 is less or equal than input u2"
        import CRML.ETL.Types.Boolean4;
      public
        ETL.Connectors.RealInput u1 annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.RealInput u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.RealInput tolerance "Half-width uncertainty range" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
      equation
        if (cardinality(tolerance) == 0) then
          tolerance = 0;
        end if;
        if u1 <= u2 - tolerance then
          y = Boolean4.true4;
        elseif u1 > u2 + tolerance then
          y = Boolean4.false4;
        else
          y = Boolean4.undecided;
        end if;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 0}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 0}), Line(points = {{-6, 18}, {-50, -2}, {-6, -20}}, thickness = 0.5), Line(points = {{-50, -18}, {-10, -34}}, thickness = 0.5)}),
          Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 0}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 0}), Line(points = {{-6, 18}, {-50, -2}, {-6, -20}}, thickness = 0.5), Line(points = {{-50, -18}, {-10, -34}}, thickness = 0.5)}));
      end LessEqual4;

      block InsidePolygon4 "Determines whether a point is inside a polygon"
        import CRML.ETL.Types.Boolean4;
        parameter Real polygon[:, 2] = {{-60, 40}, {-30, 54}, {60, 54}, {52, -8}, {12, -54}, {-52, -30}};
      protected
        Real insidePolygon = CRML.ETL.Utilities.isInsidePolygon({x1, x2}, polygon, tolerance);
      public
        ETL.Connectors.Boolean4Output y "True if point is inside polygon" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.RealInput x2 "Second coordinate of the point" annotation(
          Placement(transformation(extent = {{-120, -70}, {-100, -50}}), iconTransformation(extent = {{-120, -70}, {-100, -50}})));
        ETL.Connectors.RealInput x1 "First coordinate of the point" annotation(
          Placement(transformation(extent = {{-120, 50}, {-100, 70}}), iconTransformation(extent = {{-120, 50}, {-100, 70}})));
        ETL.Connectors.RealInput tolerance "Half-width uncertainty range" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
      equation
        if (cardinality(tolerance) == 0) then
          tolerance = 0;
        end if;
        y = if insidePolygon > 0.5 then Boolean4.true4 else if insidePolygon < -0.5 then Boolean4.undecided else Boolean4.false4;
        annotation(
          defaultComponentName = "polygon",
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Ellipse(extent = {{-24, -6}, {-22, -8}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Polygon(points = {{-60, 40}, {-30, 54}, {60, 54}, {52, -8}, {12, -54}, {-52, -30}, {-60, 40}}, lineColor = {0, 0, 0}), Polygon(points = {{-80, 90}, {-86, 68}, {-74, 68}, {-80, 90}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, 68}, {-80, -80}}, color = {95, 95, 95}), Line(points = {{-90, -70}, {82, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid)}),
          Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Ellipse(extent = {{-24, -6}, {-22, -8}}, lineColor = {28, 108, 200}, fillColor = {28, 108, 200}, fillPattern = FillPattern.Solid), Polygon(points = {{-60, 40}, {-30, 54}, {60, 54}, {52, -8}, {12, -54}, {-52, -30}, {-60, 40}}, lineColor = {28, 108, 200}), Text(extent = {{-83, 92}, {-30, 74}}, lineColor = {0, 0, 0}, textString = "x[2]"), Line(points = {{-80, 68}, {-80, -80}}, color = {95, 95, 95}), Line(points = {{-90, -70}, {82, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{-80, 90}, {-86, 68}, {-74, 68}, {-80, 90}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{70, -80}, {94, -100}}, lineColor = {0, 0, 0}, textString = "x[1]")}),
          Documentation(info = "<html>
<p>Returns true if the point is inside the polygon. </p>
<p> </p>
</html>"));
      end InsidePolygon4;

      block ContinuousClock "Generates a continuous clock signal"
        parameter Real p_start = 0 "Clock start instant (in seconds)";
      protected
        Real time0;
        Real t0;
      public
        ETL.Connectors.RealOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.RealInput start "Clock start instant (in seconds)" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanInput reset "Clock reset to zero" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
      initial equation
        pre(reset) = false;
        time0 = start;
      equation
        if (cardinality(start) == 0) then
          start = p_start;
        end if;
        if (cardinality(reset) == 0) then
          reset = false;
        end if;
        when initial() then
          t0 = start;
        end when;
        when reset and time > t0 then
          time0 = time;
        end when;
        y = if (time > time0) then time - time0 else 0;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.06), graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 0}), Ellipse(extent = {{9, -10}, {-11, 10}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-1, 0}, {52, 50}}, color = {0, 0, 0}), Rectangle(extent = {{80, 6}, {100, -6}}, fillPattern = FillPattern.Solid, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{-100, 6}, {-80, -6}}, fillPattern = FillPattern.Solid, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, -120}, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {80, 6}, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {-6, 80}, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {122, -48}, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {-52, -118}, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, 60}, lineColor = {95, 95, 95}, fillColor = {0, 0, 0})}),
          Documentation(info = "<html>
<p>
This component generates a clock signal triggered by a continuous-time
Boolean input signal u: Whenever the Boolean input signal <b>u</b>
changes from <b>false</b> to <b>true</b>, then the output
clock signal <b>y</b> ticks.
</p>

<p>
For an introduction to clocks see
<a href=\"modelica://Modelica_Synchronous.UsersGuide.Clocks\">UsersGuide.Clocks</a>.
</p>

<p>
If a clock is associated to a clocked continuous-time partition, then an <b>integrator</b>
has to be defined that is used to integrate the partition from the previous
to the current clock tick. This is performed by setting parameter <b>useSolver</b>
= <b>true</b> and defining the integration method as String with
parameter <b>solver</b>. Both parameters are in tab <b>Advanced</b>.
For an example, see
<a href=\"modelica://Modelica_Synchronous.Examples.Systems.ControlledMixingUnit\">Examples.Systems.ControlledMixingUnit</a>.
</p>
</html>"),Diagram(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineColor = {0, 0, 0}), Ellipse(extent = {{9, -10}, {-11, 10}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-1, 0}, {52, 50}}, color = {0, 0, 0}), Rectangle(extent = {{80, 6}, {100, -6}}, fillPattern = FillPattern.Solid, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{-100, 6}, {-80, -6}}, fillPattern = FillPattern.Solid, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, -120}, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {80, 6}, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {-6, 80}, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {122, -48}, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {-52, -118}, lineColor = {95, 95, 95}, fillColor = {0, 0, 0}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, 60}, lineColor = {95, 95, 95}, fillColor = {0, 0, 0})}));
      end ContinuousClock;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Line(origin = {0.061, 4.184}, points = {{81.939, 36.056}, {65.362, 36.056}, {14.39, -26.199}, {-29.966, 113.485}, {-65.374, -61.217}, {-78.061, -78.184}}, color = {95, 95, 95}, smooth = Smooth.Bezier)}));
    end Math;

    package MathInteger "Mathematical blocks"
      block IntegerConstant "Generate a constant signal of type Integer"
        parameter Integer K = 1 "Constant output value";
        ETL.Connectors.IntegerOutput y annotation(
          extent = [100, -10; 120, 10],
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = K;
        annotation(
          Coordsys(extent = [-100, -100; 100, 100], grid = [2, 2], component = [20, 20]),
          Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 0}, {70, 0}}, color = {244, 125, 35}, thickness = 0.5), Text(extent = [-150, 150; 150, 110], textString = "%name"), Text(extent = {{-47, 30}, {-27, 10}}, lineColor = {192, 192, 192}, textString = "K"), Polygon(points = {{-80, 92}, {-86, 70}, {-74, 70}, {-80, 92}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, 70}, {-80, -88}}, color = {192, 192, 192}), Text(extent = {{-74, 92}, {-56, 74}}, lineColor = {192, 192, 192}, textString = "y"), Line(points = {{-100, -70}, {58, -70}}, color = {192, 192, 192}), Polygon(points = {{80, -70}, {58, -64}, {58, -76}, {80, -70}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Text(extent = {{44, -80}, {96, -92}}, lineColor = {192, 192, 192}, textString = "time")}),
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Polygon(points = {{-80, 90}, {-86, 68}, {-74, 68}, {-80, 90}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{-176, 22}, {168, 56}}, lineColor = {0, 0, 0}, textString = "%K"), Line(points = {{-80, 0}, {80, 0}}, color = {244, 125, 35}), Line(points = {{-80, 68}, {-80, -80}}, color = {95, 95, 95}), Line(points = {{-90, -70}, {82, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid)}),
          Window(x = 0.1, y = 0.22, width = 0.6, height = 0.6),
          Documentation(info = "<html>
<h4>Adapted from the Modelica.Blocks.Sources library </h4>
<h4>Version 1.0 </h4>
</html>"));
      end IntegerConstant;

      block IntegerAdd "Output the sum of the two inputs"
        parameter Integer k1 = +1 "Gain of upper input";
        parameter Integer k2 = +1 "Gain of lower input";
        ETL.Connectors.IntegerInput u1 annotation(
          Placement(transformation(extent = {{-120, 50}, {-100, 70}}), iconTransformation(extent = {{-120, 50}, {-100, 70}})));
        ETL.Connectors.IntegerInput u2 annotation(
          Placement(transformation(extent = {{-120, -70}, {-100, -50}})));
        ETL.Connectors.IntegerOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = k1*u1 + k2*u2;
        annotation(
          Documentation(info = "<html>
<p>
This blocks computes output <b>y</b> as <i>sum</i> of the
two input signals <b>u1</b> and <b>u2</b>:
</p>
<pre>
    <b>y</b> = k1*<b>u1</b> + k2*<b>u2</b>;
</pre>
<p>
Example:
</p>
<pre>
     parameter:   k1= +2, k2= -3

  results in the following equations:

     y = 2 * u1 - 3 * u2
</pre>

</html>"),Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {244, 125, 35}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(lineColor = {0, 0, 255}, extent = {{-150, 110}, {150, 150}}, textString = "%name"), Line(points = {{-100, 60}, {-74, 24}, {-44, 24}}, color = {244, 125, 35}), Line(points = {{-100, -60}, {-74, -28}, {-42, -28}}, color = {244, 125, 35}), Ellipse(lineColor = {244, 125, 35}, extent = {{-50, -50}, {50, 50}}), Line(points = {{50, 0}, {100, 0}}, color = {244, 125, 35}), Text(extent = {{-38, -34}, {38, 34}}, textString = "+"), Text(extent = {{-100, 52}, {5, 92}}, textString = "%k1"), Text(extent = {{-100, -92}, {5, -52}}, textString = "%k2")}),
          Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {244, 125, 35}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{50, 0}, {100, 0}}, color = {0, 0, 255}), Line(points = {{-100, 60}, {-74, 24}, {-44, 24}}, color = {244, 125, 35}), Line(points = {{-100, -60}, {-74, -28}, {-42, -28}}, color = {244, 125, 35}), Ellipse(extent = {{-50, 50}, {50, -50}}, lineColor = {0, 0, 127}), Line(points = {{50, 0}, {100, 0}}, color = {0, 0, 127}), Text(extent = {{-36, 38}, {40, -30}}, lineColor = {244, 125, 35}, textString = "+"), Text(extent = {{-100, 52}, {5, 92}}, lineColor = {0, 0, 0}, textString = "k1"), Text(extent = {{-100, -52}, {5, -92}}, lineColor = {0, 0, 0}, textString = "k2")}));
      end IntegerAdd;

      block IntegerRamp "Generate ramp signal"
        parameter Integer step = 1 "Height of steps";
        parameter Integer offset = 0 "Offset of output signal";
      public
        ETL.Connectors.IntegerOutput y(start = offset, fixed = true) annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.BooleanInput reset annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
      equation
        if (cardinality(reset) == 0) then
          reset = false;
        end if;
        when reset then
          y = pre(y) + step;
        end when;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, 68}, {-80, -80}}, color = {0, 0, 0}), Polygon(points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(points = {{-90, -70}, {82, -70}}, color = {0, 0, 0}), Polygon(points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Line(points = {{-80, -40}, {-40, -40}, {-40, -20}}, color = {244, 125, 35}), Text(extent = {{-158, 54}, {186, 88}}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid, textString = "%offset% / %step% "), Line(points = {{-40, -20}, {0, -20}}, color = {244, 125, 35}), Line(points = {{0, -20}, {0, 0}, {30, 0}}, color = {244, 125, 35}), Line(points = {{30, 0}, {30, 20}, {60, 20}}, color = {244, 125, 35}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-80, 90}, {-86, 68}, {-74, 68}, {-80, 90}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, 68}, {-80, -80}}, color = {95, 95, 95}), Line(points = {{-80, -20}, {-20, -20}, {-20, 20}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{-90, -70}, {82, -70}}, color = {95, 95, 95}), Polygon(points = {{90, -70}, {68, -64}, {68, -76}, {90, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{-40, -20}, {-42, -30}, {-38, -30}, {-40, -20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-40, -20}, {-40, -70}}, color = {95, 95, 95}), Polygon(points = {{-40, -70}, {-42, -60}, {-38, -60}, {-40, -70}, {-40, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{-72, -39}, {-34, -50}}, lineColor = {0, 0, 0}, textString = "offset"), Text(extent = {{-78, 92}, {-37, 72}}, lineColor = {0, 0, 0}, textString = "y"), Text(extent = {{70, -80}, {94, -91}}, lineColor = {0, 0, 0}, textString = "time"), Line(points = {{-20, -20}, {-20, -70}}, color = {95, 95, 95}), Line(points = {{-20, 20}, {20, 20}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{-12, 20}, {-12, -20}}, color = {95, 95, 95}), Polygon(points = {{-12, 20}, {-14, 10}, {-10, 10}, {-12, 20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Polygon(points = {{-12, -20}, {-14, -10}, {-10, -10}, {-12, -20}, {-12, -20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{-9, 7}, {20, -6}}, lineColor = {0, 0, 0}, textString = "step"), Line(points = {{20, 60}, {60, 60}}, color = {0, 0, 255}, thickness = 0.5), Polygon(points = {{28, 60}, {26, 50}, {30, 50}, {28, 60}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{28, 60}, {28, 20}}, color = {95, 95, 95}), Polygon(points = {{28, 20}, {26, 30}, {30, 30}, {28, 20}, {28, 20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Text(extent = {{31, 47}, {60, 34}}, lineColor = {0, 0, 0}, textString = "step"), Line(points = {{20, 60}, {20, 20}}, color = {28, 108, 200}, thickness = 0.5), Text(extent = {{-17, -83}, {12, -96}}, lineColor = {0, 0, 0}, textString = "event"), Polygon(points = {{-20, -70}, {-22, -80}, {-18, -80}, {-20, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-20, -70}, {-20, -100}}, color = {95, 95, 95}), Text(extent = {{23, -83}, {52, -96}}, lineColor = {0, 0, 0}, textString = "event"), Polygon(points = {{20, -70}, {18, -80}, {22, -80}, {20, -70}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{20, -70}, {20, -100}}, color = {95, 95, 95}), Line(points = {{20, 20}, {20, -70}}, color = {95, 95, 95})}),
          Documentation(info = "<html>
<p>
The Real output y is a ramp signal:
</p>

<p>
<img src=\"modelica://Modelica/Resources/Images/Blocks/Sources/Ramp.png\"
     alt=\"Ramp.png\">
</p>

<p>
If parameter duration is set to 0.0, the limiting case of a Step signal is achieved.
</p>
</html>"));
      end IntegerRamp;

      block Greater "Output y is true, if input u1 is greater than input u2"
        ETL.Connectors.IntegerInput u1 annotation(
          Placement(transformation(extent = {{-120, 50}, {-100, 70}})));
        ETL.Connectors.IntegerInput u2 annotation(
          Placement(transformation(extent = {{-120, -70}, {-100, -50}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = u1 > u2;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {244, 125, 35}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {244, 125, 35}), Line(points = {{-54, 22}, {-8, 2}, {-54, -18}}, thickness = 0.5, color = {244, 125, 35}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Documentation(info = "<html>
<p>
The output is <b>true</b> if Real input u1 is greater than
Real input u2, otherwise the output is <b>false</b>.
</p>
</html>"),Diagram(graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {244, 125, 35}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {244, 125, 35}), Line(points = {{-54, 22}, {-8, 2}, {-54, -18}}, thickness = 0.5, color = {244, 125, 35}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}));
      end Greater;

      block GreaterEqualThreshold "Output y is true, if input u is greater or equal than threshold"
        parameter Integer threshold = 0;
        ETL.Connectors.IntegerInput u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = (u >= threshold);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.04), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-74, -38}, {76, 42}}, lineColor = {0, 0, 0}, textString = ">= %threshold"), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Documentation(info = "<html>
<p>
The output is <b>true</b> if the Real input is greater than or equal to
parameter <b>threshold</b>, otherwise
the output is <b>false</b>.
</p>
</html>"),Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-74, -38}, {76, 42}}, lineColor = {0, 0, 0}, textString = ">= %threshold"), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}));
      end GreaterEqualThreshold;

      block Switch "Switch between two Real signals"
        ETL.Connectors.IntegerInput u1 annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}})));
        ETL.Connectors.IntegerInput u2 annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.BooleanInput u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.IntegerOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = if u then u1 else u2;
        annotation(
          defaultComponentName = "switch1",
          Documentation(info = "<html>
<p>The Logical.Switch switches, depending on the
logical connector u2 (the middle connector)
between the two possible input signals
u1 (upper connector) and u3 (lower connector).</p>
<p>If u2 is <b>true</b>, the output signal y is set equal to
u1, else it is set equal to u3.</p>
</html>"),Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.04), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{12.0, 0.0}, {100.0, 0.0}}, color = {255, 128, 0}), Line(points = {{-100.0, 0.0}, {-40.0, 0.0}}, color = {255, 0, 255}), Line(points = {{-100.0, -80.0}, {-40.0, -80.0}, {-40.0, -80.0}}, color = {255, 128, 0}), Line(points = {{-40.0, 12.0}, {-40.0, -12.0}}, color = {255, 0, 255}), Line(points = {{-100.0, 80.0}, {-38.0, 80.0}}, color = {255, 128, 0}), Line(points = {{-38, 80}, {8, 4}}, color = {255, 128, 0}, thickness = 1), Ellipse(lineColor = {0, 0, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{2.0, -8.0}, {18.0, 8.0}}, fillColor = {255, 128, 0}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
          Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{12, 0}, {100, 0}}, color = {255, 128, 0}), Line(points = {{-100, 0}, {-40, 0}}, color = {255, 0, 255}), Line(points = {{-100, -80}, {-40, -80}, {-40, -80}}, color = {255, 128, 0}), Line(points = {{-40, 12}, {-40, -12}}, color = {255, 0, 255}), Line(points = {{-100, 80}, {-38, 80}}, color = {255, 128, 0}), Line(points = {{-38, 80}, {8, 4}}, color = {255, 128, 0}, thickness = 1), Ellipse(lineColor = {0, 0, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{2, -8}, {18, 8}}, fillColor = {255, 128, 0}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}));
      end Switch;

      block DiscreteClock "Generates a discrete clock signal"
        parameter Real p_period = 1 "Clock period (in seconds)";
        parameter Integer p_start = 0 "Clock start instant (in clock ticks)";
      protected
        Real t(start = 0, fixed = true);
        // Current time (in seconds)
        Real p(start = 0, fixed = true);
        // Clock period (in seconds)
        Integer ticks(start = 0, fixed = true);
        // Current time (in clock ticks)
        Integer t0;
        // Start clock time (in number of clock ticks)
        Integer ticks0;
        // Time at clock reset (in clock ticks)
        Boolean r(start = false, fixed = true);
        // Maintained reset
      public
        ETL.Connectors.IntegerOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        ETL.Connectors.IntegerInput start "Clock start instant (in clock ticks)" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanInput reset "Clock reset to zero" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
        ETL.Connectors.RealInput period "Clock period (in seconds)" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, 110})));
      initial equation
        pre(reset) = false;
        ticks0 = start;
      equation
        assert(period > 0, "Discrete time period must be stricly positive");
        if (cardinality(period) == 0) then
          period = p_period;
        end if;
        if (cardinality(start) == 0) then
          start = p_start;
        end if;
        if (cardinality(reset) == 0) then
          reset = false;
        end if;
      algorithm
        when initial() then
          t0 := start;
          p := period;
        end when;
        when time > t + p then
          ticks := pre(ticks) + 1;
          p := period;
          t := time;
        end when;
        when reset then
          r := reset;
        end when;
        when change(ticks) and ticks >= t0 then
          if r then
            ticks0 := ticks;
            r := false;
          end if;
        end when;
        y := if (ticks > ticks0) then ticks - ticks0 else 0;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.06), graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineColor = {244, 125, 35}), Ellipse(extent = {{9, -10}, {-11, 10}}, lineColor = {244, 125, 35}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-1, 0}, {52, 50}}, color = {244, 125, 35}), Rectangle(extent = {{80, 6}, {100, -6}}, fillPattern = FillPattern.Solid, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{-100, 6}, {-80, -6}}, fillPattern = FillPattern.Solid, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, -120}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {80, 6}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {-6, 80}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {122, -48}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {-52, -118}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, 60}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35})}),
          Documentation(info = "<html>
<p>
This component generates a clock signal triggered by a continuous-time
Boolean input signal u: Whenever the Boolean input signal <b>u</b>
changes from <b>false</b> to <b>true</b>, then the output
clock signal <b>y</b> ticks.
</p>

<p>
For an introduction to clocks see
<a href=\"modelica://Modelica_Synchronous.UsersGuide.Clocks\">UsersGuide.Clocks</a>.
</p>

<p>
If a clock is associated to a clocked continuous-time partition, then an <b>integrator</b>
has to be defined that is used to integrate the partition from the previous
to the current clock tick. This is performed by setting parameter <b>useSolver</b>
= <b>true</b> and defining the integration method as String with
parameter <b>solver</b>. Both parameters are in tab <b>Advanced</b>.
For an example, see
<a href=\"modelica://Modelica_Synchronous.Examples.Systems.ControlledMixingUnit\">Examples.Systems.ControlledMixingUnit</a>.
</p>
</html>"),Diagram(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineColor = {244, 125, 35}), Ellipse(extent = {{9, -10}, {-11, 10}}, lineColor = {244, 125, 35}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-1, 0}, {52, 50}}, color = {244, 125, 35}), Rectangle(extent = {{80, 6}, {100, -6}}, fillPattern = FillPattern.Solid, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{-100, 6}, {-80, -6}}, fillPattern = FillPattern.Solid, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, -120}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {80, 6}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {-6, 80}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 135, origin = {122, -48}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 45, origin = {-52, -118}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}), Rectangle(extent = {{20, 58}, {40, 46}}, fillPattern = FillPattern.Solid, rotation = 90, origin = {52, 60}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35})}));
      end DiscreteClock;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Line(points = {{-74, -66}, {-46, -66}, {-46, -30}, {12, -30}, {12, 66}}, color = {255, 128, 0}), Line(points = {{12, 66}, {70, 66}}, color = {255, 128, 0})}));
    end MathInteger;

    package Routing
      block Boolean4Replicator "Boolean4 signal replicator"
        parameter Integer nout = 1 "Number of outputs";
        ETL.Connectors.Boolean4Input u "Connector of Boolean input signal" annotation(
          Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
        ETL.Connectors.Boolean4Output y[nout] "Connector of Boolean output signals" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = fill(u, nout);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {162, 29, 33}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-100, 0}, {-6, 0}}, color = {162, 29, 33}), Line(points = {{100, 0}, {10, 0}}, color = {162, 29, 33}), Line(points = {{0, 0}, {100, 10}}, color = {162, 29, 33}), Line(points = {{0, 0}, {100, -10}}, color = {162, 29, 33}), Ellipse(extent = {{-14, 14}, {16, -16}}, lineColor = {217, 67, 180}, fillColor = {162, 29, 33}, fillPattern = FillPattern.Solid)}),
          Documentation(info = "<html>
<p>
This block replicates the Boolean input signal to an array of <code>nout</code> identical Boolean output signals.
</p>
</html>"),Diagram(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {162, 29, 33}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-100, 0}, {-6, 0}}, color = {162, 29, 33}), Line(points = {{100, 0}, {10, 0}}, color = {162, 29, 33}), Line(points = {{0, 0}, {100, 10}}, color = {162, 29, 33}), Line(points = {{0, 0}, {100, -10}}, color = {162, 29, 33}), Ellipse(extent = {{-14, 14}, {16, -16}}, lineColor = {217, 67, 180}, fillColor = {162, 29, 33}, fillPattern = FillPattern.Solid)}));
      end Boolean4Replicator;

      block IntegerReplicator "Integer signal replicator"
        parameter Integer nout = 1 "Number of outputs";
        ETL.Connectors.IntegerInput u "Connector of Boolean input signal" annotation(
          Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
        ETL.Connectors.IntegerOutput y[nout] "Connector of Boolean output signals" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = fill(u, nout);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {244, 125, 35}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-100, 0}, {-6, 0}}, color = {255, 128, 0}), Line(points = {{100, 0}, {10, 0}}, color = {255, 128, 0}), Line(points = {{0, 0}, {100, 10}}, color = {255, 128, 0}), Line(points = {{0, 0}, {100, -10}}, color = {255, 128, 0}), Ellipse(extent = {{-14, 14}, {16, -16}}, lineColor = {244, 125, 35}, fillColor = {255, 128, 0}, fillPattern = FillPattern.Solid)}),
          Documentation(info = "<html>
<p>
This block replicates the Boolean input signal to an array of <code>nout</code> identical Boolean output signals.
</p>
</html>"),Diagram(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {244, 125, 35}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-100, 0}, {-6, 0}}, color = {255, 128, 0}), Line(points = {{100, 0}, {10, 0}}, color = {255, 128, 0}), Line(points = {{0, 0}, {100, 10}}, color = {255, 128, 0}), Line(points = {{0, 0}, {100, -10}}, color = {255, 128, 0}), Ellipse(extent = {{-14, 14}, {16, -16}}, lineColor = {244, 125, 35}, fillColor = {255, 128, 0}, fillPattern = FillPattern.Solid)}));
      end IntegerReplicator;

      block RealReplicator "Real signal replicator"
        parameter Integer nout = 1 "Number of outputs";
        ETL.Connectors.RealInput u "Connector of Boolean input signal" annotation(
          Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
        ETL.Connectors.RealOutput y[nout] "Connector of Boolean output signals" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
      equation
        y = fill(u, nout);
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-100, 0}, {-6, 0}}, color = {0, 0, 127}), Line(points = {{100, 0}, {10, 0}}, color = {0, 0, 127}), Line(points = {{0, 0}, {100, 10}}, color = {0, 0, 127}), Line(points = {{0, 0}, {100, -10}}, color = {0, 0, 127}), Ellipse(extent = {{-14, 14}, {16, -16}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid)}),
          Documentation(info = "<html>
<p>
This block replicates the Boolean input signal to an array of <code>nout</code> identical Boolean output signals.
</p>
</html>"),Diagram(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-100, 0}, {-6, 0}}, color = {0, 0, 127}), Line(points = {{100, 0}, {10, 0}}, color = {0, 0, 127}), Line(points = {{0, 0}, {100, 10}}, color = {0, 0, 127}), Line(points = {{0, 0}, {100, -10}}, color = {0, 0, 127}), Ellipse(extent = {{-14, 14}, {16, -16}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid)}));
      end RealReplicator;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Line(points = {{-90, 0}, {4, 0}}, color = {95, 95, 95}), Line(points = {{88, 65}, {48, 65}, {-8, 0}}, color = {95, 95, 95}), Line(points = {{-8, 0}, {93, 0}}, color = {95, 95, 95}), Line(points = {{87, -65}, {48, -65}, {-8, 0}}, color = {95, 95, 95})}));
    end Routing;
    annotation(
      Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(origin = {0.0, 35.1488}, fillColor = {255, 255, 255}, extent = {{-30.0, -20.1488}, {30.0, 20.1488}}), Rectangle(origin = {0.0, -34.8512}, fillColor = {255, 255, 255}, extent = {{-30.0, -20.1488}, {30.0, 20.1488}}), Line(origin = {-51.25, 0.0}, points = {{21.25, -35.0}, {-13.75, -35.0}, {-13.75, 35.0}, {6.25, 35.0}}), Polygon(origin = {-40.0, 35.0}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{10.0, 0.0}, {-5.0, 5.0}, {-5.0, -5.0}}), Line(origin = {51.25, 0.0}, points = {{-21.25, 35.0}, {13.75, 35.0}, {13.75, -35.0}, {-6.25, -35.0}}), Polygon(origin = {40.0, -35.0}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-10.0, 0.0}, {5.0, 5.0}, {5.0, -5.0}})}));
  end Blocks;

  package Units "Additional SI and non-SI units"
    package SI "Library of type and unit definitions based on SI units according to ISO 31-1992"
      extends Modelica.Icons.Package;
      // Space and Time (chapter 1 of ISO 31-1992)
      type Angle = Real(final quantity = "Angle", final unit = "rad", displayUnit = "deg");
      type SolidAngle = Real(final quantity = "SolidAngle", final unit = "sr");
      type Length = Real(final quantity = "Length", final unit = "m");
      type PathLength = Length;
      type Position = Length;
      type Distance = Length(min = 0);
      type Breadth = Length(min = 0);
      type Height = Length(min = 0);
      type Thickness = Length(min = 0);
      type Radius = Length(min = 0);
      type Diameter = Length(min = 0);
      type Area = Real(final quantity = "Area", final unit = "m2");
      type Volume = Real(final quantity = "Volume", final unit = "m3");
      type Time = Real(final quantity = "Time", final unit = "s");
      type Duration = Time;
      type AngularVelocity = Real(final quantity = "AngularVelocity", final unit = "rad/s");
      type AngularAcceleration = Real(final quantity = "AngularAcceleration", final unit = "rad/s2");
      type Velocity = Real(final quantity = "Velocity", final unit = "m/s");
      type Acceleration = Real(final quantity = "Acceleration", final unit = "m/s2");
      // Periodic and related phenomens (chapter 2 of ISO 31-1992)
      type Period = Real(final quantity = "Time", final unit = "s");
      type Frequency = Real(final quantity = "Frequency", final unit = "Hz");
      type AngularFrequency = Real(final quantity = "AngularFrequency", final unit = "rad/s");
      type Wavelength = Real(final quantity = "Wavelength", final unit = "m");
      type Wavelenght = Wavelength;
      // For compatibility reasons only
      type WaveNumber = Real(final quantity = "WaveNumber", final unit = "m-1");
      type CircularWaveNumber = Real(final quantity = "CircularWaveNumber", final unit = "rad/m");
      type AmplitudeLevelDifference = Real(final quantity = "AmplitudeLevelDifference", final unit = "dB");
      type PowerLevelDifference = Real(final quantity = "PowerLevelDifference", final unit = "dB");
      type DampingCoefficient = Real(final quantity = "DampingCoefficient", final unit = "s-1");
      type LogarithmicDecrement = Real(final quantity = "LogarithmicDecrement", final unit = "1/S");
      type AttenuationCoefficient = Real(final quantity = "AttenuationCoefficient", final unit = "m-1");
      type PhaseCoefficient = Real(final quantity = "PhaseCoefficient", final unit = "m-1");
      type PropagationCoefficient = Real(final quantity = "PropagationCoefficient", final unit = "m-1");
      // added to ISO-chapter
      type Damping = DampingCoefficient;
      // Mechanics (chapter 3 of ISO 31-1992)
      type Mass = Real(quantity = "Mass", final unit = "kg", min = 0);
      type Density = Real(final quantity = "Density", final unit = "kg/m3", displayUnit = "g/cm3", min = 0.0);
      type RelativeDensity = Real(final quantity = "RelativeDensity", final unit = "1", min = 0.0);
      type SpecificVolume = Real(final quantity = "SpecificVolume", final unit = "m3/kg", min = 0.0);
      type LinearDensity = Real(final quantity = "LinearDensity", final unit = "kg/m", min = 0);
      type SurfaceDensity = Real(final quantity = "SurfaceDensity", final unit = "kg/m2", min = 0);
      type Momentum = Real(final quantity = "Momentum", final unit = "kg.m/s");
      type Impulse = Real(final quantity = "Impulse", final unit = "N.s");
      type AngularMomentum = Real(final quantity = "AngularMomentum", final unit = "kg.m2/s");
      type AngularImpulse = Real(final quantity = "AngularImpulse", final unit = "N.m.s");
      type MomentOfInertia = Real(final quantity = "MomentOfInertia", final unit = "kg.m2");
      type Inertia = MomentOfInertia;
      type Force = Real(final quantity = "Force", final unit = "N");
      type TranslationalSpringConstant = Real(final quantity = "TranslationalSpringConstant", final unit = "N/m");
      type TranslationalDampingConstant = Real(final quantity = "TranslationalDampingConstant", final unit = "N.s/m");
      type Weight = Force;
      type Torque = Real(final quantity = "Torque", final unit = "N.m");
      type ElectricalTorqueConstant = Real(final quantity = "ElectricalTorqueConstant", final unit = "N.m/A");
      type MomentOfForce = Torque;
      type ImpulseFlowRate = Real(final quantity = "ImpulseFlowRate", final unit = "N");
      type AngularImpulseFlowRate = Real(final quantity = "AngularImpulseFlowRate", final unit = "N.m");
      type RotationalSpringConstant = Real(final quantity = "RotationalSpringConstant", final unit = "N.m/rad");
      type RotationalDampingConstant = Real(final quantity = "RotationalDampingConstant", final unit = "N.m.s/rad");
      type Pressure = Real(final quantity = "Pressure", final unit = "Pa", displayUnit = "bar");
      type AbsolutePressure = Pressure(min = 0.0, nominal = 1e5);
      type PressureDifference = Pressure;
      type BulkModulus = AbsolutePressure;
      type Stress = Real(final unit = "Pa");
      type NormalStress = Stress;
      type ShearStress = Stress;
      type Strain = Real(final quantity = "Strain", final unit = "1");
      type LinearStrain = Strain;
      type ShearStrain = Strain;
      type VolumeStrain = Real(final quantity = "VolumeStrain", final unit = "1");
      type PoissonNumber = Real(final quantity = "PoissonNumber", final unit = "1");
      type ModulusOfElasticity = Stress;
      type ShearModulus = Stress;
      type SecondMomentOfArea = Real(final quantity = "SecondMomentOfArea", final unit = "m4");
      type SecondPolarMomentOfArea = SecondMomentOfArea;
      type SectionModulus = Real(final quantity = "SectionModulus", final unit = "m3");
      type CoefficientOfFriction = Real(final quantity = "CoefficientOfFriction", final unit = "1");
      type DynamicViscosity = Real(final quantity = "DynamicViscosity", final unit = "Pa.s", min = 0);
      type KinematicViscosity = Real(final quantity = "KinematicViscosity", final unit = "m2/s", min = 0);
      type SurfaceTension = Real(final quantity = "SurfaceTension", final unit = "N/m");
      type Work = Real(final quantity = "Work", final unit = "J");
      type Energy = Real(final quantity = "Energy", final unit = "J");
      type EnergyDensity = Real(final quantity = "EnergyDensity", final unit = "J/m3");
      type PotentialEnergy = Energy;
      type KineticEnergy = Energy;
      type Power = Real(final quantity = "Power", final unit = "W");
      type EnergyFlowRate = Power;
      type EnthalpyFlowRate = Real(final quantity = "EnthalpyFlowRate", final unit = "W");
      type Efficiency = Real(final quantity = "Efficiency", final unit = "1", min = 0);
      type MassFlowRate = Real(quantity = "MassFlowRate", final unit = "kg/s");
      type VolumeFlowRate = Real(final quantity = "VolumeFlowRate", final unit = "m3/s");
      // added to ISO-chapter 3
      type MomentumFlux = Real(final quantity = "MomentumFlux", final unit = "N");
      type AngularMomentumFlux = Real(final quantity = "AngularMomentumFlux", final unit = "N.m");
      // Heat (chapter 4 of ISO 31-1992)
      type ThermodynamicTemperature = Real(final quantity = "ThermodynamicTemperature", final unit = "K", min = 0.0, start = 288.15, nominal = 300, displayUnit = "degC") "Absolute temperature (use type TemperatureDifference for relative temperatures)" annotation(
        absoluteValue = true);
      type Temp_K = ThermodynamicTemperature;
      type Temperature = ThermodynamicTemperature;
      type TemperatureDifference = Real(final quantity = "ThermodynamicTemperature", final unit = "K") annotation(
        absoluteValue = false);
      type TemperatureSlope = Real(final quantity = "TemperatureSlope", final unit = "K/s");
      type LinearTemperatureCoefficient = Real(final quantity = "LinearTemperatureCoefficient", final unit = "1/K");
      type QuadraticTemperatureCoefficient = Real(final quantity = "QuadraticTemperatureCoefficient", final unit = "1/K2");
      type LinearExpansionCoefficient = Real(final quantity = "LinearExpansionCoefficient", final unit = "1/K");
      type CubicExpansionCoefficient = Real(final quantity = "CubicExpansionCoefficient", final unit = "1/K");
      type RelativePressureCoefficient = Real(final quantity = "RelativePressureCoefficient", final unit = "1/K");
      type PressureCoefficient = Real(final quantity = "PressureCoefficient", final unit = "Pa/K");
      type Compressibility = Real(final quantity = "Compressibility", final unit = "1/Pa");
      type IsothermalCompressibility = Compressibility;
      type IsentropicCompressibility = Compressibility;
      type Heat = Real(final quantity = "Energy", final unit = "J");
      type HeatFlowRate = Real(final quantity = "Power", final unit = "W");
      type HeatFlux = Real(final quantity = "HeatFlux", final unit = "W/m2");
      type DensityOfHeatFlowRate = Real(final quantity = "DensityOfHeatFlowRate", final unit = "W/m2");
      type ThermalConductivity = Real(final quantity = "ThermalConductivity", final unit = "W/(m.K)");
      type CoefficientOfHeatTransfer = Real(final quantity = "CoefficientOfHeatTransfer", final unit = "W/(m2.K)");
      type SurfaceCoefficientOfHeatTransfer = CoefficientOfHeatTransfer;
      type ThermalInsulance = Real(final quantity = "ThermalInsulance", final unit = "m2.K/W");
      type ThermalResistance = Real(final quantity = "ThermalResistance", final unit = "K/W");
      type ThermalConductance = Real(final quantity = "ThermalConductance", final unit = "W/K");
      type ThermalDiffusivity = Real(final quantity = "ThermalDiffusivity", final unit = "m2/s");
      type HeatCapacity = Real(final quantity = "HeatCapacity", final unit = "J/K");
      type SpecificHeatCapacity = Real(final quantity = "SpecificHeatCapacity", final unit = "J/(kg.K)");
      type SpecificHeatCapacityAtConstantPressure = SpecificHeatCapacity;
      type SpecificHeatCapacityAtConstantVolume = SpecificHeatCapacity;
      type SpecificHeatCapacityAtSaturation = SpecificHeatCapacity;
      type RatioOfSpecificHeatCapacities = Real(final quantity = "RatioOfSpecificHeatCapacities", final unit = "1");
      type IsentropicExponent = Real(final quantity = "IsentropicExponent", final unit = "1");
      type Entropy = Real(final quantity = "Entropy", final unit = "J/K");
      type EntropyFlowRate = Real(final quantity = "EntropyFlowRate", final unit = "J/(K.s)");
      type SpecificEntropy = Real(final quantity = "SpecificEntropy", final unit = "J/(kg.K)");
      type InternalEnergy = Heat;
      type Enthalpy = Heat;
      type HelmholtzFreeEnergy = Heat;
      type GibbsFreeEnergy = Heat;
      type SpecificEnergy = Real(final quantity = "SpecificEnergy", final unit = "J/kg");
      type SpecificInternalEnergy = SpecificEnergy;
      type SpecificEnthalpy = SpecificEnergy;
      type SpecificHelmholtzFreeEnergy = SpecificEnergy;
      type SpecificGibbsFreeEnergy = SpecificEnergy;
      type MassieuFunction = Real(final quantity = "MassieuFunction", final unit = "J/K");
      type PlanckFunction = Real(final quantity = "PlanckFunction", final unit = "J/K");
      // added to ISO-chapter 4
      type DerDensityByEnthalpy = Real(final unit = "kg.s2/m5");
      type DerDensityByPressure = Real(final unit = "s2/m2");
      type DerDensityByTemperature = Real(final unit = "kg/(m3.K)");
      type DerEnthalpyByPressure = Real(final unit = "J.m.s2/kg2");
      type DerEnergyByDensity = Real(final unit = "J.m3/kg");
      type DerEnergyByPressure = Real(final unit = "J.m.s2/kg");
      type DerPressureByDensity = Real(final unit = "Pa.m3/kg");
      type DerPressureByTemperature = Real(final unit = "Pa/K");
      // Electricity and Magnetism (chapter 5 of ISO 31-1992)
      type ElectricCurrent = Real(final quantity = "ElectricCurrent", final unit = "A");
      type Current = ElectricCurrent;
      type CurrentSlope = Real(final quantity = "CurrentSlope", final unit = "A/s");
      type ElectricCharge = Real(final quantity = "ElectricCharge", final unit = "C");
      type Charge = ElectricCharge;
      type VolumeDensityOfCharge = Real(final quantity = "VolumeDensityOfCharge", final unit = "C/m3", min = 0);
      type SurfaceDensityOfCharge = Real(final quantity = "SurfaceDensityOfCharge", final unit = "C/m2", min = 0);
      type ElectricFieldStrength = Real(final quantity = "ElectricFieldStrength", final unit = "V/m");
      type ElectricPotential = Real(final quantity = "ElectricPotential", final unit = "V");
      type Voltage = ElectricPotential;
      type PotentialDifference = ElectricPotential;
      type ElectromotiveForce = ElectricPotential;
      type VoltageSecond = Real(final quantity = "VoltageSecond", final unit = "V.s") "Voltage second";
      type VoltageSlope = Real(final quantity = "VoltageSlope", final unit = "V/s");
      type ElectricFluxDensity = Real(final quantity = "ElectricFluxDensity", final unit = "C/m2");
      type ElectricFlux = Real(final quantity = "ElectricFlux", final unit = "C");
      type Capacitance = Real(final quantity = "Capacitance", final unit = "F", min = 0);
      type CapacitancePerArea = Real(final quantity = "CapacitancePerArea", final unit = "F/m2") "Capacitance per area";
      type Permittivity = Real(final quantity = "Permittivity", final unit = "F/m", min = 0);
      type PermittivityOfVacuum = Permittivity;
      type RelativePermittivity = Real(final quantity = "RelativePermittivity", final unit = "1");
      type ElectricSusceptibility = Real(final quantity = "ElectricSusceptibility", final unit = "1");
      type ElectricPolarization = Real(final quantity = "ElectricPolarization", final unit = "C/m2");
      type Electrization = Real(final quantity = "Electrization", final unit = "V/m");
      type ElectricDipoleMoment = Real(final quantity = "ElectricDipoleMoment", final unit = "C.m");
      type CurrentDensity = Real(final quantity = "CurrentDensity", final unit = "A/m2");
      type LinearCurrentDensity = Real(final quantity = "LinearCurrentDensity", final unit = "A/m");
      type MagneticFieldStrength = Real(final quantity = "MagneticFieldStrength", final unit = "A/m");
      type MagneticPotential = Real(final quantity = "MagneticPotential", final unit = "A");
      type MagneticPotentialDifference = Real(final quantity = "MagneticPotential", final unit = "A");
      type MagnetomotiveForce = Real(final quantity = "MagnetomotiveForce", final unit = "A");
      type CurrentLinkage = Real(final quantity = "CurrentLinkage", final unit = "A");
      type MagneticFluxDensity = Real(final quantity = "MagneticFluxDensity", final unit = "T");
      type MagneticFlux = Real(final quantity = "MagneticFlux", final unit = "Wb");
      type MagneticVectorPotential = Real(final quantity = "MagneticVectorPotential", final unit = "Wb/m");
      type Inductance = Real(final quantity = "Inductance", final unit = "H");
      type SelfInductance = Inductance(min = 0);
      type MutualInductance = Inductance;
      type CouplingCoefficient = Real(final quantity = "CouplingCoefficient", final unit = "1");
      type LeakageCoefficient = Real(final quantity = "LeakageCoefficient", final unit = "1");
      type Permeability = Real(final quantity = "Permeability", final unit = "H/m");
      type PermeabilityOfVacuum = Permeability;
      type RelativePermeability = Real(final quantity = "RelativePermeability", final unit = "1");
      type MagneticSusceptibility = Real(final quantity = "MagneticSusceptibility", final unit = "1");
      type ElectromagneticMoment = Real(final quantity = "ElectromagneticMoment", final unit = "A.m2");
      type MagneticDipoleMoment = Real(final quantity = "MagneticDipoleMoment", final unit = "Wb.m");
      type Magnetization = Real(final quantity = "Magnetization", final unit = "A/m");
      type MagneticPolarization = Real(final quantity = "MagneticPolarization", final unit = "T");
      type ElectromagneticEnergyDensity = Real(final quantity = "EnergyDensity", final unit = "J/m3");
      type PoyntingVector = Real(final quantity = "PoyntingVector", final unit = "W/m2");
      type Resistance = Real(final quantity = "Resistance", final unit = "Ohm");
      type Resistivity = Real(final quantity = "Resistivity", final unit = "Ohm.m");
      type Conductivity = Real(final quantity = "Conductivity", final unit = "S/m");
      type Reluctance = Real(final quantity = "Reluctance", final unit = "H-1");
      type Permeance = Real(final quantity = "Permeance", final unit = "H");
      type PhaseDifference = Real(final quantity = "Angle", final unit = "rad", displayUnit = "deg");
      type Impedance = Resistance;
      type ModulusOfImpedance = Resistance;
      type Reactance = Resistance;
      type QualityFactor = Real(final quantity = "QualityFactor", final unit = "1");
      type LossAngle = Real(final quantity = "Angle", final unit = "rad", displayUnit = "deg");
      type Conductance = Real(final quantity = "Conductance", final unit = "S");
      type Admittance = Conductance;
      type ModulusOfAdmittance = Conductance;
      type Susceptance = Conductance;
      type InstantaneousPower = Real(final quantity = "Power", final unit = "W");
      type ActivePower = Real(final quantity = "Power", final unit = "W");
      type ApparentPower = Real(final quantity = "Power", final unit = "VA");
      type ReactivePower = Real(final quantity = "Power", final unit = "var");
      type PowerFactor = Real(final quantity = "PowerFactor", final unit = "1");
      // added to ISO-chapter 5
      type Transconductance = Real(final quantity = "Transconductance", final unit = "A/V2");
      type InversePotential = Real(final quantity = "InversePotential", final unit = "1/V");
      type ElectricalForceConstant = Real(final quantity = "ElectricalForceConstant", final unit = "N/A");
      // Light and Related Electromagnetic Radiations (chapter 6 of ISO 31-1992)
      type RadiantEnergy = Real(final quantity = "Energy", final unit = "J");
      type RadiantEnergyDensity = Real(final quantity = "EnergyDensity", final unit = "J/m3");
      type SpectralRadiantEnergyDensity = Real(final quantity = "SpectralRadiantEnergyDensity", final unit = "J/m4");
      type RadiantPower = Real(final quantity = "Power", final unit = "W");
      type RadiantEnergyFluenceRate = Real(final quantity = "RadiantEnergyFluenceRate", final unit = "W/m2");
      type RadiantIntensity = Real(final quantity = "RadiantIntensity", final unit = "W/sr");
      type Radiance = Real(final quantity = "Radiance", final unit = "W/(sr.m2)");
      type RadiantExtiance = Real(final quantity = "RadiantExtiance", final unit = "W/m2");
      type Irradiance = Real(final quantity = "Irradiance", final unit = "W/m2");
      type Emissivity = Real(final quantity = "Emissivity", final unit = "1");
      type SpectralEmissivity = Real(final quantity = "SpectralEmissivity", final unit = "1");
      type DirectionalSpectralEmissivity = Real(final quantity = "DirectionalSpectralEmissivity", final unit = "1");
      type LuminousIntensity = Real(final quantity = "LuminousIntensity", final unit = "cd");
      type LuminousFlux = Real(final quantity = "LuminousFlux", final unit = "lm");
      type QuantityOfLight = Real(final quantity = "QuantityOfLight", final unit = "lm.s");
      type Luminance = Real(final quantity = "Luminance", final unit = "cd/m2");
      type LuminousExitance = Real(final quantity = "LuminousExitance", final unit = "lm/m2");
      type Illuminance = Real(final quantity = "Illuminance", final unit = "lx");
      type LightExposure = Real(final quantity = "LightExposure", final unit = "lx.s");
      type LuminousEfficacy = Real(final quantity = "LuminousEfficacy", final unit = "lm/W");
      type SpectralLuminousEfficacy = Real(final quantity = "SpectralLuminousEfficacy", final unit = "lm/W");
      type LuminousEfficiency = Real(final quantity = "LuminousEfficiency", final unit = "1");
      type SpectralLuminousEfficiency = Real(final quantity = "SpectralLuminousEfficiency", final unit = "1");
      type CIESpectralTristimulusValues = Real(final quantity = "CIESpectralTristimulusValues", final unit = "1");
      type ChromaticityCoordinates = Real(final quantity = "CromaticityCoordinates", final unit = "1");
      type SpectralAbsorptionFactor = Real(final quantity = "SpectralAbsorptionFactor", final unit = "1");
      type SpectralReflectionFactor = Real(final quantity = "SpectralReflectionFactor", final unit = "1");
      type SpectralTransmissionFactor = Real(final quantity = "SpectralTransmissionFactor", final unit = "1");
      type SpectralRadianceFactor = Real(final quantity = "SpectralRadianceFactor", final unit = "1");
      type LinearAttenuationCoefficient = Real(final quantity = "AttenuationCoefficient", final unit = "m-1");
      type LinearAbsorptionCoefficient = Real(final quantity = "LinearAbsorptionCoefficient", final unit = "m-1");
      type MolarAbsorptionCoefficient = Real(final quantity = "MolarAbsorptionCoefficient", final unit = "m2/mol");
      type RefractiveIndex = Real(final quantity = "RefractiveIndex", final unit = "1");
      // Acoustics (chapter 7 of ISO 31-1992)
      type StaticPressure = AbsolutePressure;
      type SoundPressure = StaticPressure;
      type SoundParticleDisplacement = Real(final quantity = "Length", final unit = "m");
      type SoundParticleVelocity = Real(final quantity = "Velocity", final unit = "m/s");
      type SoundParticleAcceleration = Real(final quantity = "Acceleration", final unit = "m/s2");
      type VelocityOfSound = Real(final quantity = "Velocity", final unit = "m/s");
      type SoundEnergyDensity = Real(final quantity = "EnergyDensity", final unit = "J/m3");
      type SoundPower = Real(final quantity = "Power", final unit = "W");
      type SoundIntensity = Real(final quantity = "SoundIntensity", final unit = "W/m2");
      type AcousticImpedance = Real(final quantity = "AcousticImpedance", final unit = "Pa.s/m3");
      type SpecificAcousticImpedance = Real(final quantity = "SpecificAcousticImpedance", final unit = "Pa.s/m");
      type MechanicalImpedance = Real(final quantity = "MechanicalImpedance", final unit = "N.s/m");
      type SoundPressureLevel = Real(final quantity = "SoundPressureLevel", final unit = "dB");
      type SoundPowerLevel = Real(final quantity = "SoundPowerLevel", final unit = "dB");
      type DissipationCoefficient = Real(final quantity = "DissipationCoefficient", final unit = "1");
      type ReflectionCoefficient = Real(final quantity = "ReflectionCoefficient", final unit = "1");
      type TransmissionCoefficient = Real(final quantity = "TransmissionCoefficient", final unit = "1");
      type AcousticAbsorptionCoefficient = Real(final quantity = "AcousticAbsorptionCoefficient", final unit = "1");
      type SoundReductionIndex = Real(final quantity = "SoundReductionIndex", final unit = "dB");
      type EquivalentAbsorptionArea = Real(final quantity = "Area", final unit = "m2");
      type ReverberationTime = Real(final quantity = "Time", final unit = "s");
      type LoudnessLevel = Real(final quantity = "LoudnessLevel", final unit = "phon");
      type Loudness = Real(final quantity = "Loudness", final unit = "sone");
      type LoundnessLevel = Real(final quantity = "LoundnessLevel", final unit = "phon") "Obsolete type, use LoudnessLevel instead!";
      type Loundness = Real(final quantity = "Loundness", final unit = "sone") "Obsolete type, use Loudness instead!";
      // Physical chemistry and molecular physics (chapter 8 of ISO 31-1992)
      type RelativeAtomicMass = Real(final quantity = "RelativeAtomicMass", final unit = "1");
      type RelativeMolecularMass = Real(final quantity = "RelativeMolecularMass", final unit = "1");
      type NumberOfMolecules = Real(final quantity = "NumberOfMolecules", final unit = "1");
      type AmountOfSubstance = Real(final quantity = "AmountOfSubstance", final unit = "mol", min = 0);
      type MolarMass = Real(final quantity = "MolarMass", final unit = "kg/mol", min = 0);
      type MolarVolume = Real(final quantity = "MolarVolume", final unit = "m3/mol", min = 0);
      type MolarDensity = Real(final quantity = "MolarDensity", unit = "mol/m3");
      type MolarEnergy = Real(final quantity = "MolarEnergy", final unit = "J/mol", nominal = 2e4);
      type MolarInternalEnergy = MolarEnergy;
      type MolarHeatCapacity = Real(final quantity = "MolarHeatCapacity", final unit = "J/(mol.K)");
      type MolarEntropy = Real(final quantity = "MolarEntropy", final unit = "J/(mol.K)");
      type MolarEnthalpy = MolarEnergy;
      type MolarFlowRate = Real(final quantity = "MolarFlowRate", final unit = "mol/s");
      type NumberDensityOfMolecules = Real(final quantity = "NumberDensityOfMolecules", final unit = "m-3");
      type MolecularConcentration = Real(final quantity = "MolecularConcentration", final unit = "m-3");
      type MassConcentration = Real(final quantity = "MassConcentration", final unit = "kg/m3");
      type MassFraction = Real(final quantity = "MassFraction", final unit = "1", min = 0, max = 1);
      type Concentration = Real(final quantity = "Concentration", final unit = "mol/m3");
      type VolumeFraction = Real(final quantity = "VolumeFraction", final unit = "1");
      type MoleFraction = Real(final quantity = "MoleFraction", final unit = "1", min = 0, max = 1);
      type ChemicalPotential = Real(final quantity = "ChemicalPotential", final unit = "J/mol");
      type AbsoluteActivity = Real(final quantity = "AbsoluteActivity", final unit = "1");
      type PartialPressure = AbsolutePressure;
      type Fugacity = Real(final quantity = "Fugacity", final unit = "Pa");
      type StandardAbsoluteActivity = Real(final quantity = "StandardAbsoluteActivity", final unit = "1");
      type ActivityCoefficient = Real(final quantity = "ActivityCoefficient", final unit = "1");
      type ActivityOfSolute = Real(final quantity = "ActivityOfSolute", final unit = "1");
      type ActivityCoefficientOfSolute = Real(final quantity = "ActivityCoefficientOfSolute", final unit = "1");
      type StandardAbsoluteActivityOfSolute = Real(final quantity = "StandardAbsoluteActivityOfSolute", final unit = "1");
      type ActivityOfSolvent = Real(final quantity = "ActivityOfSolvent", final unit = "1");
      type OsmoticCoefficientOfSolvent = Real(final quantity = "OsmoticCoefficientOfSolvent", final unit = "1");
      type StandardAbsoluteActivityOfSolvent = Real(final quantity = "StandardAbsoluteActivityOfSolvent", final unit = "1");
      type OsmoticPressure = Real(final quantity = "Pressure", final unit = "Pa", displayUnit = "bar", min = 0);
      type StoichiometricNumber = Real(final quantity = "StoichiometricNumber", final unit = "1");
      type Affinity = Real(final quantity = "Affinity", final unit = "J/mol");
      type MassOfMolecule = Real(final quantity = "Mass", final unit = "kg");
      type ElectricDipoleMomentOfMolecule = Real(final quantity = "ElectricDipoleMomentOfMolecule", final unit = "C.m");
      type ElectricPolarizabilityOfAMolecule = Real(final quantity = "ElectricPolarizabilityOfAMolecule", final unit = "C.m2/V");
      type MicrocanonicalPartitionFunction = Real(final quantity = "MicrocanonicalPartitionFunction", final unit = "1");
      type CanonicalPartitionFunction = Real(final quantity = "CanonicalPartitionFunction", final unit = "1");
      type GrandCanonicalPartitionFunction = Real(final quantity = "GrandCanonicalPartitionFunction", final unit = "1");
      type MolecularPartitionFunction = Real(final quantity = "MolecularPartitionFunction", final unit = "1");
      type StatisticalWeight = Real(final quantity = "StatisticalWeight", final unit = "1");
      type MeanFreePath = Length;
      type DiffusionCoefficient = Real(final quantity = "DiffusionCoefficient", final unit = "m2/s");
      type ThermalDiffusionRatio = Real(final quantity = "ThermalDiffusionRatio", final unit = "1");
      type ThermalDiffusionFactor = Real(final quantity = "ThermalDiffusionFactor", final unit = "1");
      type ThermalDiffusionCoefficient = Real(final quantity = "ThermalDiffusionCoefficient", final unit = "m2/s");
      type ElementaryCharge = Real(final quantity = "ElementaryCharge", final unit = "C");
      type ChargeNumberOfIon = Real(final quantity = "ChargeNumberOfIon", final unit = "1");
      type FaradayConstant = Real(final quantity = "FaradayConstant", final unit = "C/mol");
      type IonicStrength = Real(final quantity = "IonicStrength", final unit = "mol/kg");
      type DegreeOfDissociation = Real(final quantity = "DegreeOfDissociation", final unit = "1");
      type ElectrolyticConductivity = Real(final quantity = "ElectrolyticConductivity", final unit = "S/m");
      type MolarConductivity = Real(final quantity = "MolarConductivity", final unit = "S.m2/mol");
      type TransportNumberOfIonic = Real(final quantity = "TransportNumberOfIonic", final unit = "1");
      // Atomic and Nuclear Physics (chapter 9 of ISO 31-1992)
      type ProtonNumber = Real(final quantity = "ProtonNumber", final unit = "1");
      type NeutronNumber = Real(final quantity = "NeutronNumber", final unit = "1");
      type NucleonNumber = Real(final quantity = "NucleonNumber", final unit = "1");
      type AtomicMassConstant = Real(final quantity = "Mass", final unit = "kg");
      type MassOfElectron = Real(final quantity = "Mass", final unit = "kg");
      type MassOfProton = Real(final quantity = "Mass", final unit = "kg");
      type MassOfNeutron = Real(final quantity = "Mass", final unit = "kg");
      type HartreeEnergy = Real(final quantity = "Energy", final unit = "J");
      type MagneticMomentOfParticle = Real(final quantity = "MagneticMomentOfParticle", final unit = "A.m2");
      type BohrMagneton = MagneticMomentOfParticle;
      type NuclearMagneton = MagneticMomentOfParticle;
      type GyromagneticCoefficient = Real(final quantity = "GyromagneticCoefficient", final unit = "A.m2/(J.s)");
      type GFactorOfAtom = Real(final quantity = "GFactorOfAtom", final unit = "1");
      type GFactorOfNucleus = Real(final quantity = "GFactorOfNucleus", final unit = "1");
      type LarmorAngularFrequency = Real(final quantity = "AngularFrequency", final unit = "s-1");
      type NuclearPrecessionAngularFrequency = Real(final quantity = "AngularFrequency", final unit = "s-1");
      type CyclotronAngularFrequency = Real(final quantity = "AngularFrequency", final unit = "s-1");
      type NuclearQuadrupoleMoment = Real(final quantity = "NuclearQuadrupoleMoment", final unit = "m2");
      type NuclearRadius = Real(final quantity = "Length", final unit = "m");
      type ElectronRadius = Real(final quantity = "Length", final unit = "m");
      type ComptonWavelength = Real(final quantity = "Length", final unit = "m");
      type MassExcess = Real(final quantity = "Mass", final unit = "kg");
      type MassDefect = Real(final quantity = "Mass", final unit = "kg");
      type RelativeMassExcess = Real(final quantity = "RelativeMassExcess", final unit = "1");
      type RelativeMassDefect = Real(final quantity = "RelativeMassDefect", final unit = "1");
      type PackingFraction = Real(final quantity = "PackingFraction", final unit = "1");
      type BindingFraction = Real(final quantity = "BindingFraction", final unit = "1");
      type MeanLife = Real(final quantity = "Time", final unit = "s");
      type LevelWidth = Real(final quantity = "LevelWidth", final unit = "J");
      type Activity = Real(final quantity = "Activity", final unit = "Bq");
      type SpecificActivity = Real(final quantity = "SpecificActivity", final unit = "Bq/kg");
      type DecayConstant = Real(final quantity = "DecayConstant", final unit = "s-1");
      type HalfLife = Real(final quantity = "Time", final unit = "s");
      type AlphaDisintegrationEnergy = Real(final quantity = "Energy", final unit = "J");
      type MaximumBetaParticleEnergy = Real(final quantity = "Energy", final unit = "J");
      type BetaDisintegrationEnergy = Real(final quantity = "Energy", final unit = "J");
      // Nuclear Reactions and Ionizing Radiations (chapter 10 of ISO 31-1992)
      type ReactionEnergy = Real(final quantity = "Energy", final unit = "J");
      type ResonanceEnergy = Real(final quantity = "Energy", final unit = "J");
      type CrossSection = Real(final quantity = "Area", final unit = "m2");
      type TotalCrossSection = Real(final quantity = "Area", final unit = "m2");
      type AngularCrossSection = Real(final quantity = "AngularCrossSection", final unit = "m2/sr");
      type SpectralCrossSection = Real(final quantity = "SpectralCrossSection", final unit = "m2/J");
      type SpectralAngularCrossSection = Real(final quantity = "SpectralAngularCrossSection", final unit = "m2/(sr.J)");
      type MacroscopicCrossSection = Real(final quantity = "MacroscopicCrossSection", final unit = "m-1");
      type TotalMacroscopicCrossSection = Real(final quantity = "TotalMacroscopicCrossSection", final unit = "m-1");
      type ParticleFluence = Real(final quantity = "ParticleFluence", final unit = "m-2");
      type ParticleFluenceRate = Real(final quantity = "ParticleFluenceRate", final unit = "s-1.m2");
      type EnergyFluence = Real(final quantity = "EnergyFluence", final unit = "J/m2");
      type EnergyFluenceRate = Real(final quantity = "EnergyFluenceRate", final unit = "W/m2");
      type CurrentDensityOfParticles = Real(final quantity = "CurrentDensityOfParticles", final unit = "m-2.s-1");
      type MassAttenuationCoefficient = Real(final quantity = "MassAttenuationCoefficient", final unit = "m2/kg");
      type MolarAttenuationCoefficient = Real(final quantity = "MolarAttenuationCoefficient", final unit = "m2/mol");
      type AtomicAttenuationCoefficient = Real(final quantity = "AtomicAttenuationCoefficient", final unit = "m2");
      type HalfThickness = Real(final quantity = "Length", final unit = "m");
      type TotalLinearStoppingPower = Real(final quantity = "TotalLinearStoppingPower", final unit = "J/m");
      type TotalAtomicStoppingPower = Real(final quantity = "TotalAtomicStoppingPower", final unit = "J.m2");
      type TotalMassStoppingPower = Real(final quantity = "TotalMassStoppingPower", final unit = "J.m2/kg");
      type MeanLinearRange = Real(final quantity = "Length", final unit = "m");
      type MeanMassRange = Real(final quantity = "MeanMassRange", final unit = "kg/m2");
      type LinearIonization = Real(final quantity = "LinearIonization", final unit = "m-1");
      type TotalIonization = Real(final quantity = "TotalIonization", final unit = "1");
      type Mobility = Real(final quantity = "Mobility", final unit = "m2/(V.s)");
      type IonNumberDensity = Real(final quantity = "IonNumberDensity", final unit = "m-3");
      type RecombinationCoefficient = Real(final quantity = "RecombinationCoefficient", final unit = "m3/s");
      type NeutronNumberDensity = Real(final quantity = "NeutronNumberDensity", final unit = "m-3");
      type NeutronSpeed = Real(final quantity = "Velocity", final unit = "m/s");
      type NeutronFluenceRate = Real(final quantity = "NeutronFluenceRate", final unit = "s-1.m-2");
      type TotalNeutronSourceDensity = Real(final quantity = "TotalNeutronSourceDesity", final unit = "s-1.m-3");
      type SlowingDownDensity = Real(final quantity = "SlowingDownDensity", final unit = "s-1.m-3");
      type ResonanceEscapeProbability = Real(final quantity = "ResonanceEscapeProbability", final unit = "1");
      type Lethargy = Real(final quantity = "Lethargy", final unit = "1");
      type SlowingDownArea = Real(final quantity = "Area", final unit = "m2");
      type DiffusionArea = Real(final quantity = "Area", final unit = "m2");
      type MigrationArea = Real(final quantity = "Area", final unit = "m2");
      type SlowingDownLength = Real(final quantity = "SLength", final unit = "m");
      type DiffusionLength = Length;
      type MigrationLength = Length;
      type NeutronYieldPerFission = Real(final quantity = "NeutronYieldPerFission", final unit = "1");
      type NeutronYieldPerAbsorption = Real(final quantity = "NeutronYieldPerAbsorption", final unit = "1");
      type FastFissionFactor = Real(final quantity = "FastFissionFactor", final unit = "1");
      type ThermalUtilizationFactor = Real(final quantity = "ThermalUtilizationFactor", final unit = "1");
      type NonLeakageProbability = Real(final quantity = "NonLeakageProbability", final unit = "1");
      type Reactivity = Real(final quantity = "Reactivity", final unit = "1");
      type ReactorTimeConstant = Real(final quantity = "Time", final unit = "s");
      type EnergyImparted = Real(final quantity = "Energy", final unit = "J");
      type MeanEnergyImparted = Real(final quantity = "Energy", final unit = "J");
      type SpecificEnergyImparted = Real(final quantity = "SpecificEnergy", final unit = "Gy");
      type AbsorbedDose = Real(final quantity = "AbsorbedDose", final unit = "Gy");
      type DoseEquivalent = Real(final quantity = "DoseEquivalent", final unit = "Sv");
      type AbsorbedDoseRate = Real(final quantity = "AbsorbedDoseRate", final unit = "Gy/s");
      type LinearEnergyTransfer = Real(final quantity = "LinearEnergyTransfer", final unit = "J/m");
      type Kerma = Real(final quantity = "Kerma", final unit = "Gy");
      type KermaRate = Real(final quantity = "KermaRate", final unit = "Gy/s");
      type MassEnergyTransferCoefficient = Real(final quantity = "MassEnergyTransferCoefficient", final unit = "m2/kg");
      type Exposure = Real(final quantity = "Exposure", final unit = "C/kg");
      type ExposureRate = Real(final quantity = "ExposureRate", final unit = "C/(kg.s)");
      // chapter 11 is not defined in ISO 31-1992
      // Characteristic Numbers (chapter 12 of ISO 31-1992)
      type ReynoldsNumber = Real(final quantity = "ReynoldsNumber", final unit = "1");
      type EulerNumber = Real(final quantity = "EulerNumber", final unit = "1");
      type FroudeNumber = Real(final quantity = "FroudeNumber", final unit = "1");
      type GrashofNumber = Real(final quantity = "GrashofNumber", final unit = "1");
      type WeberNumber = Real(final quantity = "WeberNumber", final unit = "1");
      type MachNumber = Real(final quantity = "MachNumber", final unit = "1");
      type KnudsenNumber = Real(final quantity = "KnudsenNumber", final unit = "1");
      type StrouhalNumber = Real(final quantity = "StrouhalNumber", final unit = "1");
      type FourierNumber = Real(final quantity = "FourierNumber", final unit = "1");
      type PecletNumber = Real(final quantity = "PecletNumber", final unit = "1");
      type RayleighNumber = Real(final quantity = "RayleighNumber", final unit = "1");
      type NusseltNumber = Real(final quantity = "NusseltNumber", final unit = "1");
      type BiotNumber = NusseltNumber;
      // The Biot number (Bi) is used when
      // the Nusselt number is reserved
      // for convective transport of heat.
      type StantonNumber = Real(final quantity = "StantonNumber", final unit = "1");
      type FourierNumberOfMassTransfer = Real(final quantity = "FourierNumberOfMassTransfer", final unit = "1");
      type PecletNumberOfMassTransfer = Real(final quantity = "PecletNumberOfMassTransfer", final unit = "1");
      type GrashofNumberOfMassTransfer = Real(final quantity = "GrashofNumberOfMassTransfer", final unit = "1");
      type NusseltNumberOfMassTransfer = Real(final quantity = "NusseltNumberOfMassTransfer", final unit = "1");
      type StantonNumberOfMassTransfer = Real(final quantity = "StantonNumberOfMassTransfer", final unit = "1");
      type PrandtlNumber = Real(final quantity = "PrandtlNumber", final unit = "1");
      type SchmidtNumber = Real(final quantity = "SchmidtNumber", final unit = "1");
      type LewisNumber = Real(final quantity = "LewisNumber", final unit = "1");
      type MagneticReynoldsNumber = Real(final quantity = "MagneticReynoldsNumber", final unit = "1");
      type AlfvenNumber = Real(final quantity = "AlfvenNumber", final unit = "1");
      type HartmannNumber = Real(final quantity = "HartmannNumber", final unit = "1");
      type CowlingNumber = Real(final quantity = "CowlingNumber", final unit = "1");
      // Solid State Physics (chapter 13 of ISO 31-1992)
      type BraggAngle = Angle;
      type OrderOfReflexion = Real(final quantity = "OrderOfReflexion", final unit = "1");
      type ShortRangeOrderParameter = Real(final quantity = "RangeOrderParameter", final unit = "1");
      type LongRangeOrderParameter = Real(final quantity = "RangeOrderParameter", final unit = "1");
      type DebyeWallerFactor = Real(final quantity = "DebyeWallerFactor", final unit = "1");
      type CircularWavenumber = Real(final quantity = "CircularWavenumber", final unit = "m-1");
      type FermiCircularWavenumber = Real(final quantity = "FermiCircularWavenumber", final unit = "m-1");
      type DebyeCircularWavenumber = Real(final quantity = "DebyeCircularWavenumber", final unit = "m-1");
      type DebyeCircularFrequency = Real(final quantity = "AngularFrequency", final unit = "s-1");
      type DebyeTemperature = ThermodynamicTemperature;
      type SpectralConcentration = Real(final quantity = "SpectralConcentration", final unit = "s/m3");
      type GrueneisenParameter = Real(final quantity = "GrueneisenParameter", final unit = "1");
      type MadelungConstant = Real(final quantity = "MadelungConstant", final unit = "1");
      type DensityOfStates = Real(final quantity = "DensityOfStates", final unit = "J-1/m-3");
      type ResidualResistivity = Real(final quantity = "ResidualResistivity", final unit = "Ohm.m");
      type LorenzCoefficient = Real(final quantity = "LorenzCoefficient", final unit = "V2/K2");
      type HallCoefficient = Real(final quantity = "HallCoefficient", final unit = "m3/C");
      type ThermoelectromotiveForce = Real(final quantity = "ThermoelectromotiveForce", final unit = "V");
      type SeebeckCoefficient = Real(final quantity = "SeebeckCoefficient", final unit = "V/K");
      type PeltierCoefficient = Real(final quantity = "PeltierCoefficient", final unit = "V");
      type ThomsonCoefficient = Real(final quantity = "ThomsonCoefficient", final unit = "V/K");
      type RichardsonConstant = Real(final quantity = "RichardsonConstant", final unit = "A/(m2.K2)");
      type FermiEnergy = Real(final quantity = "Energy", final unit = "eV");
      type GapEnergy = Real(final quantity = "Energy", final unit = "eV");
      type DonorIonizationEnergy = Real(final quantity = "Energy", final unit = "eV");
      type AcceptorIonizationEnergy = Real(final quantity = "Energy", final unit = "eV");
      type ActivationEnergy = Real(final quantity = "Energy", final unit = "eV");
      type FermiTemperature = ThermodynamicTemperature;
      type ElectronNumberDensity = Real(final quantity = "ElectronNumberDensity", final unit = "m-3");
      type HoleNumberDensity = Real(final quantity = "HoleNumberDensity", final unit = "m-3");
      type IntrinsicNumberDensity = Real(final quantity = "IntrinsicNumberDensity", final unit = "m-3");
      type DonorNumberDensity = Real(final quantity = "DonorNumberDensity", final unit = "m-3");
      type AcceptorNumberDensity = Real(final quantity = "AcceptorNumberDensity", final unit = "m-3");
      type EffectiveMass = Mass;
      type MobilityRatio = Real(final quantity = "MobilityRatio", final unit = "1");
      type RelaxationTime = Time;
      type CarrierLifeTime = Time;
      type ExchangeIntegral = Real(final quantity = "Energy", final unit = "eV");
      type CurieTemperature = ThermodynamicTemperature;
      type NeelTemperature = ThermodynamicTemperature;
      type LondonPenetrationDepth = Length;
      type CoherenceLength = Length;
      type LandauGinzburgParameter = Real(final quantity = "LandauGinzburgParameter", final unit = "1");
      type FluxiodQuantum = Real(final quantity = "FluxiodQuantum", final unit = "Wb");
      type TimeAging = Real(final quantity = "1/CRML.Units.SI.Time", final unit = "1/s");
      type ChargeAging = Real(final quantity = "1/Modelica.SIunits.ElectricCharge", final unit = "1/(A.s)");
      // Other types not defined in ISO 31-1992
      type PerUnit = Real(unit = "1");
      type DimensionlessRatio = Real(unit = "1");
      // Complex types for electrical systems (not defined in ISO 31-1992)
      operator record ComplexCurrent = Complex(redeclare CRML.Units.SI.Current re, redeclare CRML.Units.SI.Current im) "Complex electrical current";
      operator record ComplexCurrentSlope = Complex(redeclare CRML.Units.SI.CurrentSlope re, redeclare CRML.Units.SI.CurrentSlope im) "Complex current slope";
      operator record ComplexCurrentDensity = Complex(redeclare CRML.Units.SI.CurrentDensity re, redeclare CRML.Units.SI.CurrentDensity im) "Complex electrical current density";
      operator record ComplexElectricPotential = Complex(redeclare CRML.Units.SI.ElectricPotential re, redeclare CRML.Units.SI.ElectricPotential im) "Complex electric potential";
      operator record ComplexPotentialDifference = Complex(redeclare CRML.Units.SI.PotentialDifference re, redeclare CRML.Units.SI.PotentialDifference im) "Complex electric potential difference";
      operator record ComplexVoltage = Complex(redeclare CRML.Units.SI.Voltage re, redeclare CRML.Units.SI.Voltage im) "Complex electrical voltage";
      operator record ComplexVoltageSlope = Complex(redeclare CRML.Units.SI.VoltageSlope re, redeclare CRML.Units.SI.VoltageSlope im) "Complex voltage slope";
      operator record ComplexElectricFieldStrength = Complex(redeclare CRML.Units.SI.ElectricFieldStrength re, redeclare CRML.Units.SI.ElectricFieldStrength im) "Complex electric field strength";
      operator record ComplexElectricFluxDensity = Complex(redeclare CRML.Units.SI.ElectricFluxDensity re, redeclare CRML.Units.SI.ElectricFluxDensity im) "Complex electric flux density";
      operator record ComplexElectricFlux = Complex(redeclare CRML.Units.SI.ElectricFlux re, redeclare CRML.Units.SI.ElectricFlux im) "Complex electric flux";
      operator record ComplexMagneticFieldStrength = Complex(redeclare CRML.Units.SI.MagneticFieldStrength re, redeclare CRML.Units.SI.MagneticFieldStrength im) "Complex magnetic field strength";
      operator record ComplexMagneticPotential = Complex(redeclare CRML.Units.SI.MagneticPotential re, redeclare CRML.Units.SI.MagneticPotential im) "Complex magnetic potential";
      operator record ComplexMagneticPotentialDifference = Complex(redeclare CRML.Units.SI.MagneticPotentialDifference re, redeclare CRML.Units.SI.MagneticPotentialDifference im) "Complex magnetic potential difference";
      operator record ComplexMagnetomotiveForce = Complex(redeclare CRML.Units.SI.MagnetomotiveForce re, redeclare CRML.Units.SI.MagnetomotiveForce im) "Complex magneto motive force";
      operator record ComplexMagneticFluxDensity = Complex(redeclare CRML.Units.SI.MagneticFluxDensity re, redeclare CRML.Units.SI.MagneticFluxDensity im) "Complex magnetic flux density";
      operator record ComplexMagneticFlux = Complex(redeclare CRML.Units.SI.MagneticFlux re, redeclare CRML.Units.SI.MagneticFlux im) "Complex magnetic flux";
      operator record ComplexReluctance = Complex(redeclare CRML.Units.SI.Reluctance re, redeclare CRML.Units.SI.Reluctance im) "Complex reluctance" annotation(
        Documentation(info = "<html>
<p>
Since magnetic material properties like reluctance and permeance often are anisotropic resp. salient,
a special operator instead of multiplication (compare: tensor vs. vector) is required.
<a href=\"modelica://Modelica.Magnetic.FundamentalWave\">Modelica.Magnetic.FundamentalWave</a> uses a
special record <a href=\"modelica://Modelica.Magnetic.FundamentalWave.Types.Salient\">Salient</a>
which is only valid in the rotor-fixed coordinate system.
</p>
<p>
<b>Note:</b> To avoid confusion, no magnetic material properties should be defined as Complex units.
</p>
</html>"));
      operator record ComplexImpedance = Complex(redeclare Resistance re, redeclare Reactance im) "Complex electrical impedance";
      operator record ComplexAdmittance = Complex(redeclare Conductance re, redeclare Susceptance im) "Complex electrical admittance";
      operator record ComplexPower = Complex(redeclare ActivePower re, redeclare ReactivePower im) "Complex electrical power";
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-66, 78}, {-66, -40}}, color = {64, 64, 64}), Ellipse(extent = {{12, 36}, {68, -38}}, lineColor = {64, 64, 64}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-74, 78}, {-66, -40}}, lineColor = {64, 64, 64}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Polygon(points = {{-66, -4}, {-66, 6}, {-16, 56}, {-16, 46}, {-66, -4}}, lineColor = {64, 64, 64}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Polygon(points = {{-46, 16}, {-40, 22}, {-2, -40}, {-10, -40}, {-46, 16}}, lineColor = {64, 64, 64}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Ellipse(extent = {{22, 26}, {58, -28}}, lineColor = {64, 64, 64}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Polygon(points = {{68, 2}, {68, -46}, {64, -60}, {58, -68}, {48, -72}, {18, -72}, {18, -64}, {46, -64}, {54, -60}, {58, -54}, {60, -46}, {60, -26}, {64, -20}, {68, -6}, {68, 2}}, lineColor = {64, 64, 64}, smooth = Smooth.Bezier, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid)}),
        Documentation(info = "<html>
<p>This package provides predefined types, such as <i>Mass</i>, <i>Angle</i>, <i>Time</i>, based on the international standard on units, e.g., </p>
<p><code>   <b>type</b> Angle = Real(<b>final</b> quantity = &quot;Angle&quot;,</code></p>
<p><code>                     <b>final</b> unit     = &quot;rad&quot;,</code></p>
<p><code>                     displayUnit    = &quot;deg&quot;);</code> </p>
<p><br>Copyright &copy; 1998-2016, Modelica Association and DLR. </p>
<p>This package is copied from package Modelica.SIunits in Modelica package version 3.2.2.</p>
</html>", revisions = "<html>
<ul>
<li><i>May 25, 2011</i> by Stefan Wischhusen:<br/>Added molar units for energy and enthalpy.</li>
<li><i>Jan. 27, 2010</i> by Christian Kral:<br/>Added complex units.</li>
<li><i>Dec. 14, 2005</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Add User&#39;;s Guide and removed &quot;min&quot; values for Resistance and Conductance.</li>
<li><i>October 21, 2002</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and Christian Schweiger:<br/>Added new package <b>Conversions</b>. Corrected typo <i>Wavelenght</i>.</li>
<li><i>June 6, 2000</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Introduced the following new types<br/>type Temperature = ThermodynamicTemperature;<br/>types DerDensityByEnthalpy, DerDensityByPressure, DerDensityByTemperature, DerEnthalpyByPressure, DerEnergyByDensity, DerEnergyByPressure<br/>Attribute &quot;final&quot; removed from min and max values in order that these values can still be changed to narrow the allowed range of values.<br/>Quantity=&quot;Stress&quot; removed from type &quot;Stress&quot;, in order that a type &quot;Stress&quot; can be connected to a type &quot;Pressure&quot;.</li>
<li><i>Oct. 27, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>New types due to electrical library: Transconductance, InversePotential, Damping.</li>
<li><i>Sept. 18, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Renamed from SIunit to SIunits. Subpackages expanded, i.e., the SIunits package, does no longer contain subpackages.</li>
<li><i>Aug 12, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Type &quot;Pressure&quot; renamed to &quot;AbsolutePressure&quot; and introduced a new type &quot;Pressure&quot; which does not contain a minimum of zero in order to allow convenient handling of relative pressure. Redefined BulkModulus as an alias to AbsolutePressure instead of Stress, since needed in hydraulics.</li>
<li><i>June 29, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Bug-fix: Double definition of &quot;Compressibility&quot; removed and appropriate &quot;extends Heat&quot; clause introduced in package SolidStatePhysics to incorporate ThermodynamicTemperature.</li>
<li><i>April 8, 1998</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and Astrid Jaschinski:<br/>Complete ISO 31 chapters realized.</li>
<li><i>Nov. 15, 1997</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and Hubertus Tummescheit:<br/>Some chapters realized.</li>
</ul>
</html>"));
    end SI;

    package nonSI
      type Time_minute = Real(final quantity = "Time", final unit = "min");
      type Angle_deg = Real(final quantity = "Angle", final unit = "deg") annotation(
        Documentation(info = "<html>
<p><b>Version 1.0</b></p>
</HTML>
        "));
      type AngularVelocity_rpm = Real(final quantity = "Angular velocity", final unit = "rev/min") annotation(
        Documentation(info = "<html>
<p><b>Version 1.0</b></p>
</HTML>
        "));
      type Temperature_degC = Real(final quantity = "ThermodynamicTemperature", final unit = "degC") annotation(
        Documentation(info = "<html>
<p><b>Version 1.0</b></p>
</HTML>
        "));
      type Pressure_bar = Real(final quantity = "Pressure", final unit = "bar");
      type Power_kW = Real(final quantity = "Power", final unit = "kW");
      type Power_MW = Real(final quantity = "Power", final unit = "MW");
      type VolumeFlowRate_m3h = Real(final quantity = "VolumeFlowRate", final unit = "m3/h");
    end nonSI;

    package xSI "Additional SI units"
      type PressureLossCoefficient = Real(final quantity = "Pressure loss coefficient", final unit = "m-4") annotation(
        Documentation(info = "<html>
<p><b>Version 1.0</b></p>
</HTML>
        "));
      type DerDensityByEnthalpy = Real(final unit = "kg2/(m3.J)");
      type DerDensityByEntropy = Real(final quantity = "DerDensityByEntropy", final unit = "kg2.K/(m3.J)");
      type DerEnergyByTemperature = Real(final quantity = "Derivative of the specific energy wrt. the temperature", final unit = "J/(kg.K)") annotation(
        Documentation(info = "<html>
<p><b>Version 1.0</b></p>
</HTML>
        "));
      type DerEnergyByPressure = Real(final quantity = "DerEnergyByPressure", final unit = "J/Pa");
      type DerEntropyByTemperature = Real(final quantity = "DerEntropyByTemperature", final unit = "J/K2");
      type DerEntropyByPressure = Real(final quantity = "DerEntropyByPressure", final unit = "J/(K.Pa)");
      type DerPressureByDensity = Real(final quantity = "DerPressureByDensity", final unit = "Pa.m3/kg");
      type DerPressureBySpecificVolume = Real(final quantity = "DerPressureBySpecificVolume", final unit = "Pa.kg/m3");
      type DerPressureByTemperature = Real(final quantity = "DerPressureByTemperature", final unit = "Pa/K");
      type DerVolumeByTemperature = Real(final quantity = "DerVolumeByTemperature", final unit = "m3/K");
      type DerVolumeByPressure = Real(final quantity = "DerVolumeByPressure", final unit = "m3/Pa");
      type Cv = Real(final quantity = "Cv U.S.", final unit = "m4/(s.N5)") annotation(
        Documentation(info = "<html>
<p><b>Version 1.0</b></p>
</HTML>
        "));
      type SonicConductance = Real(final quantity = "Sonic conductance", final unit = "m3/(s.Pa)") annotation(
        Documentation(info = "<html>
<p><b>Version 1.0</b></p>
</HTML>
        "));
      type IdealGasConstant = Real(final quantity = "Ideal gas constant", final unit = "J/(kg.K)");
      type ViscousFriction = Real(final quantity = "Viscous friction", final unit = "N/(m/s)");
    end xSI;
    annotation(
      Documentation(info = "<html>
</html>"));
  end Units;

  package ETL
    package UsersGuide "User's Guide"
      class Overview "Overview of ETL"
        annotation(
          Documentation(info = "<html>
<p>ETL is a language for the simulation of temporal requirements on cyber-physical systems.</p>
<p>This library is a Modelica implementation of ETL.</p>
<p>For more information, please consult the following references:</p>
<p><span style=\"font-family: Wingdings; color: #fe5815;\">&sect; </span></span><span style=\"font-family: Arial;\">Bouskela D. and Jardin (2018), &ldquo;ETL: A New Temporal Language for the Verification of Cyber-Physical Systems,&rdquo; 2018 Annual IEEE International Systems Conference (SysCon). </p>
</html>"),Icon(graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(origin = {-10.167, -15}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier), Ellipse(origin = {1.5, 56.5}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}})}));
      end Overview;

      class ReqSysProLicense "License"
        annotation(
          Documentation(info = "<html>
<p><b><span style=\"font-size: 12pt; color: #008000;\">The ETL License </span></b></p>
<p>Licensed by EDF under the provisions of an open source licence to be decided.</p>
<p>Copyright &copy; 2020, EDF. </p>
</html>"),Icon(graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(origin = {-10.167, -15}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier), Ellipse(origin = {1.5, 56.5}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}})}));
      end ReqSysProLicense;

      package ReleaseNotes "Release notes"
        class Version_0_1 "Version 0.1"
          annotation(
            DocumentationClass = true,
            Documentation(info = "<html>
<p><b><span style=\"font-size: 10pt; color: #008000;\">Version 0.1 (March 11, 2020)</span></b></p>
<p>This is the first beta release of the library. </p>
</html>"),  Icon(graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(origin = {-10.167, -15}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier), Ellipse(origin = {1.5, 56.5}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}})}));
        end Version_0_1;

        class Version_0_2 "Version 0.2"
          annotation(
            DocumentationClass = true,
            Documentation(info = "<html>
<p><b><span style=\"font-size: 10pt; color: #008000;\">Version 0.2 (February 10, 2022)</span></b></p>
<p>This is the second beta release of the library. </p>
</html>"),  Icon(graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(origin = {-10.167, -15}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier), Ellipse(origin = {1.5, 56.5}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}})}));
        end Version_0_2;
        annotation(
          Icon(graphics = {Polygon(points = {{-80, -100}, {-80, 100}, {0, 100}, {0, 20}, {80, 20}, {80, -100}, {-80, -100}}, lineColor = {0, 0, 0}, fillColor = {245, 245, 245}, fillPattern = FillPattern.Solid), Polygon(points = {{0, 100}, {80, 20}, {0, 20}, {0, 100}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Line(points = {{2, -12}, {50, -12}}, color = {0, 0, 0}), Ellipse(extent = {{-56, 2}, {-28, -26}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Line(points = {{2, -60}, {50, -60}}, color = {0, 0, 0}), Ellipse(extent = {{-56, -46}, {-28, -74}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid)}),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Release notes</span></b></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This section summarizes the changes that have been performed on package ETL.</span></p>
</html>"));
      end ReleaseNotes;

      class Contacts "Contacts"
        annotation(
          Icon(graphics = {Rectangle(extent = {{-100, 70}, {100, -72}}, lineColor = {0, 0, 0}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Polygon(points = {{-100, -72}, {100, -72}, {0, 20}, {-100, -72}}, lineColor = {0, 0, 0}, smooth = Smooth.None, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Polygon(points = {{22, 0}, {100, 70}, {100, -72}, {22, 0}}, lineColor = {0, 0, 0}, smooth = Smooth.None, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Polygon(points = {{-100, 70}, {100, 70}, {0, -20}, {-100, 70}}, lineColor = {0, 0, 0}, smooth = Smooth.None, fillColor = {241, 241, 241}, fillPattern = FillPattern.Solid)}),
          Documentation(info = "<html>
<p><b><span style=\"font-size: 12pt; color: #008000;\">Contacts </span></b></p>
<dd>Daniel Bouskela</dd>
<dd>Audrey Jardin</dd>
<dd>Yulu Dong<br></dd>
<dd>EDF Lab - PRISME</dd>
<dd>6, quai Watier</dd>
<dd>F-78401 Chatou Cedex</dd>
<dd>France<br></dd>
<dd>email: <a href=\"mailto:daniel.bouskela@edf.fr\">daniel.bouskela@edf.fr</a></dd>
<dd>email: <a href=\"mailto:audrey.jardin@edf.fr\">audrey.jardin@edf.fr</a></dd>
<dd>email: <a href=\"mailto:yulu.dong@edf.fr\">yulu.dong@edf.fr</a><br></dd>
</html>"));
      end Contacts;
      annotation(
        Icon(graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(origin = {-10.167, -15}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier), Ellipse(origin = {1.5, 56.5}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}})}),
        DocumentationClass = true,
        Documentation(info = "<html>
<p><b><span style=\"font-size: 12pt; color: #008000;\">Users Guide of the ETL Library</span></b></p>
</html>"));
    end UsersGuide;

    package TimeLocators
      block Periods "Generates multiple time periods"
        import CRML.ETL.Types.Boolean4;
        import CRML;
        parameter Boolean leftBoundaryIncluded = true "If true, the left boundaries of the time periods are included";
        parameter Boolean rightBoundaryIncluded = true "If true, the right boundaries of the time periods are included";
        parameter Boolean durationSpecified = false "If true, closing events are given by duration on u2, else closing events is given by events on u2" annotation(
          Evaluate = true);
        parameter Boolean discreteClockSpecified = false "If true, duration is given in clock ticks" annotation(
          Evaluate = true,
          Dialog(enable = durationSpecified));
      protected
        Boolean e(start = false, fixed = true) = (time > 0);
        parameter String name = if durationSpecified then "periods" else "periods";
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        discrete Integer index(start = 0, fixed = true);
        discrete Integer indexMax(start = 0, fixed = true);
        Real[N] tf(each start = -1, each fixed = true);
        Boolean[N] not_y_timePeriod(each start = false, each fixed = true) = not y.timeSlot;
        Boolean u1_(start = false, fixed = true) = (u1 == Boolean4.true4);
        discrete Integer ticks(start = 0, fixed = true);
        outer CRML.TimeLocators.Continuous.Master master;
        Boolean masterPeriod = tl.timePeriod and master.y.timePeriod;
      public
        CRML.ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed = true, each start = false)) "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        Connectors.Boolean4Input u1 "Opening event" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
      public
        Connectors.WhileInput tl "Master time period" annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
        Connectors.Boolean4Input u2 "Closing event" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), visible = not durationSpecified));
        Connectors.RealInput continuousDuration "Time period duration" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), visible = durationSpecified and not discreteClockSpecified));
        Connectors.IntegerInput discreteDuration "Time period duration in clock ticks" annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}}), visible = durationSpecified and discreteClockSpecified));
        discrete Connectors.Boolean4Input clock "Clock ticks" annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}}), visible = durationSpecified and discreteClockSpecified));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        if (cardinality(u2) == 0) then
          u2 = Boolean4.false4;
        end if;
        if (cardinality(continuousDuration) == 0) then
          continuousDuration = -1;
        end if;
        if (cardinality(discreteDuration) == 0) then
          discreteDuration = -1;
        end if;
        if (cardinality(clock) == 0) then
          clock = tl.clock;
        end if;
        indexMax = CRML.ETL.Utilities.firstTrueIndex(y.timePeriod, reverse = true);
        for i in 1:N loop
          y[i].timePeriod = y[i].timeSlot and masterPeriod;
          y[i].timeSlot = if discreteClockSpecified then ((ticks <= tf[i]) or ((i == index) and edge(u1_)) or ((i == index) and u1_ and edge(e))) else ((time < tf[i]) or ((i == index) and edge(u1_)) or ((i == index) and u1_ and edge(e)));
          y[i].clock = clock;
          y[i].isLeftBoundaryIncluded = leftBoundaryIncluded;
          y[i].isRightBoundaryIncluded = rightBoundaryIncluded;
          y[i].indexMax = indexMax;
        end for;
      algorithm
        /* Open a new time period at initial time if u1 is already true */
        when (u1 == Boolean4.true4 and edge(e)) then
          index := CRML.ETL.Utilities.firstTrueIndex(pre(not_y_timePeriod));
          if ((index >= 1) and (index <= N)) then
            tf[index] := if discreteClockSpecified then ticks + (if (discreteDuration >= 0) then discreteDuration else Modelica.Constants.inf) else time + (if (continuousDuration >= 0) then continuousDuration else Modelica.Constants.inf);
          else
            assert(false, "Maximum number N of overlapping time periods is exceeded");
          end if;
        end when;
        /* Open a new time period after each event on u1 */
        when u1 == Boolean4.true4 then
          index := CRML.ETL.Utilities.firstTrueIndex(pre(not_y_timePeriod));
          if ((index >= 1) and (index <= N)) then
            tf[index] := if discreteClockSpecified then ticks + (if (discreteDuration >= 0) then discreteDuration else Modelica.Constants.inf) else time + (if (continuousDuration >= 0) then continuousDuration else Modelica.Constants.inf);
          else
            assert(false, "Maximum number N of overlapping time periods is exceeded");
          end if;
        end when;
        /* Close all time periods at next event on u2 */
        when u2 == Boolean4.true4 then
          if continuousDuration < 0 or discreteDuration < 0 then
            for i in 1:N loop
              tf[i] := time;
            end for;
          end if;
        end when;
        /* Close all time periods when the master period ends */
        when not masterPeriod then
          for i in 1:N loop
            tf[i] := time;
          end for;
        end when;
        /* Count clock ticks */
        when clock == Boolean4.true4 then
          ticks := pre(ticks) + 1;
        end when;
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {170, 213, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-78, 86}, {76, 38}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = name), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-50, -34}, {-50, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-48, -12}, {52, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{52, -12}, {52, -34}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-62, -34}, {58, -34}}, color = {175, 175, 175}), Line(points = {{-50, -12}, {-50, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Rectangle(extent = {{22, 2}, {52, -12}}, lineColor = {0, 0, 0}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Line(points = {{-50, 10}, {22, 10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, 10}, {22, -12}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {20, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{22, -12}, {24, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-52, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, -12}, {-48, -10}}, color = {0, 0, 0}, pattern = LinePattern.Dash), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = rightBoundaryIncluded), Line(points = {{90, 30}, {70, 30}, {70, -52}, {90, -52}}, color = {0, 0, 0}, visible = not rightBoundaryIncluded), Line(points = {{-90, 30}, {-70, 30}, {-70, -52}, {-90, -52}}, color = {0, 0, 0}, visible = not leftBoundaryIncluded), Text(extent = {{-28, -10}, {22, -34}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u")}),
          Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-86, 38}, {-72, 22}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Text(extent = {{-66, -2}, {-52, -18}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Text(extent = {{-56, -42}, {-42, -58}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Text(extent = {{14, 38}, {28, 22}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Text(extent = {{24, -2}, {38, -18}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Text(extent = {{54, -42}, {68, -58}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Text(extent = {{-6, 38}, {8, 22}}, lineColor = {238, 46, 47}, fontName = "Symbol", textString = ""), Text(extent = {{74, 38}, {88, 22}}, lineColor = {238, 46, 47}, fontName = "Symbol", textString = ""), Rectangle(extent = {{-80, 20}, {0, 0}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, pattern = LinePattern.None), Rectangle(extent = {{20, 20}, {80, 0}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, pattern = LinePattern.None), Text(extent = {{-68, 14}, {-14, 6}}, lineColor = {0, 0, 0}, textString = "Time period"), Text(extent = {{22, 14}, {76, 6}}, lineColor = {0, 0, 0}, textString = "Time period"), Line(points = {{-90, 0}, {-80, 0}, {-80, 20}, {0, 20}, {0, 0}, {20, 0}, {20, 20}, {80, 20}, {80, 0}, {96, 0}}, color = {0, 0, 0}, arrow = {Arrow.None, Arrow.Filled}), Rectangle(extent = {{-60, -20}, {0, -40}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, pattern = LinePattern.None), Rectangle(extent = {{30, -20}, {80, -40}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, pattern = LinePattern.None), Line(points = {{-90, -40}, {-60, -40}, {-60, -20}, {0, -20}, {0, -40}, {30, -40}, {30, -20}, {80, -20}, {80, -40}, {96, -40}}, color = {0, 0, 0}, arrow = {Arrow.None, Arrow.Filled}), Text(extent = {{-56, -26}, {-2, -34}}, lineColor = {0, 0, 0}, textString = "Time period"), Text(extent = {{26, -26}, {80, -34}}, lineColor = {0, 0, 0}, textString = "Time period"), Rectangle(extent = {{-50, -60}, {0, -80}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, pattern = LinePattern.None), Rectangle(extent = {{60, -60}, {80, -80}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, pattern = LinePattern.None), Line(points = {{-90, -80}, {-50, -80}, {-50, -60}, {0, -60}, {0, -80}, {60, -80}, {60, -60}, {80, -60}, {80, -80}, {96, -80}}, color = {0, 0, 0}, arrow = {Arrow.None, Arrow.Filled}), Text(extent = {{-50, -66}, {4, -74}}, lineColor = {0, 0, 0}, textString = "Time period"), Line(points = {{0, 22}, {0, -84}}, color = {0, 0, 0}, pattern = LinePattern.Dot), Line(points = {{80, 24}, {80, -82}}, color = {0, 0, 0}, pattern = LinePattern.Dot), Text(extent = {{106, 96}, {120, 80}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Text(extent = {{122, 96}, {170, 84}}, lineColor = {0, 0, 0}, textString = "Opening event"), Text(extent = {{124, 76}, {172, 64}}, lineColor = {0, 0, 0}, textString = "Closing event"), Text(extent = {{108, 76}, {122, 60}}, lineColor = {238, 46, 47}, fontName = "Symbol", textString = ""), Polygon(points = {{-120, 90}, {-120, 70}, {-100, 80}, {-120, 90}}, lineColor = {162, 29, 33}, fillColor = {162, 29, 33}, fillPattern = FillPattern.Solid), Line(points = {{-90, 80}, {92, 80}}, color = {0, 0, 0}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Filled}), Ellipse(extent = {{-92, 82}, {-88, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-82, 82}, {-78, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-72, 82}, {-68, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-62, 82}, {-58, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-52, 82}, {-48, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-42, 82}, {-38, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-32, 82}, {-28, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-22, 82}, {-18, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-12, 82}, {-8, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-2, 82}, {2, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{8, 82}, {12, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{18, 82}, {22, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{28, 82}, {32, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{38, 82}, {42, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{48, 82}, {52, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{58, 82}, {62, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{68, 82}, {72, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Ellipse(extent = {{78, 82}, {82, 78}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), Text(extent = {{-38, 72}, {46, 60}}, lineColor = {0, 0, 0}, textString = "Discrete  time clock (optional)")}),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>Periods</b>(<b>u1</b> = opening_event [, <b>u2</b> = closing_event or duration] [, <b>clock</b> = clock] [, <b>tl</b> = master_time_locator]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a <b>Periods</b>. </span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">A time locator is composed of several time periods on the continuous physical clock that may overlap (cf. illustration in the Diagram Layer).</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">A time period is a time interval betwen to events. A time period is opened at each opening event. All opened time periods are closed when a closing event occurs.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">An event occurs when a <a href=\"modelica://CRML.ETL.Types.Boolean4\">Boolean4</a> becomes true.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The opening event occurs when <b>u1</b> becomes true inside the master time period specified by the while block connected at input<b> tl</b>. If no master time period is specified, then the opening event occurs whenever <b>u1</b> becomes true.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">There are two ways of specitying the closing event according to parameter </span><code><b>durationSpecified</b></code><span style=\"font-family: MS Shell Dlg 2;\">:</span></p>
<ul>
<li><span style=\"font-family: MS Shell Dlg 2;\">If </span><span style=\"font-family: Courier New;\">durationSpecified</span><span style=\"font-family: MS Shell Dlg 2;\"> is false, then the closing event occurs when <b>u2</b> becomes true.</span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">If </span><span style=\"font-family: Courier New;\">durationSpecified</span><span style=\"font-family: MS Shell Dlg 2;\"> is true, then the closing event occurs <i>n</i> seconds (if </span><span style=\"font-family: Courier New;\">discreteClockSpecified</span><span style=\"font-family: MS Shell Dlg 2;\">=false) or <i>n</i> clock ticks (if </span><span style=\"font-family: Courier New;\">discreteClockSpecified</span><span style=\"font-family: MS Shell Dlg 2;\">=true) after <b>u1</b> becomes true, <i>n</i> being the value at input <b>u2</b>.</span></li>
</ul>
<p><br><span style=\"font-family: MS Shell Dlg 2;\">Therefore, the type of <b>u2</b> is <a href=\"modelica://CRML.ETL.Types.Boolean4\">Boolean4</a> if </span><span style=\"font-family: Courier New;\">durationSpecified=</span><span style=\"font-family: MS Shell Dlg 2;\">false, Real if </span><span style=\"font-family: Courier New;\">durationSpecified=</span><span style=\"font-family: MS Shell Dlg 2;\">true and </span><span style=\"font-family: Courier New;\">clockSpecified=</span><span style=\"font-family: MS Shell Dlg 2;\">false, and Integer if </span><span style=\"font-family: Courier New;\">durationSpecified=</span><span style=\"font-family: MS Shell Dlg 2;\">true and </span><span style=\"font-family: Courier New;\">discreteClockSpecified=</span><span style=\"font-family: MS Shell Dlg 2;\">true.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Additionally, all time periods are closed when the master time period closes.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">If <b>u2</b> is not connected, then there is no closing event from <b>u2</b> (but closing events may come from <b>tl</b> is <b>tl</b> is connected).</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The boundaries of the time periods are open or closed according to parameters </span><code><b>leftBoundaryIncluded</b> and <b>rightBoundaryIncluded.</b></code></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The maximum number of overlapping time periods is set by the parameter<b> </b></span><span style=\"font-family: Courier New;\"><a href=\"modelica://CRML.ETL.Types\">nMaxOverlap</a></span><span style=\"font-family: MS Shell Dlg 2;\">. If the number of overlapping time periods exceeds </span><span style=\"font-family: Courier New;\"><a href=\"modelica://CRML.ETL.Types\">nMaxOverlap</a></span><span style=\"font-family: MS Shell Dlg 2;\">, an error is raised.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">A time period is represented by a Boolean that is true when the time period is open, and false when the time period is closed.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The time periods that constitute the continuous time locator are stored in vector y</span><span style=\"font-family: Courier New;\">.timePeriod[]</span><span style=\"font-family: MS Shell Dlg 2;\">.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The master time period can be created using the <a href=\"modelica://CRML.ETL.TimeLocators.While\">While</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The events <b>u1</b> and <b>u2</b> can be generated by converting Boolean signals to <a href=\"modelica://CRML.ETL.Types.Boolean4\">Boolean4</a> signals with the block <a href=\"modelica://CRML.Blocks.Logical4.BooleanToBoolean4\">BooleanToBoolean4</a>.</span></p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
      end Periods;

      block While "While time locator"
        import CRML.ETL.Types.Boolean4;
        parameter Boolean leftBoundaryIncluded = true "If true, the left boundaries of the time periods are included";
        parameter Boolean rightBoundaryIncluded = true "If true, the right boundaries of the time periods are included";
      public
        Connectors.WhileOutput y "Vector of time periods" annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100}), iconTransformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -100})));
        Connectors.Boolean4Input u "Alternating opening and closing events" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
      public
        Connectors.WhileInput tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
      equation
        if (cardinality(tl) == 0) then
          tl.timePeriod = true;
          tl.clock = Boolean4.true4;
          tl.isLeftBoundaryIncluded = true;
          tl.isRightBoundaryIncluded = true;
        end if;
        y.timePeriod = (u == Boolean4.true4) and tl.timePeriod;
        y.clock = Boolean4.true4;
        y.isLeftBoundaryIncluded = leftBoundaryIncluded;
        y.isRightBoundaryIncluded = rightBoundaryIncluded;
        annotation(
          Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 0.1, preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {170, 255, 255}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-70, 30}, {70, -52}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-78, 88}, {76, 40}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "while"), Line(points = {{-90, 30}, {-70, 30}, {-70, -52}, {-90, -52}}, color = {0, 0, 0}, visible = not leftBoundaryIncluded), Line(points = {{-50, 30}, {-70, 30}, {-70, -52}, {-50, -52}}, color = {0, 0, 0}, visible = leftBoundaryIncluded), Line(points = {{50, 30}, {70, 30}, {70, -52}, {50, -52}}, color = {0, 0, 0}, visible = rightBoundaryIncluded), Line(points = {{90, 30}, {70, 30}, {70, -52}, {90, -52}}, color = {0, 0, 0}, visible = not rightBoundaryIncluded), Text(extent = {{-40, 2}, {10, -22}}, lineColor = {175, 175, 175}, pattern = LinePattern.Dash, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, textString = "%u"), Line(points = {{-50, 10}, {20, 10}}, color = {0, 0, 0}), Line(points = {{-50, -30}, {-50, 10}}, color = {0, 0, 0}), Line(points = {{20, 10}, {20, -30}}, color = {0, 0, 0}), Line(points = {{-52, -30}, {56, -30}}, color = {175, 175, 175}), Line(points = {{40, -30}, {40, 10}}, color = {0, 0, 0}), Line(points = {{52, 10}, {52, -30}}, color = {0, 0, 0}), Line(points = {{40, 10}, {52, 10}}, color = {0, 0, 0})}),
          Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, initialScale = 0.1, preserveAspectRatio = false), graphics = {Text(extent = {{-86, 38}, {-72, 22}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Text(extent = {{14, 38}, {28, 22}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Text(extent = {{-6, 38}, {8, 22}}, lineColor = {238, 46, 47}, fontName = "Symbol", textString = ""), Text(extent = {{74, 38}, {88, 22}}, lineColor = {238, 46, 47}, fontName = "Symbol", textString = ""), Rectangle(extent = {{-80, 20}, {0, 0}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, pattern = LinePattern.None), Rectangle(extent = {{20, 20}, {80, 0}}, lineColor = {0, 0, 0}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid, pattern = LinePattern.None), Text(extent = {{-68, 14}, {-14, 6}}, lineColor = {0, 0, 0}, textString = "Time period"), Text(extent = {{22, 14}, {76, 6}}, lineColor = {0, 0, 0}, textString = "Time period"), Line(points = {{-90, 0}, {-80, 0}, {-80, 20}, {0, 20}, {0, 0}, {20, 0}, {20, 20}, {80, 20}, {80, 0}, {96, 0}}, color = {0, 0, 0}, arrow = {Arrow.None, Arrow.Filled}), Line(points = {{80, 24}, {80, -82}}, color = {0, 0, 0}, pattern = LinePattern.Dot), Text(extent = {{106, 96}, {120, 80}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Text(extent = {{122, 96}, {170, 84}}, lineColor = {0, 0, 0}, textString = "Opening event"), Text(extent = {{124, 76}, {172, 64}}, lineColor = {0, 0, 0}, textString = "Closing event"), Text(extent = {{108, 76}, {122, 60}}, lineColor = {238, 46, 47}, fontName = "Symbol", textString = "")}),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>While</b>(<b>u </b>= opening_or_closing_event [, <b>tl </b>= master_time_period]); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The<b> While</span></b> block creates a master time period which is a special case of a time locator with no overlapping time periods. The <b>While</b> block truncates the time periods created with the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block or the <b>While</b> block whose <b>tl</b> inputs are connected to the output <b>y</b>.</p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Opening and closing events are respectively delivered on input <b>u</b> when <b>u</b> becomes respectively true and false.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">While can only be used as the master time locator of a <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block or another <b>While</b> block.</span></p>
</html>"));
      end While;

      block ShowDiscretePeriods "Visualizer of a discrete time periods"
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
      public
        Connectors.TimeLocatorInput[N] tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
        CRML.Blocks.Events.ClockEvent[N] eventClock annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        CRML.Blocks.Events.ClockToBoolean[N] clockToBoolean annotation(
          Placement(transformation(extent = {{40, -10}, {60, 10}})));
        Connectors.BooleanOutput[N] y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        Attributes.PeriodTimePeriod[N] timePeriod annotation(
          Placement(transformation(extent = {{-60, -10}, {-40, 10}})));
      equation
        connect(clockToBoolean.u, eventClock.y) annotation(
          Line(points = {{38, 0}, {11, 0}}, color = {175, 175, 175}, pattern = LinePattern.Dot, thickness = 0.5));
        connect(clockToBoolean.y, y) annotation(
          Line(points = {{62, 0}, {110, 0}}, color = {217, 67, 180}));
        connect(tl, timePeriod.tl) annotation(
          Line(points = {{0, 100}, {0, 40}, {-50, 40}, {-50, 10}}, color = {0, 0, 255}));
        connect(timePeriod.y, eventClock.u) annotation(
          Line(points = {{-39, 0}, {-11, 0}}, color = {217, 67, 180}));
        annotation(
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5, fillColor = {170, 213, 255}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(lineColor = {64, 64, 64}, fillColor = {170, 213, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-40, -42}, {40, 40}}), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid)}),
          Diagram(coordinateSystem(initialScale = 0.04)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>ShowDiscreteTimeLocator</b>(<b>tl</b> = discrete_time_locator); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Displays the time periods of a discrete <span style=\"font-family: MS Shell Dlg 2;\"><a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
</html>"));
      end ShowDiscretePeriods;

      block ShowDiscreteWhile "Visualizer of a discrete time while"
        Connectors.WhileInput tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
        CRML.Blocks.Events.ClockEvent eventClock annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        CRML.Blocks.Events.ClockToBoolean clockToBoolean annotation(
          Placement(transformation(extent = {{40, -10}, {60, 10}})));
        Connectors.BooleanOutput y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        Attributes.WhileTimePeriod timePeriod annotation(
          Placement(transformation(extent = {{-60, -10}, {-40, 10}})));
      equation
        connect(clockToBoolean.u, eventClock.y) annotation(
          Line(points = {{38, 0}, {11, 0}}, color = {175, 175, 175}, pattern = LinePattern.Dot, thickness = 0.5));
        connect(clockToBoolean.y, y) annotation(
          Line(points = {{62, 0}, {110, 0}}, color = {217, 67, 180}));
        connect(tl, timePeriod.tl) annotation(
          Line(points = {{0, 100}, {0, 40}, {-50, 40}, {-50, 10}}, color = {0, 0, 255}));
        connect(timePeriod.y, eventClock.u) annotation(
          Line(points = {{-39, 0}, {-11, 0}}, color = {217, 67, 180}));
        annotation(
          Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5, fillColor = {170, 213, 255}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Ellipse(lineColor = {64, 64, 64}, fillColor = {170, 213, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-40, -42}, {40, 40}}), Ellipse(extent = {{60, 10}, {80, -10}}, lineColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillColor = DynamicSelect({235, 235, 235}, if y > 0.5 then {0, 255, 0} else {235, 235, 235}), fillPattern = FillPattern.Solid)}),
          Diagram(coordinateSystem(initialScale = 0.04)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>ShowDiscreteTimeWhile</b>(<b>tl</b> = discrete_time_while); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Displays the time periods of a discrete <span style=\"font-family: MS Shell Dlg 2;\"><a href=\"modelica://CRML.ETL.TimeLocators.While\">While</a> block in the form of clock ticks inside the time periods of the time locator.</span></p>
</html>"));
      end ShowDiscreteWhile;

      package Attributes
        block PeriodStart "Returns the starting events of a single time period"
        protected
          Boolean t(start = false, fixed = true) = tl.timePeriod;
        public
          Connectors.TimeLocatorInput tl annotation(
            Placement(transformation(extent = {{-10, 90}, {10, 110}})));
          Connectors.BooleanOutput y annotation(
            Placement(transformation(extent = {{100, -10}, {120, 10}})));
        equation
          y = edge(t);
          annotation(
            Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5, fillColor = {170, 213, 255}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-86, -64}, {-50, -64}, {-50, -20}, {60, -20}, {60, -66}, {88, -66}}, color = {0, 0, 0}), Text(extent = {{-72, 40}, {-26, -22}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol")}),
            Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5, fillColor = {170, 213, 255}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-86, -64}, {-50, -64}, {-50, -20}, {60, -20}, {60, -66}, {88, -66}}, color = {0, 0, 0}), Text(extent = {{-72, 40}, {-26, -22}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol")}),
            Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> =<b>ShowDiscreteTimeLocator</b>(<b>tl</b> = discrete_time_locator); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Displays the time periods of a <span style=\"font-family: MS Shell Dlg 2;\"><a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block in the form of clock ticks inside the time periods of the time locator.</span></p>
</html>"));
        end PeriodStart;

        block PeriodEnd "Returns closing events of a single time period"
        protected
          Boolean t(start = true, fixed = true) = not tl.timePeriod;
        public
          Connectors.TimeLocatorInput tl annotation(
            Placement(transformation(extent = {{-10, 90}, {10, 110}})));
          Connectors.BooleanOutput y annotation(
            Placement(transformation(extent = {{100, -10}, {120, 10}})));
        equation
          y = edge(t);
          annotation(
            Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5, fillColor = {170, 213, 255}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-86, -64}, {-50, -64}, {-50, -20}, {60, -20}, {60, -66}, {88, -66}}, color = {0, 0, 0}), Text(extent = {{36, 40}, {82, -22}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol")}),
            Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5, fillColor = {170, 213, 255}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-86, -64}, {-50, -64}, {-50, -20}, {60, -20}, {60, -66}, {88, -66}}, color = {0, 0, 0}), Text(extent = {{36, 40}, {82, -22}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol")}),
            Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> =<b>ShowDiscreteTimeLocator</b>(<b>tl</b> = discrete_time_locator); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Displays the time periods of a <span style=\"font-family: MS Shell Dlg 2;\"><a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block in the form of clock ticks inside the time periods of the time locator.</span></p>
</html>"));
        end PeriodEnd;

        block IsLeftBoundaryIncluded "Returns true if the left boundary of the time period is included"
          Connectors.TimeLocatorInput tl annotation(
            Placement(transformation(extent = {{-10, 90}, {10, 110}})));
          Connectors.BooleanOutput y annotation(
            Placement(transformation(extent = {{100, -10}, {120, 10}})));
        equation
          y = tl.isLeftBoundaryIncluded;
          annotation(
            Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5, fillColor = {170, 213, 255}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-86, -64}, {-50, -64}, {-50, -20}, {60, -20}, {60, -66}, {88, -66}}, color = {0, 0, 0}), Line(points = {{-50, 20}, {-50, -12}}, color = {0, 0, 0})}),
            Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5, fillColor = {170, 213, 255}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-86, -64}, {-50, -64}, {-50, -20}, {60, -20}, {60, -66}, {88, -66}}, color = {0, 0, 0}), Line(points = {{-50, 20}, {-50, -12}}, color = {0, 0, 0})}),
            Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> =<b>ShowDiscreteTimeLocator</b>(<b>tl</b> = discrete_time_locator); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Displays the time periods of a <span style=\"font-family: MS Shell Dlg 2;\"><a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block in the form of clock ticks inside the time periods of the time locator.</span></p>
</html>"));
        end IsLeftBoundaryIncluded;

        block IsRightBoundaryIncluded "Returns true if the right boundary of the time period is included"
          Connectors.TimeLocatorInput tl annotation(
            Placement(transformation(extent = {{-10, 90}, {10, 110}})));
          Connectors.BooleanOutput y annotation(
            Placement(transformation(extent = {{100, -10}, {120, 10}})));
        equation
          y = tl.isRightBoundaryIncluded;
          annotation(
            Icon(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5, fillColor = {170, 213, 255}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-86, -64}, {-50, -64}, {-50, -20}, {60, -20}, {60, -66}, {88, -66}}, color = {0, 0, 0}), Line(points = {{60, 18}, {60, -14}}, color = {0, 0, 0})}),
            Diagram(coordinateSystem(initialScale = 0.04), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, lineThickness = 5, fillColor = {170, 213, 255}, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised), Line(points = {{-86, -64}, {-50, -64}, {-50, -20}, {60, -20}, {60, -66}, {88, -66}}, color = {0, 0, 0}), Line(points = {{60, 18}, {60, -14}}, color = {0, 0, 0})}),
            Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> =<b>ShowDiscreteTimeLocator</b>(<b>tl</b> = discrete_time_locator); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>Displays the time periods of a <span style=\"font-family: MS Shell Dlg 2;\"><a href=\"modelica://ETL.TimeLocators.DiscreteTimeLocator\">DiscreteTimeLocator</a> block in the form of clock ticks inside the time periods of the time locator.</span></p>
</html>"));
        end IsRightBoundaryIncluded;

        block PeriodTimePeriod "Extracts the time period of a single time period"
          ETL.Connectors.BooleanOutput y annotation(
            Placement(transformation(extent = {{100, -10}, {120, 10}})));
          ETL.Connectors.TimeLocatorInput tl annotation(
            Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
        equation
          y = tl.timePeriod;
          annotation(
            Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-86, -24}, {-50, -24}, {-50, 20}, {60, 20}, {60, -26}, {88, -26}}, color = {0, 0, 0}), Rectangle(extent = {{-66, -46}, {0, -62}}, lineColor = {0, 0, 0}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid, radius = 0), Rectangle(extent = {{0, -46}, {66, -62}}, lineColor = {0, 0, 0}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid, radius = 0)}),
            Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-86, -24}, {-50, -24}, {-50, 20}, {60, 20}, {60, -26}, {88, -26}}, color = {0, 0, 0}), Rectangle(extent = {{-66, -46}, {0, -62}}, lineColor = {0, 0, 0}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid, radius = 0), Rectangle(extent = {{0, -46}, {66, -62}}, lineColor = {0, 0, 0}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid, radius = 0)}));
        end PeriodTimePeriod;

        block WhileTimePeriod "Extracts the time period of a while locator"
          ETL.Connectors.BooleanOutput y annotation(
            Placement(transformation(extent = {{100, -10}, {120, 10}})));
          ETL.Connectors.WhileInput tl annotation(
            Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
        equation
          y = tl.timePeriod;
          annotation(
            Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-86, -24}, {-50, -24}, {-50, 20}, {60, 20}, {60, -26}, {88, -26}}, color = {0, 0, 0}), Rectangle(extent = {{-66, -46}, {0, -62}}, lineColor = {0, 0, 0}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid, radius = 0), Rectangle(extent = {{0, -46}, {66, -62}}, lineColor = {0, 0, 0}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid, radius = 0)}),
            Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-86, -24}, {-50, -24}, {-50, 20}, {60, 20}, {60, -26}, {88, -26}}, color = {0, 0, 0}), Rectangle(extent = {{-66, -46}, {0, -62}}, lineColor = {0, 0, 0}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid, radius = 0), Rectangle(extent = {{0, -46}, {66, -62}}, lineColor = {0, 0, 0}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid, radius = 0)}));
        end WhileTimePeriod;

        annotation(
          Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(extent = {{-76, -26}, {80, -76}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-76, 24}, {80, -26}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-76, 74}, {80, 24}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Line(points = {{-28, 74}, {-28, -76}}, color = {95, 95, 95}), Line(points = {{24, 74}, {24, -76}}, color = {95, 95, 95})}));
      end Attributes;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Text(extent = {{-64, 36}, {58, -32}}, lineColor = {0, 0, 0}, textString = ""), Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Line(points = {{-80, -66}, {-50, -66}, {-50, -20}, {50, -20}, {50, -66}, {80, -66}}, color = {0, 0, 0}), Text(extent = {{28, 68}, {74, 6}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol"), Text(extent = {{-70, 68}, {-24, 6}}, lineColor = {0, 0, 0}, textString = "", fontName = "Symbol")}));
    end TimeLocators;

    package Requirements
      block CheckAnytime
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
      public
        Connectors.Boolean4Input u "Boolean4 condition" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        Connectors.TimeLocatorInput[N] tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
        Connectors.Boolean4Output y "Result of the comparison" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        CRML.Blocks.Logical4.And4_n and4(N = N) annotation(
          Placement(transformation(extent = {{70, -10}, {90, 10}})));
        Evaluator.Eval[N] eval annotation(
          Placement(transformation(extent = {{30, -10}, {50, 10}})));
        CRML.Blocks.Routing.Boolean4Replicator boolean4Replicator(nout = N) annotation(
          Placement(transformation(extent = {{-90, -10}, {-70, 10}})));
        CRML.Blocks.Logical4.Or4[N] or4_1 annotation(
          Placement(transformation(extent = {{-10, 10}, {10, 30}})));
        CRML.Blocks.Logical4.Not4[N] not4_1 annotation(
          Placement(transformation(extent = {{-50, 20}, {-30, 40}})));
      equation
        connect(tl, eval.tl) annotation(
          Line(points = {{0, 100}, {0, 60}, {40, 60}, {40, 10}}, color = {0, 0, 255}));
        connect(u, boolean4Replicator.u) annotation(
          Line(points = {{-110, 0}, {-92, 0}}, color = {162, 29, 33}));
        connect(eval.y, and4.u) annotation(
          Line(points = {{51, 0}, {69, 0}}, color = {162, 29, 33}));
        connect(and4.y, y) annotation(
          Line(points = {{91, 0}, {110, 0}}, color = {162, 29, 33}));
        connect(boolean4Replicator.y, eval.u) annotation(
          Line(points = {{-69, 0}, {29, 0}}, color = {162, 29, 33}));
        connect(not4_1.y, or4_1.u1) annotation(
          Line(points = {{-29, 30}, {-20, 30}, {-20, 28}, {-11, 28}}, color = {162, 29, 33}));
        connect(boolean4Replicator.y, or4_1.u2) annotation(
          Line(points = {{-69, 0}, {-20, 0}, {-20, 12}, {-11, 12}}, color = {162, 29, 33}));
        connect(boolean4Replicator.y, not4_1.u) annotation(
          Line(points = {{-69, 0}, {-60, 0}, {-60, 30}, {-51, 30}}, color = {162, 29, 33}));
        connect(or4_1.y, eval.a) annotation(
          Line(points = {{11, 20}, {20, 20}, {20, 8}, {29, 8}}, color = {162, 29, 33}));
        //         Text(
        //           extent={{-74,32},{74,-36}},
        //           lineColor={0,0,0},
        //           fillColor={28,108,200},
        //           fillPattern=FillPattern.Solid,
        //           textString=boxName),
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-70, 72}, {70, 44}}, lineColor = {28, 108, 200}, textString = "Check"), Text(extent = {{-70, 18}, {70, -10}}, lineColor = {28, 108, 200}, textString = "anytime")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckAnytime </b>(<b>u</b> = condition, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Each instance of this block creates a requirement that evaluates whether the condition <b>u</b> is satisfied (true) as soon as <b>u</b> becomes true within the time period <b>tl</b> (which can be a continuous or discrete time period). The condition is a <a href=\"modelica://CRML.ETL.Types.Boolean4\">Boolean4</a> that takes its values in the { true, false, undecided, undefined } set.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">To create time locators, refer to the <a href=\"modelica://CRML.ETL.TimeLocators.Periods\">Periods</a> block.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The value of a requirement is a <a href=\"modelica://CRML.ETL.Types.Boolean4\">Boolean4</a> that can be used as input of another Ensure block. It is therefore possible to express requirements on requirements.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Requirements can be combined using <a href=\"modelica://CRML.ETL.Types.Boolean4\">Boolean4</a> operators, refer to the <a href=\"modelica://CRML.Blocks.Logical4\">Logical4</a> package.</span></p>
<p>The condition <b>u</b> can be generated by converting Boolean signals to Boolean4 signals with the block <a href=\"modelica://CRML.Blocks.Logical4.BooleanToBoolean4\">BooleanToBoolean4</a>, or by using the output y of another <a href=\"modelica://CRML.ETL.Requirements.Ensure\">Ensure</a>, <a href=\"modelica://CRML.ETL.Requirements.CheckInteger\">CheckInteger</a> or <a href=\"modelica://CRML.ETL.Requirements.CheckReal\">CheckReal</a> block.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
      end CheckAnytime;

      block CheckAtEnd
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
      public
        Connectors.Boolean4Input u "Boolean4 condition" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        Connectors.TimeLocatorInput[N] tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
        Connectors.Boolean4Output y "Result of the comparison" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        CRML.Blocks.Logical4.And4_n and4(N = N) annotation(
          Placement(transformation(extent = {{70, -10}, {90, 10}})));
        Evaluator.Eval[N] eval annotation(
          Placement(transformation(extent = {{30, -10}, {50, 10}})));
        CRML.Blocks.Routing.Boolean4Replicator boolean4Replicator(nout = N) annotation(
          Placement(transformation(extent = {{-90, -10}, {-70, 10}})));
        CRML.Blocks.Logical.BooleanConstant[N] booleanConstant(each K = false) annotation(
          Placement(transformation(extent = {{-40, 10}, {-20, 30}})));
        CRML.Blocks.Logical4.BooleanToBoolean4[N] booleanToBoolean3_1 annotation(
          Placement(transformation(extent = {{-4, 16}, {4, 24}})));
      equation
        connect(tl, eval.tl) annotation(
          Line(points = {{0, 100}, {0, 60}, {40, 60}, {40, 10}}, color = {0, 0, 255}));
        connect(u, boolean4Replicator.u) annotation(
          Line(points = {{-110, 0}, {-92, 0}}, color = {162, 29, 33}));
        connect(eval.y, and4.u) annotation(
          Line(points = {{51, 0}, {69, 0}}, color = {162, 29, 33}));
        connect(and4.y, y) annotation(
          Line(points = {{91, 0}, {110, 0}}, color = {162, 29, 33}));
        connect(boolean4Replicator.y, eval.u) annotation(
          Line(points = {{-69, 0}, {29, 0}}, color = {162, 29, 33}));
        connect(booleanConstant.y, booleanToBoolean3_1.u) annotation(
          Line(points = {{-19, 20}, {-4.4, 20}}, color = {217, 67, 180}));
        connect(booleanToBoolean3_1.y, eval.a) annotation(
          Line(points = {{4.4, 20}, {20, 20}, {20, 8}, {29, 8}}, color = {162, 29, 33}));
        //         Text(
        //           extent={{-74,32},{74,-36}},
        //           lineColor={0,0,0},
        //           fillColor={28,108,200},
        //           fillPattern=FillPattern.Solid,
        //           textString=boxName),
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-70, 72}, {70, 44}}, lineColor = {28, 108, 200}, textString = "Check"), Text(extent = {{-70, 18}, {70, -10}}, lineColor = {28, 108, 200}, textString = "at end")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
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
      end CheckAtEnd;

      block CheckInteger
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        parameter String boxName = condition[1].name;
        Connectors.Boolean4Input u "Boolean4 condition" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        Connectors.TimeLocatorInput[N] tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
        Connectors.Boolean4Output y "Result of the comparison" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        CRML.Blocks.Logical4.And4_n and4(N = N) annotation(
          Placement(transformation(extent = {{70, -10}, {90, 10}})));
        Evaluator.Eval[N] eval annotation(
          Placement(transformation(extent = {{30, -10}, {50, 10}})));
        CRML.Blocks.Routing.Boolean4Replicator boolean4Replicator(nout = N) annotation(
          Placement(transformation(extent = {{-90, -10}, {-70, 10}})));
        Connectors.IntegerInput threshold annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
        CRML.Blocks.Routing.IntegerReplicator integerReplicator(nout = N) annotation(
          Placement(transformation(extent = {{-90, -90}, {-70, -70}})));
        replaceable model Function = Functions.MathInteger.EventCounter annotation(
          Placement(transformation(extent = {{-40, 10}, {-20, 30}})),
          choices(choice(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter "Event counter")));
        Function[N] genericFunction annotation(
          Placement(transformation(extent = {{-50, -10}, {-30, 10}})));
        replaceable model Condition = Conditions.MathInteger.IntegerGreater annotation(
          Placement(transformation(extent = {{0, 10}, {20, 30}})),
          choices(choice(redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerGreater ">"), choice(redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerGreaterEqual ">="), choice(redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerLower "<"), choice(redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerLowerEqual "<="), choice(redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerEqual "=="), choice(redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerNotEqual "<>")));
        Condition[N] condition annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        CRML.Blocks.Logical4.BooleanToBoolean4[N] booleanToBoolean3_1 annotation(
          Placement(transformation(extent = {{16, 4}, {24, 12}})));
      equation
        connect(tl, eval.tl) annotation(
          Line(points = {{0, 100}, {0, 60}, {40, 60}, {40, 10}}, color = {0, 0, 255}));
        connect(u, boolean4Replicator.u) annotation(
          Line(points = {{-110, 0}, {-92, 0}}, color = {162, 29, 33}));
        connect(eval.y, and4.u) annotation(
          Line(points = {{51, 0}, {69, 0}}, color = {162, 29, 33}));
        connect(and4.y, y) annotation(
          Line(points = {{91, 0}, {110, 0}}, color = {162, 29, 33}));
        connect(threshold, integerReplicator.u) annotation(
          Line(points = {{-110, -80}, {-92, -80}}, color = {255, 127, 0}));
        connect(boolean4Replicator.y, genericFunction.u) annotation(
          Line(points = {{-69, 0}, {-51, 0}}, color = {162, 29, 33}));
        connect(tl, genericFunction.tl) annotation(
          Line(points = {{0, 100}, {0, 60}, {-40, 60}, {-40, 10}}, color = {0, 0, 255}));
        connect(genericFunction.y, condition.u) annotation(
          Line(points = {{-29, 0}, {-20, 0}, {-20, 8}, {-11, 8}}, color = {255, 127, 0}));
        connect(integerReplicator.y, condition.threshold) annotation(
          Line(points = {{-69, -80}, {-20, -80}, {-20, -8}, {-11, -8}}, color = {255, 127, 0}));
        connect(condition.y, eval.u) annotation(
          Line(points = {{11, 0}, {29, 0}}, color = {162, 29, 33}));
        connect(genericFunction.ft, condition.ft) annotation(
          Line(points = {{-40, -11}, {-40, -20}, {0, -20}, {0, -11}}, color = {102, 44, 145}));
        connect(condition.decisionEvent, booleanToBoolean3_1.u) annotation(
          Line(points = {{11, 8}, {15.6, 8}}, color = {217, 67, 180}));
        connect(booleanToBoolean3_1.y, eval.a) annotation(
          Line(points = {{24.4, 8}, {29, 8}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {244, 125, 35}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-74, 32}, {74, -36}}, lineColor = {0, 0, 0}, fillColor = {28, 108, 200}, fillPattern = FillPattern.Solid, textString = boxName), Text(extent = {{-70, 72}, {70, 44}}, lineColor = {28, 108, 200}, textString = "Check"), Text(extent = {{-70, 18}, {70, -10}}, lineColor = {28, 108, 200}, textString = "integer")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckInteger </b>(<b>u</b> = condition, <b>tl</b> = time_period, <b>func</b> = IntegerFunction(<b>threshold</b> = integer_threshold, <b>tl </b>= tl)); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>The purpose of this block is to generalize the <a href=\"modelica://CRML.ETL.Requirements.Check\">Check</a> block in order to evaluate requirements that take integer functions as arguments such as:</p>
<p style=\"margin-left: 30px;\">within <b>tl</b> ensure count <b>u</b> &lt; <b>threshold</b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">which means</span></p>
<p style=\"margin-left: 30px;\"><span style=\"font-family: MS Shell Dlg 2;\">at the end time locator <b>tl</b>, ensure that the number of events on <b>u</b> is less than <b>threshold</b>.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">In this example, <b>func</b> is the function count that counts the number of events on <b>u</b>, i.e. the number of occurences when condition becomes true (is satisfied) and compares it to <b>threshold</b>.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Function <b>func</b> can be chosen from the dialog box among predefined integer functions of the <a href=\"modelica://CRML.ETL.Requirements.Functions.MathInteger\">Functions</a> package. Currently, the only implemented integer function is the <a href=\"modelica://CRML.ETL.Requirements.Functions.MathInteger.EventCounter\">EventCounter</a>.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The comparator to the <b>threshold</b> (e.g. &gt;, &lt;, etc.) can be chosen from the dialog box among the predefined integer comparators of the <a href=\"modelica://CRML.ETL.Requirements.Conditions.MathInteger\">Conditions</a> package.</span></p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
      end CheckInteger;

      block CheckReal
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        parameter String boxName = condition[1].name;
        Connectors.Boolean4Input u "Boolean4 condition" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        Connectors.TimeLocatorInput[N] tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
        Connectors.Boolean4Output y "Result of the comparison" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        CRML.Blocks.Logical4.And4_n and4(N = N) annotation(
          Placement(transformation(extent = {{70, -10}, {90, 10}})));
        Evaluator.Eval[N] eval annotation(
          Placement(transformation(extent = {{30, -10}, {50, 10}})));
        CRML.Blocks.Routing.Boolean4Replicator boolean4Replicator(nout = N) annotation(
          Placement(transformation(extent = {{-90, -10}, {-70, 10}})));
        Connectors.RealInput threshold annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
        CRML.Blocks.Routing.RealReplicator integerReplicator(nout = N) annotation(
          Placement(transformation(extent = {{-90, -90}, {-70, -70}})));
        replaceable model Function = Functions.Math.Boolean4Integrator annotation(
          Placement(transformation(extent = {{-40, 10}, {-20, 30}})),
          choices(choice(redeclare model Function = ETL.Requirements.Functions.Math.Boolean4Integrator "Boolean4 integrator")));
        Function[N] genericFunction annotation(
          Placement(transformation(extent = {{-50, -10}, {-30, 10}})));
        replaceable model Condition = Conditions.Math.Greater annotation(
          Placement(transformation(extent = {{0, 10}, {20, 30}})),
          choices(choice(redeclare model Condition = ETL.Requirements.Conditions.Math.Greater ">"), choice(redeclare model Condition = ETL.Requirements.Conditions.Math.GreaterEqual ">="), choice(redeclare model Condition = ETL.Requirements.Conditions.Math.Lower "<"), choice(redeclare model Condition = ETL.Requirements.Conditions.Math.LowerEqual "<=")));
        Condition[N] condition annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        CRML.Blocks.Logical4.BooleanToBoolean4[N] booleanToBoolean3_1 annotation(
          Placement(transformation(extent = {{16, 4}, {24, 12}})));
      equation
        connect(tl, eval.tl) annotation(
          Line(points = {{0, 100}, {0, 60}, {40, 60}, {40, 10}}, color = {0, 0, 255}));
        connect(u, boolean4Replicator.u) annotation(
          Line(points = {{-110, 0}, {-92, 0}}, color = {162, 29, 33}));
        connect(eval.y, and4.u) annotation(
          Line(points = {{51, 0}, {69, 0}}, color = {162, 29, 33}));
        connect(and4.y, y) annotation(
          Line(points = {{91, 0}, {110, 0}}, color = {162, 29, 33}));
        connect(boolean4Replicator.y, genericFunction.u) annotation(
          Line(points = {{-69, 0}, {-51, 0}}, color = {162, 29, 33}));
        connect(tl, genericFunction.tl) annotation(
          Line(points = {{0, 100}, {0, 60}, {-40, 60}, {-40, 10}}, color = {0, 0, 255}));
        connect(condition.y, eval.u) annotation(
          Line(points = {{11, 0}, {29, 0}}, color = {162, 29, 33}));
        connect(integerReplicator.y, condition.threshold) annotation(
          Line(points = {{-69, -80}, {-20, -80}, {-20, -8}, {-11, -8}}, color = {0, 0, 0}));
        connect(genericFunction.y, condition.u) annotation(
          Line(points = {{-29, 0}, {-20, 0}, {-20, 8}, {-11, 8}}, color = {0, 0, 0}));
        connect(threshold, integerReplicator.u) annotation(
          Line(points = {{-110, -80}, {-92, -80}}, color = {0, 0, 0}));
        connect(genericFunction.ft, condition.ft) annotation(
          Line(points = {{-40, -11}, {-40, -20}, {0, -20}, {0, -11}}, color = {102, 44, 145}));
        connect(condition.decisionEvent, booleanToBoolean3_1.u) annotation(
          Line(points = {{11, 8}, {15.6, 8}}, color = {217, 67, 180}));
        connect(booleanToBoolean3_1.y, eval.a) annotation(
          Line(points = {{24.4, 8}, {29, 8}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {0, 0, 0}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-74, 32}, {74, -36}}, lineColor = {0, 0, 0}, fillColor = {28, 108, 200}, fillPattern = FillPattern.Solid, textString = boxName), Text(extent = {{-70, 72}, {70, 44}}, lineColor = {28, 108, 200}, textString = "Check"), Text(extent = {{-70, 18}, {70, -10}}, lineColor = {28, 108, 200}, textString = "real")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>CheckReal </b>(<b>u</b> = condition, <b>tl</b> = time_period, <b>func</b> = RealFunction(<b>threshold</b> = real_threshold, <b>tl </b>= tl)); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>The purpose of this block is to generalize the <a href=\"modelica://CRML.ETL.Requirements.Check\">Check</a> block in order to evaluate requirements that take real functions as arguments such as:</p>
<p style=\"margin-left: 30px;\">within <b>tl</b> ensure duration <b>u</b> &lt; <b>threshold</b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">which means</span></p>
<p style=\"margin-left: 30px;\"><span style=\"font-family: MS Shell Dlg 2;\">at the end time locator <b>tl</b>, ensure that total duration <b>u</b> was true is less than <b>threshold</b>.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">In this example, <b>func</b> is the function that computes the accumulated time when<b> u </b>is true (is satisfied) and compares it to <b>threshold</b>.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Function <b>func</b> can be chosen from the dialog box among predefined real functions of the <a href=\"modelica://CRML.ETL.Requirements.Functions.Math\">Functions</a> package. Currently, the only implemented integer function is the <a href=\"modelica://CRML.ETL.Requirements.Functions.Math.Boolean4Integrator\">Boolean4Integrator</a>.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The comparator to the <b>threshold</b> (e.g. &gt;, &lt;, etc.) can be chosen from the dialog box among the predefined integer comparators of the <a href=\"modelica://CRML.ETL.Requirements.Conditions.Math\">Conditions</a> package.</span></p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
      end CheckReal;

      block CheckOver
      protected
        parameter Integer N = CRML.ETL.Types.nMaxOverlap;
      public
        Connectors.Boolean4Input u "Boolean4 condition" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        Connectors.TimeLocatorInput[N] tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
        CRML.ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        CRML.Blocks.Logical4.And4_n and4(N = N) annotation(
          Placement(transformation(extent = {{40, -10}, {60, 10}})));
        CRML.Blocks.Routing.Boolean4Replicator boolean4Replicator(nout = N) annotation(
          Placement(transformation(extent = {{-60, -10}, {-40, 10}})));
        CRML.ETL.Requirements.EvaluateOver[N] evaluateOver annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      equation
        connect(u, boolean4Replicator.u) annotation(
          Line(points = {{-110, 0}, {-62, 0}}, color = {162, 29, 33}));
        connect(and4.y, y) annotation(
          Line(points = {{61, 0}, {110, 0}}, color = {162, 29, 33}));
        //         Text(
        //           extent={{-74,32},{74,-36}},
        //           lineColor={0,0,0},
        //           fillColor={28,108,200},
        //           fillPattern=FillPattern.Solid,
        //           textString=boxName),
        connect(evaluateOver.u, boolean4Replicator.y) annotation(
          Line(points = {{-11, 0}, {-39, 0}}, color = {162, 29, 33}));
        connect(evaluateOver.y, and4.u) annotation(
          Line(points = {{11, 0}, {39, 0}}, color = {162, 29, 33}));
        connect(
          evaluateOver.tl, tl) annotation (
          Line(points = {{0, 10}, {0, 100}}, color = {0, 0, 255}, thickness = 0.5));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-70, 72}, {70, 44}}, lineColor = {28, 108, 200}, textString = "check"), Text(extent = {{-70, 18}, {70, -10}}, lineColor = {28, 108, 200}, textString = "over")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
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
      end CheckOver;

      block DecideOver
        Connectors.Boolean4Input u "Boolean4 condition" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        Connectors.TimeLocatorInput tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
        CRML.ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        TimeLocators.Attributes.PeriodEnd periodEnd annotation(
          Placement(transformation(extent = {{-4, -12}, {4, -4}})));
        CRML.Blocks.Logical4.Or4 or4_n annotation(
          Placement(transformation(extent = {{40, -10}, {60, 10}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4 annotation(
          Placement(transformation(extent = {{20, -12}, {28, -4}})));
      equation
        connect(periodEnd.y, booleanToBoolean4.u) annotation(
          Line(points = {{4.4, -8}, {19.6, -8}}, color = {217, 67, 180}));
        connect(or4_n.u2, booleanToBoolean4.y) annotation(
          Line(points = {{39, -8}, {28.4, -8}}, color = {162, 29, 33}));
        connect(or4_n.y, y) annotation(
          Line(points = {{61, 0}, {110, 0}}, color = {162, 29, 33}));
        //         Text(
        //           extent={{-74,32},{74,-36}},
        //           lineColor={0,0,0},
        //           fillColor={28,108,200},
        //           fillPattern=FillPattern.Solid,
        //           textString=boxName),
        connect(or4_n.u1, u) annotation(
          Line(points = {{39, 8}, {-40, 8}, {-40, 0}, {-110, 0}}, color = {162, 29, 33}));
        connect(periodEnd.tl, tl) annotation(
          Line(points = {{0, -4}, {0, 100}}, color = {0, 0, 255}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-70, 72}, {70, 44}}, lineColor = {28, 108, 200}, textString = "decide"), Text(extent = {{-70, 18}, {70, -10}}, lineColor = {28, 108, 200}, textString = "over")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
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
      end DecideOver;

      block EvaluateOver
        Connectors.Boolean4Input u "Boolean4 condition" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        Connectors.TimeLocatorInput tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
        CRML.ETL.Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        CRML_test.ETL.EvaluateOver.IntegrateUndefined integrateUndefined annotation(
          Placement(transformation(extent = {{40, -10}, {60, 10}})));
        CRML.ETL.Requirements.DecideOver decideOver annotation(
          Placement(transformation(extent = {{-80, -10}, {-60, 10}})));
        CRML.Blocks.Logical4.Boolean4Constant boolean4Constant(K = CRML.ETL.Types.Boolean4.false4) annotation(
          Placement(transformation(extent = {{-20, 40}, {0, 60}})));
        CRML.Blocks.Events.EventFilter eventFilter annotation(
          Placement(transformation(extent = {{-20, -10}, {0, 10}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4 annotation(
          Placement(transformation(extent = {{6, -4}, {14, 4}})));
        CRML.Blocks.Events.Event4ToEvent event4ToEvent annotation(
          Placement(transformation(extent = {{-44, 4}, {-36, 12}})));
        CRML.Blocks.Events.Event4ToEvent event4ToEvent1 annotation(
          Placement(transformation(extent = {{-44, -24}, {-36, -16}})));
      equation
        //         Text(
        //           extent={{-74,32},{74,-36}},
        //           lineColor={0,0,0},
        //           fillColor={28,108,200},
        //           fillPattern=FillPattern.Solid,
        //           textString=boxName),
        connect(decideOver.u, u) annotation(
          Line(points = {{-81, 0}, {-110, 0}}, color = {162, 29, 33}));
        connect(eventFilter.y, booleanToBoolean4.u) annotation(
          Line(points = {{1, 0}, {5.6, 0}}, color = {217, 67, 180}));
        connect(decideOver.y, event4ToEvent.u) annotation(
          Line(points = {{-59, 0}, {-50, 0}, {-50, 8}, {-44.4, 8}}, color = {162, 29, 33}));
        connect(event4ToEvent1.u, u) annotation(
          Line(points = {{-44.4, -20}, {-90, -20}, {-90, 0}, {-110, 0}}, color = {162, 29, 33}));
        connect(event4ToEvent1.y, eventFilter.u) annotation(
          Line(points = {{-35.6, -20}, {-26, -20}, {-26, 0}, {-21, 0}}, color = {217, 67, 180}));
        connect(event4ToEvent.y, eventFilter.cond) annotation(
          Line(points = {{-35.6, 8}, {-21, 8}}, color = {217, 67, 180}));
        connect(decideOver.tl, tl) annotation(
          Line(points = {{-70, 10}, {-70, 80}, {0, 80}, {0, 100}}, color = {0, 0, 255}));
        connect(integrateUndefined.tl, tl) annotation(
          Line(points = {{50, 10}, {50, 80}, {0, 80}, {0, 100}}, color = {0, 0, 255}));
        connect(boolean4Constant.y, integrateUndefined.a) annotation(
          Line(points = {{1, 50}, {20, 50}, {20, 8}, {39, 8}}, color = {162, 29, 33}));
        connect(booleanToBoolean4.y, integrateUndefined.u) annotation(
          Line(points = {{14.4, 0}, {39, 0}}, color = {162, 29, 33}));
        connect(integrateUndefined.y, y) annotation(
          Line(points = {{61, 0}, {110, 0}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {162, 29, 33}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Rectangle(extent = {{-78, 80}, {82, -80}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-70, 72}, {70, 44}}, lineColor = {28, 108, 200}, textString = "evaluate"), Text(extent = {{-70, 18}, {70, -10}}, lineColor = {28, 108, 200}, textString = "over")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          Documentation(info = "<html>
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

      package Functions
        package Math
          partial block RealFunction
            import CRML.ETL.Types.Boolean4;
            parameter String name = "Model name";
          public
            Connectors.Boolean4Input u(start = Boolean4.false4, fixed = true) "Boolean4 condition" annotation(
              Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
            Connectors.RealOutput y annotation(
              Placement(transformation(extent = {{100, -10}, {120, 10}})));
            Connectors.TimeLocatorInput tl annotation(
              Placement(transformation(extent = {{-10, 90}, {10, 110}})));
            Connectors.FunctionTypeOutput ft "Function type (monotonic increasing, monotonic decreasing, non monotonic)" annotation(
              Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -110})));
          initial equation
            pre(tl.timePeriod) = false;
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-92, 44}, {88, -36}}, lineColor = {0, 0, 0}, textString = "f", textStyle = {TextStyle.Italic})}),
              Diagram(coordinateSystem(preserveAspectRatio = false)));
          end RealFunction;

          block Boolean4Integrator "Boolean4 integrator"
            extends Math.RealFunction(name = "Boolean4 integrator");
            import CRML.ETL.Types.Boolean4;
            import CRML.ETL.Types.FunctionType;
          protected
            Real x(start = 0, fixed = true);
          public
            Connectors.TimeLocatorInput tl annotation(
              Placement(transformation(extent = {{-10, 90}, {10, 110}})));
          equation
            when not tl.timePeriod then
              reinit(x, 0);
            end when;
            der(x) = (if (u == Boolean4.true4) then 1 else 0)*(if tl.timePeriod then 1 else 0);
            y = x;
            ft = FunctionType.monotonicIncreasing;
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -102}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Polygon(lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid, points = {{-80.0, 90.0}, {-88.0, 68.0}, {-72.0, 68.0}, {-80.0, 90.0}}), Line(points = {{-80.0, 78.0}, {-80.0, -90.0}}, color = {0, 0, 0}), Line(points = {{-80.0, -80.0}, {80.0, 80.0}}, color = {0, 0, 0}), Text(lineColor = {0, 0, 0}, extent = {{0.0, -70.0}, {60.0, -10.0}}, textString = "I"), Line(points = {{-90.0, -80.0}, {82.0, -80.0}}, color = {0, 0, 0}), Polygon(lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid, points = {{90.0, -80.0}, {68.0, -72.0}, {68.0, -88.0}, {90.0, -80.0}})}),
              Diagram(coordinateSystem(preserveAspectRatio = false)),
              Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>Boolean4Integrator</b>(<b>u</b> = condition, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>This blocks computes the accumulated continuous time the Boolean4 condition <b>u </b>is true over time period <b>tl</b>.</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
          end Boolean4Integrator;
          annotation(
            Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Line(origin = {0.061, 4.184}, points = {{81.939, 36.056}, {65.362, 36.056}, {14.39, -26.199}, {-29.966, 113.485}, {-65.374, -61.217}, {-78.061, -78.184}}, color = {95, 95, 95}, smooth = Smooth.Bezier)}));
        end Math;

        package MathInteger
          partial block IntegerFunction
            import CRML.ETL.Types.Boolean4;
            parameter String name = "Model name";
          public
            Connectors.Boolean4Input u(start = Boolean4.false4, fixed = true) "Boolean4 condition" annotation(
              Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
            Connectors.IntegerOutput y annotation(
              Placement(transformation(extent = {{100, -10}, {120, 10}})));
            Connectors.TimeLocatorInput tl annotation(
              Placement(transformation(extent = {{-10, 90}, {10, 110}})));
            Connectors.FunctionTypeOutput ft "Function type (monotonic increasing, monotonic decreasing, non monotonic)" annotation(
              Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {0, -110})));
          initial equation
            pre(tl.timePeriod) = false;
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-92, 44}, {88, -36}}, lineColor = {244, 125, 35}, textString = "f", textStyle = {TextStyle.Italic})}),
              Diagram(coordinateSystem(preserveAspectRatio = false)));
          end IntegerFunction;

          block EventCounter "Event counter"
            extends MathInteger.IntegerFunction(name = "Event counter");
            import CRML.ETL.Types.FunctionType;
            CRML.Blocks.Events.Event4ToEvent event4ToEvent annotation(
              Placement(transformation(extent = {{-94, -4}, {-86, 4}})));
            ETL.TimeLocators.Attributes.PeriodStart timePeriodStartingEvents annotation(
              Placement(transformation(extent = {{-92, 34}, {-84, 42}})));
            ETL.TimeLocators.Attributes.PeriodEnd timePeriodClosingEvents annotation(
              Placement(transformation(extent = {{-92, -42}, {-84, -34}})));
            CRML.Blocks.Events.Before before1 annotation(
              Placement(transformation(extent = {{-40, 20}, {-20, 40}})));
            CRML.Blocks.Events.Before before2 annotation(
              Placement(transformation(extent = {{-40, -40}, {-20, -20}})));
            Modelica.Blocks.Logical.And and1 annotation(
              Placement(transformation(extent = {{-4, 4}, {4, 12}})));
            ETL.TimeLocators.Attributes.IsLeftBoundaryIncluded timePeriodIsLeftBoundaryIncluded annotation(
              Placement(transformation(extent = {{-64, 26}, {-56, 34}})));
            ETL.TimeLocators.Attributes.IsRightBoundaryIncluded timePeriodIsRightBoundaryIncluded annotation(
              Placement(transformation(extent = {{-64, -34}, {-56, -26}})));
            Modelica.Blocks.Logical.Not not1 annotation(
              Placement(transformation(extent = {{-50, 28}, {-46, 32}})));
            Modelica.Blocks.Logical.Not not2 annotation(
              Placement(transformation(extent = {{-50, -32}, {-46, -28}})));
            CRML.Blocks.Events.EventCounter eventCounter annotation(
              Placement(transformation(extent = {{60, -10}, {80, 10}})));
            CRML.Blocks.Events.EventFilter eventFilter annotation(
              Placement(transformation(extent = {{20, -10}, {40, 10}})));
          equation
            ft = FunctionType.monotonicIncreasing;
            connect(u, event4ToEvent.u) annotation(
              Line(points = {{-110, 0}, {-94.4, 0}}, color = {162, 29, 33}));
            connect(tl, timePeriodStartingEvents.tl) annotation(
              Line(points = {{0, 100}, {0, 50}, {-88, 50}, {-88, 42}}, color = {0, 0, 255}));
            connect(tl, timePeriodClosingEvents.tl) annotation(
              Line(points = {{0, 100}, {0, 76}, {0, 76}, {0, 50}, {-80, 50}, {-80, -12}, {-88, -12}, {-88, -34}}, color = {0, 0, 255}));
            connect(timePeriodStartingEvents.y, before1.u1) annotation(
              Line(points = {{-83.6, 38}, {-41, 38}}, color = {217, 67, 180}));
            connect(event4ToEvent.y, before1.u2) annotation(
              Line(points = {{-85.6, 0}, {-50, 0}, {-50, 22}, {-41, 22}}, color = {217, 67, 180}));
            connect(event4ToEvent.y, before2.u1) annotation(
              Line(points = {{-85.6, 0}, {-50, 0}, {-50, -22}, {-41, -22}}, color = {217, 67, 180}));
            connect(timePeriodClosingEvents.y, before2.u2) annotation(
              Line(points = {{-83.6, -38}, {-41, -38}}, color = {217, 67, 180}));
            connect(before1.y, and1.u1) annotation(
              Line(points = {{-19, 30}, {-10, 30}, {-10, 8}, {-4.8, 8}}, color = {217, 67, 180}));
            connect(before2.y, and1.u2) annotation(
              Line(points = {{-19, -30}, {-10, -30}, {-10, 4.8}, {-4.8, 4.8}}, color = {217, 67, 180}));
            connect(timePeriodStartingEvents.y, before1.reset) annotation(
              Line(points = {{-83.6, 38}, {-70, 38}, {-70, 10}, {-30, 10}, {-30, 19}}, color = {217, 67, 180}));
            connect(timePeriodStartingEvents.y, before2.reset) annotation(
              Line(points = {{-83.6, 38}, {-70, 38}, {-70, -50}, {-30, -50}, {-30, -41}}, color = {217, 67, 180}));
            connect(tl, timePeriodIsLeftBoundaryIncluded.tl) annotation(
              Line(points = {{0, 100}, {0, 50}, {-60, 50}, {-60, 34}}, color = {0, 0, 255}));
            connect(tl, timePeriodIsRightBoundaryIncluded.tl) annotation(
              Line(points = {{0, 100}, {0, 50}, {-80, 50}, {-80, -12}, {-60, -12}, {-60, -26}}, color = {0, 0, 255}));
            connect(timePeriodIsLeftBoundaryIncluded.y, not1.u) annotation(
              Line(points = {{-55.6, 30}, {-50.4, 30}}, color = {217, 67, 180}));
            connect(not1.y, before1.strictlyBefore) annotation(
              Line(points = {{-45.8, 30}, {-41, 30}}, color = {255, 0, 255}));
            connect(timePeriodIsRightBoundaryIncluded.y, not2.u) annotation(
              Line(points = {{-55.6, -30}, {-50.4, -30}}, color = {217, 67, 180}));
            connect(not2.y, before2.strictlyBefore) annotation(
              Line(points = {{-45.8, -30}, {-41, -30}}, color = {255, 0, 255}));
            connect(eventFilter.y, eventCounter.u) annotation(
              Line(points = {{41, 0}, {59, 0}}, color = {217, 67, 180}));
            connect(timePeriodStartingEvents.y, eventCounter.reset) annotation(
              Line(points = {{-83.6, 38}, {-70, 38}, {-70, -50}, {70, -50}, {70, -11}}, color = {217, 67, 180}));
            connect(and1.y, eventFilter.cond) annotation(
              Line(points = {{4.4, 8}, {19, 8}}, color = {255, 0, 255}));
            connect(event4ToEvent.y, eventFilter.u) annotation(
              Line(points = {{-85.6, 0}, {19, 0}}, color = {217, 67, 180}));
            connect(eventCounter.y, y) annotation(
              Line(points = {{81, 0}, {110, 0}}, color = {255, 127, 0}));
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-94, 0}, {66, 0}}, color = {238, 46, 47}), Line(points = {{-74, 26}, {-74, 0}}, color = {238, 46, 47}), Line(points = {{-34, 26}, {-34, 0}}, color = {238, 46, 47}), Line(points = {{26, 26}, {26, 0}}, color = {238, 46, 47}), Line(points = {{56, 26}, {56, 0}}, color = {238, 46, 47}), Line(points = {{-94, -90}, {-74, -90}, {-74, -70}, {-34, -70}, {-34, -50}, {26, -50}, {26, -30}, {56, -30}, {56, -10.0195}, {76, -10}}, color = {244, 125, 35})}),
              Diagram(coordinateSystem(preserveAspectRatio = false)),
              Documentation(info = "<html>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Syntax</span></b> </p>
<blockquote><b>y</b> = <b>EventCounter</b>(<b>u</b> = condition, <b>tl</b> = time_period); </blockquote>
<p><b><span style=\"font-family: MS Shell Dlg 2;\">Description</span></b> </p>
<p>This blocks computes the number of event occurrences on the Boolean4 condition <b>u </b>over time period <b>tl </b>(i.e. the total number of occurrences when <b>u</b> becomes true over <b>tl</b>).</p>
<p><br><b><span style=\"font-family: MS Shell Dlg 2;\">Example</span></b> </p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This block is demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.TimeLocators.Continuous.After\">example</a>:</span></p>
</html>"));
          end EventCounter;
          annotation(
            Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Line(points = {{-74, -66}, {-46, -66}, {-46, -30}, {12, -30}, {12, 66}}, color = {255, 128, 0}), Line(points = {{12, 66}, {70, 66}}, color = {255, 128, 0})}));
        end MathInteger;
        annotation(
          Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Text(extent = {{-90, 44}, {90, -36}}, lineColor = {0, 0, 0}, textString = "f", textStyle = {TextStyle.Italic}), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0)}));
      end Functions;

      package Conditions
        package Math
          partial block RealCondition
            parameter String name = "Model name";
            Connectors.RealInput u "Function to be compared to threshold" annotation(
              Placement(transformation(extent = {{-120, 70}, {-100, 90}})));
            Connectors.RealInput threshold "Threshold" annotation(
              Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
            Connectors.Boolean4Output y annotation(
              Placement(transformation(extent = {{100, -10}, {120, 10}})));
            Connectors.BooleanOutput decisionEvent annotation(
              Placement(transformation(extent = {{100, 70}, {120, 90}})));
            Connectors.FunctionTypeInput ft "Function type (monotonic increasing, monotonic decreasing, non monotonic)" annotation(
              Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 0}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 0}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
              Documentation(info = "<html>
<p>
The output is <b>true</b> if Real input u1 is greater than
Real input u2, otherwise the output is <b>false</b>.
</p>
</html>"));
          end RealCondition;

          block Greater "Output y is true, if u is greater than threshold"
            extends Math.RealCondition(name = ">");
            import CRML.ETL.Types.FunctionType;
          equation
            y = CRML.ETL.Types.cvBooleanToBoolean4(u > threshold);
            if ft == FunctionType.monotonicIncreasing then
              decisionEvent = (u > threshold);
            elseif ft == FunctionType.monotonicDecreasing then
              decisionEvent = not (u > threshold);
            else
              decisionEvent = false;
            end if;
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 0}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 0}), Line(points = {{-54, 22}, {-8, 2}, {-54, -18}}, thickness = 0.5, color = {0, 0, 0}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
              Documentation(info = "<html>
<p>
The output is <b>true</b> if Real input u1 is greater than
Real input u2, otherwise the output is <b>false</b>.
</p>
</html>"));
          end Greater;

          block GreaterEqual "Output y is true, if u is greater or equal than threshold"
            extends Math.RealCondition(name = ">=");
            import CRML.ETL.Types.FunctionType;
          equation
            y = CRML.ETL.Types.cvBooleanToBoolean4(u >= threshold);
            if ft == FunctionType.monotonicIncreasing then
              decisionEvent = (u >= threshold);
            elseif ft == FunctionType.monotonicDecreasing then
              decisionEvent = not (u >= threshold);
            else
              decisionEvent = false;
            end if;
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 0}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 0}), Line(points = {{-54, 22}, {-8, 2}, {-54, -18}}, thickness = 0.5, color = {0, 0, 0}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-52, -36}, {-6, -14}}, thickness = 0.5)}),
              Documentation(info = "<html>
<p>
The output is <b>true</b> if Real input u1 is greater than
Real input u2, otherwise the output is <b>false</b>.
</p>
</html>"));
          end GreaterEqual;

          block Lower "Output y is true, if u is lower than threshold"
            extends Math.RealCondition(name = "<");
            import CRML.ETL.Types.FunctionType;
          equation
            y = CRML.ETL.Types.cvBooleanToBoolean4(u < threshold);
            if ft == FunctionType.monotonicIncreasing then
              decisionEvent = not (u < threshold);
            elseif ft == FunctionType.monotonicDecreasing then
              decisionEvent = (u < threshold);
            else
              decisionEvent = false;
            end if;
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 0}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 0}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-6, 18}, {-50, -2}, {-6, -20}}, thickness = 0.5, color = {0, 0, 0})}),
              Documentation(info = "<html>
<p>
The output is <b>true</b> if Real input u1 is greater than
Real input u2, otherwise the output is <b>false</b>.
</p>
</html>"));
          end Lower;

          block LowerEqual "Output y is true, if u is lower or equal than threshold"
            extends Math.RealCondition(name = "<=");
            import CRML.ETL.Types.FunctionType;
          equation
            y = CRML.ETL.Types.cvBooleanToBoolean4(u <= threshold);
            if ft == FunctionType.monotonicIncreasing then
              decisionEvent = not (u <= threshold);
            elseif ft == FunctionType.monotonicDecreasing then
              decisionEvent = (u <= threshold);
            else
              decisionEvent = false;
            end if;
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 0}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 0}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-6, 18}, {-50, -2}, {-6, -20}}, thickness = 0.5, color = {0, 0, 0}), Line(points = {{-50, -18}, {-10, -34}}, thickness = 0.5, color = {0, 0, 0})}),
              Documentation(info = "<html>
<p>
The output is <b>true</b> if Real input u1 is greater than
Real input u2, otherwise the output is <b>false</b>.
</p>
</html>"));
          end LowerEqual;
          annotation(
            Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Line(origin = {0.061, 4.184}, points = {{81.939, 36.056}, {65.362, 36.056}, {14.39, -26.199}, {-29.966, 113.485}, {-65.374, -61.217}, {-78.061, -78.184}}, color = {95, 95, 95}, smooth = Smooth.Bezier)}));
        end Math;

        package MathInteger
          partial block IntegerCondition
            parameter String name = "Model name";
            Connectors.IntegerInput u annotation(
              Placement(transformation(extent = {{-120, 70}, {-100, 90}})));
            Connectors.IntegerInput threshold annotation(
              Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
            Connectors.Boolean4Output y annotation(
              Placement(transformation(extent = {{100, -10}, {120, 10}})));
            Connectors.BooleanOutput decisionEvent annotation(
              Placement(transformation(extent = {{100, 70}, {120, 90}})));
            Connectors.FunctionTypeInput ft "Function type (monotonic increasing, monotonic decreasing, non monotonic)" annotation(
              Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {0, -110})));
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {244, 125, 35}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {244, 125, 35}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
              Documentation(info = "<html>
<p>
The output is <b>true</b> if Real input u1 is greater than
Real input u2, otherwise the output is <b>false</b>.
</p>
</html>"));
          end IntegerCondition;

          block IntegerGreater "Output y is true, if u is greater than threshold"
            extends MathInteger.IntegerCondition(name = ">");
            import CRML.ETL.Types.FunctionType;
          equation
            y = CRML.ETL.Types.cvBooleanToBoolean4(u > threshold);
            if ft == FunctionType.monotonicIncreasing then
              decisionEvent = (u > threshold);
            elseif ft == FunctionType.monotonicDecreasing then
              decisionEvent = not (u > threshold);
            else
              decisionEvent = false;
            end if;
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {244, 125, 35}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {244, 125, 35}), Line(points = {{-54, 22}, {-8, 2}, {-54, -18}}, thickness = 0.5, color = {244, 125, 35}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
              Documentation(info = "<html>
<p>
The output is <b>true</b> if Real input u1 is greater than
Real input u2, otherwise the output is <b>false</b>.
</p>
</html>"));
          end IntegerGreater;

          block IntegerGreaterEqual "Output y is true, if u is greater or equal than threshold"
            extends MathInteger.IntegerCondition(name = ">=");
            import CRML.ETL.Types.FunctionType;
          equation
            y = CRML.ETL.Types.cvBooleanToBoolean4(u >= threshold);
            if ft == FunctionType.monotonicIncreasing then
              decisionEvent = (u >= threshold);
            elseif ft == FunctionType.monotonicDecreasing then
              decisionEvent = not (u >= threshold);
            else
              decisionEvent = false;
            end if;
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {244, 125, 35}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {244, 125, 35}), Line(points = {{-54, 22}, {-8, 2}, {-54, -18}}, thickness = 0.5, color = {244, 125, 35}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-52, -36}, {-6, -14}}, thickness = 0.5, color = {244, 125, 35})}),
              Documentation(info = "<html>
<p>
The output is <b>true</b> if Real input u1 is greater than
Real input u2, otherwise the output is <b>false</b>.
</p>
</html>"));
          end IntegerGreaterEqual;

          block IntegerLower "Output y is true, if u is lower than threshold"
            extends MathInteger.IntegerCondition(name = "<");
            import CRML.ETL.Types.FunctionType;
          equation
            y = CRML.ETL.Types.cvBooleanToBoolean4(u < threshold);
            if ft == FunctionType.monotonicIncreasing then
              decisionEvent = not (u < threshold);
            elseif ft == FunctionType.monotonicDecreasing then
              decisionEvent = (u < threshold);
            else
              decisionEvent = false;
            end if;
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {244, 125, 35}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {244, 125, 35}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-6, 18}, {-50, -2}, {-6, -20}}, thickness = 0.5, color = {244, 125, 35})}),
              Documentation(info = "<html>
<p>
The output is <b>true</b> if Real input u1 is greater than
Real input u2, otherwise the output is <b>false</b>.
</p>
</html>"));
          end IntegerLower;

          block IntegerLowerEqual "Output y is true, if u is lower or equal than threshold"
            extends MathInteger.IntegerCondition(name = "<=");
            import CRML.ETL.Types.FunctionType;
          equation
            y = CRML.ETL.Types.cvBooleanToBoolean4(u <= threshold);
            if ft == FunctionType.monotonicIncreasing then
              decisionEvent = not (u <= threshold);
            elseif ft == FunctionType.monotonicDecreasing then
              decisionEvent = (u <= threshold);
            else
              decisionEvent = false;
            end if;
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {244, 125, 35}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {244, 125, 35}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-6, 18}, {-50, -2}, {-6, -20}}, thickness = 0.5, color = {244, 125, 35}), Line(points = {{-50, -18}, {-10, -34}}, thickness = 0.5, color = {244, 125, 35})}),
              Documentation(info = "<html>
<p>
The output is <b>true</b> if Real input u1 is greater than
Real input u2, otherwise the output is <b>false</b>.
</p>
</html>"));
          end IntegerLowerEqual;

          block IntegerEqual "Output y is true, if u is equal to threshold"
            extends MathInteger.IntegerCondition(name = "==");
            import CRML.ETL.Types.FunctionType;
          equation
            y = CRML.ETL.Types.cvBooleanToBoolean4(u == threshold);
            if ft == FunctionType.monotonicIncreasing then
              decisionEvent = (u > threshold);
            elseif ft == FunctionType.monotonicDecreasing then
              decisionEvent = (u < threshold);
            else
              decisionEvent = false;
            end if;
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {244, 125, 35}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {244, 125, 35}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-50, 10}, {-2, 10}}, color = {244, 125, 35}), Line(points = {{-50, -10}, {-2, -10}}, color = {244, 125, 35})}),
              Documentation(info = "<html>
<p>
The output is <b>true</b> if Real input u1 is greater than
Real input u2, otherwise the output is <b>false</b>.
</p>
</html>"));
          end IntegerEqual;

          block IntegerNotEqual "Output y is true, if u is not equal to threshold"
            extends MathInteger.IntegerCondition(name = "<>");
            import CRML.ETL.Types.FunctionType;
          equation
            y = CRML.ETL.Types.cvBooleanToBoolean4(u <> threshold);
            if ft == FunctionType.monotonicIncreasing then
              decisionEvent = (u > threshold);
            elseif ft == FunctionType.monotonicDecreasing then
              decisionEvent = (u < threshold);
            else
              decisionEvent = false;
            end if;
            annotation(
              Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {244, 125, 35}), Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {244, 125, 35}), Text(extent = {{-51, 150}, {51, 114}}, lineColor = {0, 0, 255}, lineThickness = 0.5, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name"), Line(points = {{-50, 10}, {-2, 10}}, color = {244, 125, 35}), Line(points = {{-50, -10}, {-2, -10}}, color = {244, 125, 35}), Line(points = {{-44, -22}, {-8, 22}}, color = {244, 125, 35})}),
              Documentation(info = "<html>
<p>
The output is <b>true</b> if Real input u1 is greater than
Real input u2, otherwise the output is <b>false</b>.
</p>
</html>"));
          end IntegerNotEqual;
          annotation(
            Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Line(points = {{-74, -66}, {-46, -66}, {-46, -30}, {12, -30}, {12, 66}}, color = {255, 128, 0}), Line(points = {{12, 66}, {70, 66}}, color = {255, 128, 0})}));
        end MathInteger;
        annotation(
          Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Text(extent = {{-38, 46}, {40, -26}}, lineColor = {0, 0, 0}, fontName = "Symbol", textString = "")}));
      end Conditions;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Text(extent = {{-64, 36}, {58, -32}}, lineColor = {0, 0, 0}, textString = "ℛ")}));
    end Requirements;

    package Blocks
      package Clocks
        model Inside "Filter clock ticks inside a time period"
        protected
          parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        public
          CRML.Blocks.Events.EventFilter eventFilter annotation(
            Placement(transformation(extent = {{-12, -10}, {8, 10}})));
          CRML.ETL.TimeLocators.Attributes.PeriodTimePeriod periodTimePeriod annotation(
            Placement(transformation(extent = {{-84, -44}, {-76, -36}})));
          CRML.ETL.Connectors.ClockOutput y annotation(
            Placement(transformation(extent = {{100, -10}, {120, 10}})));
          CRML.Blocks.Events.ClockEvent eventClock annotation(
            Placement(transformation(extent = {{60, -10}, {80, 10}})));
          Connectors.ClockInput u annotation(
            Placement(transformation(extent = {{-120, 20}, {-100, 40}})));
          Connectors.TimeLocatorInput tl annotation(
            Placement(transformation(extent = {{-120, -40}, {-100, -20}})));
          Modelica.Clocked.BooleanSignals.NonPeriodic.ClockToBoolean clockToBoolean annotation(
            Placement(transformation(extent = {{-60, 20}, {-40, 40}})));
        equation
          connect(y, eventClock.y) annotation(
            Line(points = {{110, 0}, {81, 0}}, color = {175, 175, 175}, pattern = LinePattern.Dot, thickness = 0.5));
          connect(periodTimePeriod.tl, tl) annotation(
            Line(points = {{-80, -36}, {-80, -30}, {-110, -30}}, color = {0, 0, 255}));
          connect(u, clockToBoolean.u) annotation(
            Line(points = {{-110, 30}, {-62, 30}}, color = {0, 0, 0}));
          connect(periodTimePeriod.y, eventFilter.cond) annotation(
            Line(points = {{-75.6, -40}, {-20, -40}, {-20, 8}, {-13, 8}}, color = {217, 67, 180}));
          connect(eventFilter.u, clockToBoolean.y) annotation(
            Line(points = {{-13, 0}, {-26, 0}, {-26, 30}, {-39, 30}}, color = {217, 67, 180}));
          connect(eventFilter.y, eventClock.u) annotation(
            Line(points = {{9, 0}, {59, 0}}, color = {217, 67, 180}));
          annotation(
            Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-250, 170}, {250, 110}}, textString = "%name", lineColor = {0, 0, 255}), Line(points = {{-72, 34}, {-28, 34}, {-28, 78}, {-28, 78}, {-28, 34}, {74, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Ellipse(extent = {{-38, 88}, {-18, 68}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Line(points = {{-86, -52}, {-50, -52}, {-50, -8}, {60, -8}, {60, -54}, {88, -54}}, color = {28, 108, 200}), Ellipse(extent = {{4, 88}, {24, 68}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Line(points = {{14, 78}, {14, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Ellipse(extent = {{64, 88}, {84, 68}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Line(points = {{74, 78}, {74, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Ellipse(extent = {{-82, 88}, {-62, 68}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Line(points = {{-72, 78}, {-72, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Ellipse(extent = {{-38, 2}, {-18, -18}}, lineColor = {0, 140, 72}, fillPattern = FillPattern.Solid, fillColor = {255, 255, 255}), Ellipse(extent = {{4, 2}, {24, -18}}, lineColor = {0, 140, 72}, fillPattern = FillPattern.Solid, fillColor = {255, 255, 255})}),
            Diagram(coordinateSystem(preserveAspectRatio = false)));
        end Inside;

        model CountInside "Count the occurrences of events inside a time period"
        protected
          parameter Integer N = CRML.ETL.Types.nMaxOverlap;
        public
          Connectors.TimeLocatorInput tl annotation(
            Placement(transformation(extent = {{-120, -20}, {-100, -40}})));
          Connectors.ClockInput u annotation(
            Placement(transformation(extent = {{-120, 40}, {-100, 20}})));
          CRML.ETL.Connectors.IntegerOutput y annotation(
            Placement(transformation(extent = {{100, -10}, {120, 10}})));
          CRML.ETL.Blocks.Clocks.Inside inside annotation(
            Placement(transformation(extent = {{-60, -10}, {-40, 10}})));
          CRML.Blocks.Events.EventCounter eventCounter annotation(
            Placement(transformation(extent = {{40, -10}, {60, 10}})));
          Modelica.Clocked.BooleanSignals.NonPeriodic.ClockToBoolean clockToBoolean annotation(
            Placement(transformation(extent = {{-4, -4}, {4, 4}})));
          CRML.Blocks.Logical.BooleanConstant booleanConstant(K = false) annotation(
            Placement(transformation(extent = {{20, -60}, {40, -40}})));
        equation
          connect(eventCounter.y, y) annotation(
            Line(points = {{61, 0}, {110, 0}}, color = {255, 127, 0}));
          connect(inside.y, clockToBoolean.u) annotation(
            Line(points = {{-39, 0}, {-4.8, 0}}, color = {175, 175, 175}, pattern = LinePattern.Dot, thickness = 0.5));
          connect(clockToBoolean.y, eventCounter.u) annotation(
            Line(points = {{4.4, 0}, {39, 0}}, color = {217, 67, 180}));
          connect(inside.u, u) annotation(
            Line(points = {{-61, 3}, {-80, 3}, {-80, 30}, {-110, 30}}, color = {175, 175, 175}, pattern = LinePattern.Dot, thickness = 0.5));
          connect(inside.tl, tl) annotation(
            Line(points = {{-61, -3}, {-80, -3}, {-80, -30}, {-110, -30}}, color = {0, 0, 255}));
          connect(booleanConstant.y, eventCounter.reset) annotation(
            Line(points = {{41, -50}, {50, -50}, {50, -11}}, color = {217, 67, 180}));
          annotation(
            Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-250, 170}, {250, 110}}, textString = "%name", lineColor = {0, 0, 255}), Line(points = {{-72, 34}, {-28, 34}, {-28, 78}, {-28, 78}, {-28, 34}, {74, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Ellipse(extent = {{-38, 88}, {-18, 68}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Line(points = {{-86, -32}, {-50, -32}, {-50, 12}, {60, 12}, {60, -34}, {88, -34}}, color = {28, 108, 200}), Ellipse(extent = {{4, 88}, {24, 68}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Line(points = {{14, 78}, {14, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Ellipse(extent = {{64, 88}, {84, 68}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Line(points = {{74, 78}, {74, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Ellipse(extent = {{-82, 88}, {-62, 68}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Line(points = {{-72, 78}, {-72, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Ellipse(extent = {{-38, 22}, {-18, 2}}, lineColor = {0, 140, 72}, fillPattern = FillPattern.Solid, fillColor = {255, 255, 255}), Ellipse(extent = {{4, 22}, {24, 2}}, lineColor = {0, 140, 72}, fillPattern = FillPattern.Solid, fillColor = {255, 255, 255}), Line(points = {{-86, -80}, {-30, -80}, {-30, -66}, {12, -66}, {12, -54}, {76, -54}, {76, -54}}, color = {244, 125, 35})}),
            Diagram(coordinateSystem(preserveAspectRatio = false)));
        end CountInside;
        annotation(
          Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Polygon(points = {{92, 0}, {70, 8}, {70, -8}, {92, 0}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-72, 6}, {-62, -4}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-54, 6}, {-44, -4}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, 6}, {-10, -4}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Ellipse(extent = {{22, 6}, {32, -4}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid)}));
      end Clocks;

      package Events
        model BecomesTrue "Events generated when a Boolean becomes true"
          Connectors.Boolean4Input b1 annotation(
            Placement(transformation(extent = {{-120, 10}, {-100, -10}})));
          Connectors.ClockOutput y annotation(
            Placement(transformation(extent = {{100, 10}, {120, -10}})));
          CRML.Blocks.Events.ClockEvent clockEvent annotation(
            Placement(transformation(extent = {{-6, -6}, {6, 6}})));
          CRML.Blocks.Events.Event4ToEvent event4ToEvent annotation(
            Placement(transformation(extent = {{-54, -4}, {-46, 4}})));
        equation
          connect(clockEvent.y, y) annotation(
            Line(points = {{6.6, 0}, {110, 0}}, color = {175, 175, 175}, pattern = LinePattern.Dot, thickness = 0.5));
          connect(b1, event4ToEvent.u) annotation(
            Line(points = {{-110, 0}, {-54.4, 0}}, color = {0, 0, 0}));
          connect(clockEvent.u, event4ToEvent.y) annotation(
            Line(points = {{-6.6, 0}, {-45.6, 0}}, color = {217, 67, 180}));
          annotation(
            Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{30, 78}, {30, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Text(extent = {{-250, 170}, {250, 110}}, textString = "%name", lineColor = {0, 0, 255}), Line(points = {{-80, 34}, {-50, 34}, {-50, 78}, {-50, 78}, {-50, 34}, {52, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Line(points = {{-86, -52}, {-50, -52}, {-50, -8}, {-8, -8}, {-8, -54}, {-8, -54}}, color = {162, 29, 33}), Ellipse(extent = {{20, 88}, {40, 68}}, lineColor = {0, 140, 72}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-60, 88}, {-40, 68}}, lineColor = {0, 140, 72}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-8, -54}, {28, -54}, {28, -8}, {52, -8}, {52, -54}, {76, -54}}, color = {162, 29, 33})}),
            Diagram(coordinateSystem(preserveAspectRatio = false)));
        end BecomesTrue;

        model BecomesTrueInside "Events generated when a Boolean becomes true inside a time period"
          Connectors.Boolean4Input u annotation(
            Placement(transformation(extent = {{-120, 60}, {-100, 40}})));
          CRML.ETL.Connectors.ClockOutput y annotation(
            Placement(transformation(extent = {{100, 10}, {120, -10}})));
          Connectors.TimeLocatorInput tl annotation(
            Placement(transformation(extent = {{-120, -60}, {-100, -40}})));
          CRML.ETL.Blocks.Events.BecomesTrue becomesTrue annotation(
            Placement(transformation(extent = {{-60, -10}, {-40, 10}})));
          CRML.ETL.Blocks.Clocks.Inside inside annotation(
            Placement(transformation(extent = {{0, -10}, {20, 10}})));
        equation
          connect(u, becomesTrue.b1) annotation(
            Line(points = {{-110, 50}, {-80, 50}, {-80, 0}, {-61, 0}}, color = {0, 0, 0}));
          connect(inside.u, becomesTrue.y) annotation(
            Line(points = {{-1, 3}, {-28, 3}, {-28, 0}, {-39, 0}}, color = {175, 175, 175}, pattern = LinePattern.Dot, thickness = 0.5));
          connect(tl, inside.tl) annotation(
            Line(points = {{-110, -50}, {-80, -50}, {-80, -40}, {-20, -40}, {-20, -3}, {-1, -3}}, color = {0, 0, 0}));
          connect(inside.y, y) annotation(
            Line(points = {{21, 0}, {110, 0}}, color = {175, 175, 175}, pattern = LinePattern.Dot, thickness = 0.5));
          annotation(
            Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{28, 78}, {28, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Text(extent = {{-250, 170}, {250, 110}}, textString = "%name", lineColor = {0, 0, 255}), Line(points = {{-80, 34}, {-50, 34}, {-50, 78}, {-50, 78}, {-50, 34}, {52, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Line(points = {{-86, 34}, {-50, 34}, {-50, 78}, {-8, 78}, {-8, 32}, {-8, 34}}, color = {162, 29, 33}), Ellipse(extent = {{-60, 88}, {-40, 68}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Line(points = {{-8, 34}, {28, 34}, {28, 78}, {52, 78}, {52, 34}, {76, 34}}, color = {162, 29, 33}), Ellipse(extent = {{18, 88}, {38, 68}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Line(points = {{-90, -50}, {-64, -50}, {-64, -6}, {16, -6}, {16, -52}, {84, -52}}, color = {28, 108, 200}), Ellipse(extent = {{-58, 4}, {-38, -16}}, lineColor = {0, 140, 72}, fillPattern = FillPattern.Solid, fillColor = {255, 255, 255})}),
            Diagram(coordinateSystem(preserveAspectRatio = false)));
        end BecomesTrueInside;

        model BecomesFalse "Events generated when a Boolean becomes false"
          Connectors.Boolean4Input b1 annotation(
            Placement(transformation(extent = {{-120, 10}, {-100, -10}})));
          CRML.ETL.Connectors.ClockOutput y annotation(
            Placement(transformation(extent = {{100, 10}, {120, -10}})));
          CRML.Blocks.Events.ClockEvent clockEvent annotation(
            Placement(transformation(extent = {{-6, -6}, {6, 6}})));
          CRML.Blocks.Events.Event4ToEvent event4ToEvent annotation(
            Placement(transformation(extent = {{-54, -4}, {-46, 4}})));
          CRML.Blocks.Logical4.Not4 not4_1 annotation(
            Placement(transformation(extent = {{-88, -10}, {-68, 10}})));
        equation
          connect(clockEvent.y, y) annotation(
            Line(points = {{6.6, 0}, {110, 0}}, color = {175, 175, 175}, pattern = LinePattern.Dot, thickness = 0.5));
          connect(clockEvent.u, event4ToEvent.y) annotation(
            Line(points = {{-6.6, 0}, {-45.6, 0}}, color = {217, 67, 180}));
          connect(event4ToEvent.u, not4_1.y) annotation(
            Line(points = {{-54.4, 0}, {-67, 0}}, color = {162, 29, 33}));
          connect(b1, not4_1.u) annotation(
            Line(points = {{-110, 0}, {-89, 0}}, color = {0, 0, 0}));
          annotation(
            Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 102}, {100, -98}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-250, 170}, {250, 110}}, textString = "%name", lineColor = {0, 0, 255}), Line(points = {{-80, 34}, {-50, 34}, {-4, 34}, {-50, 34}, {-50, 34}, {52, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Line(points = {{-86, -52}, {-50, -52}, {-50, -8}, {-8, -8}, {-8, -54}, {-8, -54}}, color = {0, 0, 0}), Line(points = {{54, 78}, {54, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Line(points = {{-8, -54}, {28, -54}, {28, -8}, {52, -8}, {52, -54}, {76, -54}}, color = {0, 0, 0}), Line(points = {{-8, 78}, {-8, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Ellipse(extent = {{44, 88}, {64, 68}}, lineColor = {0, 140, 72}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-18, 88}, {2, 68}}, lineColor = {0, 140, 72}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}),
            Diagram(coordinateSystem(preserveAspectRatio = false)),
            Documentation(info = "<html>
</html>"));
        end BecomesFalse;

        model BecomesFalseInside "Events generated when a Boolean becomes false inside a time period"
          Connectors.Boolean4Input b1 annotation(
            Placement(transformation(extent = {{-120, 60}, {-100, 40}})));
          CRML.ETL.Connectors.ClockOutput y annotation(
            Placement(transformation(extent = {{100, 10}, {120, -10}})));
          Connectors.TimeLocatorInput P1 annotation(
            Placement(transformation(extent = {{-120, -60}, {-100, -40}})));
          CRML.ETL.Blocks.Events.BecomesFalse becomesFalse annotation(
            Placement(transformation(extent = {{-60, -10}, {-40, 10}})));
          CRML.ETL.Blocks.Clocks.Inside inside annotation(
            Placement(transformation(extent = {{0, -10}, {20, 10}})));
        equation
          connect(b1, becomesFalse.b1) annotation(
            Line(points = {{-110, 50}, {-80, 50}, {-80, 0}, {-61, 0}}, color = {0, 0, 0}));
          connect(P1, inside.tl) annotation(
            Line(points = {{-110, -50}, {-80, -50}, {-80, -40}, {-20, -40}, {-20, -3}, {-1, -3}}, color = {0, 0, 0}));
          connect(inside.y, y) annotation(
            Line(points = {{21, 0}, {110, 0}}, color = {175, 175, 175}, pattern = LinePattern.Dot, thickness = 0.5));
          connect(becomesFalse.y, inside.u) annotation(
            Line(points = {{-39, 0}, {-6, 0}, {-6, 3}, {-1, 3}}, color = {175, 175, 175}, pattern = LinePattern.Dot, thickness = 0.5));
          annotation(
            Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{28, 78}, {28, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Text(extent = {{-250, 170}, {250, 110}}, textString = "%name", lineColor = {0, 0, 255}), Line(points = {{-80, 34}, {-50, 34}, {-50, 78}, {-50, 78}, {-50, 34}, {52, 34}}, color = {0, 140, 72}, pattern = LinePattern.Dot), Line(points = {{-86, 34}, {-50, 34}, {-50, 78}, {-8, 78}, {-8, 32}, {-8, 34}}, color = {162, 29, 33}), Ellipse(extent = {{-18, 88}, {2, 68}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Line(points = {{-8, 34}, {28, 34}, {28, 78}, {52, 78}, {52, 34}, {76, 34}}, color = {162, 29, 33}), Ellipse(extent = {{42, 88}, {62, 68}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Line(points = {{-90, -50}, {-64, -50}, {-64, -6}, {16, -6}, {16, -52}, {84, -52}}, color = {28, 108, 200}), Ellipse(extent = {{-18, 4}, {2, -16}}, lineColor = {0, 140, 72}, fillPattern = FillPattern.Solid, fillColor = {255, 255, 255})}),
            Diagram(coordinateSystem(preserveAspectRatio = false)));
        end BecomesFalseInside;
        annotation(
          Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Line(points = {{-78, 0}, {70, 0}}, color = {255, 0, 255}), Polygon(points = {{92, 0}, {70, 8}, {70, -8}, {92, 0}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-36, 0}, {-36, 81}}, color = {255, 0, 255}), Line(points = {{40, 0}, {40, 81}}, color = {255, 0, 255})}));
      end Events;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(origin = {0, 35.1488}, fillColor = {255, 255, 255}, extent = {{-30.0, -20.1488}, {30.0, 20.1488}}), Rectangle(origin = {0, -34.851}, fillColor = {255, 255, 255}, extent = {{-30.0, -20.1488}, {30.0, 20.1488}}), Line(origin = {-51.25, 0}, points = {{21.25, -35.0}, {-13.75, -35.0}, {-13.75, 35.0}, {6.25, 35.0}}), Polygon(origin = {-40, 35}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{10.0, 0.0}, {-5.0, 5.0}, {-5.0, -5.0}}), Line(origin = {51.25, 0}, points = {{-21.25, 35.0}, {13.75, 35.0}, {13.75, -35.0}, {-6.25, -35.0}}), Polygon(origin = {40, -35}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-10.0, 0.0}, {5.0, 5.0}, {5.0, -5.0}})}));
    end Blocks;

    package Evaluator
      block Eval
        Connectors.Boolean4Input u annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        Connectors.TimeLocatorInput tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
        Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        Connectors.Boolean4Input a annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}})));
        Integrate integrate annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      equation
        connect(u, integrate.u) annotation(
          Line(points = {{-110, 0}, {-40, 0}, {-40, 0}, {-11, 0}}, color = {162, 29, 33}));
        connect(integrate.y, y) annotation(
          Line(points = {{11, 0}, {110, 0}}, color = {162, 29, 33}));
        connect(tl, integrate.tl) annotation(
          Line(points = {{0, 100}, {0, 10}}, color = {0, 0, 255}));
        connect(a, integrate.a) annotation(
          Line(points = {{-110, 80}, {-40, 80}, {-40, 8}, {-11, 8}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Ellipse(extent = {{-68, 24}, {12, -56}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-66, 22}, {-46, 2}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-66, -34}, {-46, -54}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-10, 20}, {10, 0}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-10, -34}, {10, -54}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{0, -8}, {20, -28}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-38, 32}, {-18, 12}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-76, -6}, {-56, -26}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-36, -44}, {-16, -64}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-54, 10}, {-2, -42}}, lineColor = {95, 95, 95}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Ellipse(extent = {{14, 58}, {74, -2}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{12, 58}, {32, 38}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{12, 16}, {32, -4}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{52, 58}, {72, 38}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{54, 20}, {74, 0}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{60, 40}, {80, 20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 66}, {52, 46}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{6, 38}, {26, 18}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{36, 10}, {56, -10}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{24, 48}, {64, 8}}, lineColor = {95, 95, 95}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid)}),
          Diagram(coordinateSystem(preserveAspectRatio = false)));
      end Eval;

      block Integrate
        import CRML.ETL.Types.Boolean4;
      protected
        Boolean4 x(start = Boolean4.undefined, fixed = true);
        Boolean4 d;
        Boolean4 c;
        Boolean4 v;
        Boolean timePeriod(start = false, fixed = true) = tl.timePeriod;
        Boolean not_timePeriod(start = true, fixed = true) = not tl.timePeriod;
        Boolean sync1(start = false, fixed = true);
        Boolean sync2(start = false, fixed = true);
      public
        Connectors.Boolean4Input u(start = Boolean4.false4, fixed = true) annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        Connectors.Boolean4Output y annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        Connectors.TimeLocatorInput tl annotation(
          Placement(transformation(extent = {{-10, 90}, {10, 110}})));
      public
        Connectors.Boolean4Input a annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}})));
      equation
        /* Compute the decision event d */
        d = CRML.Blocks.Logical4.or4(a, Types.cvBooleanToBoolean4(edge(not_timePeriod)));
        /* Determine whether the change of the condition u happens at the same instant as the start of the time period tl */
        sync1 = u <> pre(u) and edge(timePeriod);
        /* Determine whether the change of the condition u happens at the same instant as the end of the time period tl */
        sync2 = u <> pre(u) and edge(not_timePeriod);
        /* Compute the condition c from the condition u within the bounds of the time period tl */
        c = if (tl.isLeftBoundaryIncluded and edge(sync1)) or (not tl.isRightBoundaryIncluded and edge(sync2)) then pre(u) else u;
        /* Compute the integral of c over the time period tl, taking into account the fact
     that the same time thread tl may accomodate several non-overlapping time periods */
        v = if timePeriod or edge(not_timePeriod) then TemporalOperators.mul4(d, c) else Boolean4.undefined;
        x = if edge(timePeriod) then CRML.Blocks.Logical4.and4(pre(x), v) else TemporalOperators.add4(pre(x), v);
        /* The output y is the value of the integral of c until the current time */
        y = x;
        annotation(
          Placement(transformation(extent = {{100, -90}, {120, -70}})),
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-76, 54}, {74, -50}}, lineColor = {0, 0, 0}, fontName = "Symbol", textString = "")}),
          Diagram(coordinateSystem(preserveAspectRatio = false)));
      end Integrate;

      package TemporalOperators
        function add4 "Boolean4 accumulation operator for requirements"
          import CRML.ETL.Types.Boolean4;
          input Boolean4 x1;
          input Boolean4 x2;
          output Boolean4 y;
        algorithm
          y := TruthTables.add4[Integer(x1), Integer(x2)];
        end add4;

        function mul4 "Boolean filter"
          import CRML.ETL.Types.Boolean4;
          input Boolean4 x1;
          input Boolean4 x2;
          output Boolean4 y;
        algorithm
          y := TruthTables.mul4[Integer(x1), Integer(x2)];
        end mul4;

        package TruthTables
          import CRML.ETL.Types.Boolean4;
          constant Boolean4 add4[4, 4] = [Boolean4.undefined, Boolean4.undecided, Boolean4.false4, Boolean4.true4; Boolean4.undecided, Boolean4.undecided, Boolean4.false4, Boolean4.true4; Boolean4.false4, Boolean4.false4, Boolean4.false4, Boolean4.false4; Boolean4.true4, Boolean4.true4, Boolean4.false4, Boolean4.true4];
          constant Boolean4 mul4[4, 4] = [Boolean4.undefined, Boolean4.undefined, Boolean4.undefined, Boolean4.undefined; Boolean4.undefined, Boolean4.undecided, Boolean4.undecided, Boolean4.undecided; Boolean4.undefined, Boolean4.undecided, Boolean4.undecided, Boolean4.undecided; Boolean4.undefined, Boolean4.undecided, Boolean4.false4, Boolean4.true4];
          annotation(
            Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(extent = {{-76, -26}, {80, -76}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-76, 24}, {80, -26}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-76, 74}, {80, 24}}, lineColor = {95, 95, 95}, fillColor = {235, 235, 235}, fillPattern = FillPattern.Solid), Line(points = {{-28, 74}, {-28, -76}}, color = {95, 95, 95}), Line(points = {{24, 74}, {24, -76}}, color = {95, 95, 95})}));
        end TruthTables;
        annotation(
          Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Text(extent = {{-62, 50}, {78, -12}}, lineColor = {0, 0, 0}, fontName = "Symbol", textString = ""), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0)}));
      end TemporalOperators;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Ellipse(extent = {{-68, 24}, {12, -56}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-66, 22}, {-46, 2}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-66, -34}, {-46, -54}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-10, 20}, {10, 0}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-10, -34}, {10, -54}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{0, -8}, {20, -28}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-38, 32}, {-18, 12}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-76, -6}, {-56, -26}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-36, -44}, {-16, -64}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-54, 10}, {-2, -42}}, lineColor = {95, 95, 95}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Ellipse(extent = {{14, 58}, {74, -2}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{12, 58}, {32, 38}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{12, 16}, {32, -4}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{52, 58}, {72, 38}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{54, 20}, {74, 0}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{60, 40}, {80, 20}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{32, 66}, {52, 46}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{6, 38}, {26, 18}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{36, 10}, {56, -10}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Ellipse(extent = {{24, 48}, {64, 8}}, lineColor = {95, 95, 95}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid)}));
    end Evaluator;

    package Connectors
      connector Boolean4Input = input CRML.ETL.Types.Boolean4 "'Boolean4' as input" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {162, 29, 33}, fillColor = {162, 29, 33}, fillPattern = FillPattern.Solid)}),
        Diagram(graphics = {Text(extent = {{-58, 48}, {76, -38}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {248, 248, 248}, textString = ""), Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {162, 29, 33}, fillColor = {162, 29, 33}, fillPattern = FillPattern.Solid)}));
      connector Boolean4Output = output CRML.ETL.Types.Boolean4 "'Boolean4' as output" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {162, 29, 33}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}),
        Diagram(graphics = {Text(extent = {{-58, 48}, {76, -38}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {248, 248, 248}, textString = ""), Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {162, 29, 33}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}));
      connector Boolean3Input = input CRML.ETL.Types.Boolean3 "'Boolean3' as input" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {127, 127, 0}, fillColor = {127, 127, 0}, fillPattern = FillPattern.Solid)}),
        Diagram(graphics = {Text(extent = {{-58, 48}, {76, -38}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {248, 248, 248}, textString = ""), Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {127, 127, 0}, fillColor = {127, 127, 0}, fillPattern = FillPattern.Solid)}));
      connector Boolean3Output = output CRML.ETL.Types.Boolean3 "'Boolean3' as output" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {127, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}),
        Diagram(graphics = {Text(extent = {{-58, 48}, {76, -38}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {248, 248, 248}, textString = ""), Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {127, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}));
      connector TimeLocatorInput = input CRML.ETL.Types.TimeLocator "'Time Locator' as input" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255}, fillColor = {0, 128, 255}, fillPattern = FillPattern.Forward)}),
        Diagram(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255}, fillColor = {0, 128, 255}, fillPattern = FillPattern.Forward)}));
      connector TimeLocatorOutput = output CRML.ETL.Types.TimeLocator "'Time Locator' as output" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255}, fillColor = {170, 213, 255}, fillPattern = FillPattern.Forward)}),
        Diagram(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255}, fillColor = {170, 213, 255}, fillPattern = FillPattern.Forward)}));
      connector WhileInput = input CRML.ETL.Types.WhileLocator "'While'' as input" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255}, fillColor = {0, 255, 0}, fillPattern = FillPattern.Forward)}),
        Diagram(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255}, fillColor = {0, 255, 0}, fillPattern = FillPattern.Forward)}));
      connector WhileOutput = output CRML.ETL.Types.WhileLocator "'While' as output" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255}, fillColor = {170, 255, 213}, fillPattern = FillPattern.Forward)}),
        Diagram(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255}, fillColor = {170, 255, 213}, fillPattern = FillPattern.Forward)}));
      connector BooleanInput = input Boolean "'Boolean' as input" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}, fillPattern = FillPattern.Solid)}),
        Diagram(graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {217, 67, 180}, fillColor = {217, 67, 180}, fillPattern = FillPattern.Solid)}));
      connector BooleanOutput = output Boolean "'Boolean' as output" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {217, 67, 180}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}),
        Diagram(graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {217, 67, 180}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}));
      connector IntegerInput = input Integer "'Integer' as input" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 128, 0}, fillPattern = FillPattern.Solid)}),
        Diagram(graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 128, 0}, fillPattern = FillPattern.Solid)}));
      connector IntegerOutput = output Integer "'Integer' as output" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}),
        Diagram(graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {255, 127, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}));
      connector RealInput = input Real "'Real' as input" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(lineColor = {0, 0, 0}, points = {{-100, 100}, {100, 0}, {-100, -100}}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid)}),
        Diagram(graphics = {Polygon(lineColor = {0, 0, 0}, points = {{-100, 100}, {100, 0}, {-100, -100}}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid)}));
      connector RealOutput = output Real "'Real' as output" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(lineColor = {0, 0, 0}, points = {{-100, 100}, {100, 0}, {-100, -100}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}),
        Diagram(graphics = {Polygon(lineColor = {0, 0, 0}, points = {{-100, 100}, {100, 0}, {-100, -100}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}));
      connector ClockInput = input Clock "'input Clock' as connector" annotation(
        defaultComponentName = "u",
        Icon(graphics = {Polygon(points = {{-34, 6}, {20, 0}, {-34, -8}, {-34, 6}}, lineColor = {175, 175, 175}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, pattern = LinePattern.Dot, lineThickness = 0.5), Polygon(points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid)}, coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.2, grid = {2, 2})),
        Diagram(coordinateSystem(preserveAspectRatio = true, initialScale = 0.2, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Polygon(points = {{-34, 6}, {20, 0}, {-34, -8}, {-34, 6}}, lineColor = {175, 175, 175}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, pattern = LinePattern.Dot, lineThickness = 0.5), Polygon(points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, lineColor = {95, 95, 95}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid)}),
        Documentation(info = "<html>
<p>
Connector with one input signal of type Boolean.
</p>
</html>"));
      connector ClockOutput = output Clock "'output Clock' as connector" annotation(
        defaultComponentName = "y",
        Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}, initialScale = 0.1), graphics = {Polygon(points = {{-10, 6}, {10, 0}, {-10, -6}, {-10, 6}}, lineColor = {175, 175, 175}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 0.5, pattern = LinePattern.Dot), Polygon(points = {{-100, 99}, {100, -1}, {-100, -101}, {-100, 99}}, lineColor = {0, 140, 72}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}),
        Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}, initialScale = 0.1), graphics = {Polygon(points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, lineColor = {0, 140, 72}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}),
        Documentation(info = "<html>
<p>
Connector with one output signal of type Boolean.
</p>
</html>"));
      connector FunctionTypeInput = input CRML.ETL.Types.FunctionType "Function type input" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {102, 44, 145}, fillColor = {102, 44, 145}, fillPattern = FillPattern.Solid)}),
        Diagram(graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {102, 44, 145}, fillColor = {102, 44, 145}, fillPattern = FillPattern.Solid)}));
      connector FunctionTypeOutput = output CRML.ETL.Types.FunctionType "Function type output" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {102, 44, 145}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}),
        Diagram(graphics = {Polygon(points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}}, lineColor = {102, 44, 145}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}));
      connector CRMLPeriodInput = input CompilerCompliancy.CRMLPeriod
                                                         "'Period' as input" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(lineColor = {255, 170, 255}, fillColor = {255, 170, 255}, fillPattern = FillPattern.Solid, points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}})}),
        Diagram(graphics = {Polygon(lineColor = {255, 170, 255}, fillColor = {255, 170, 255}, fillPattern = FillPattern.Solid, points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}})}));
      connector CRMLPeriodOutput = output CompilerCompliancy.CRMLPeriod
                                                           "'Period' as output" annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(lineColor = {255, 170, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}})}),
        Diagram(graphics = {Polygon(lineColor = {255, 170, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{-100, 100}, {-100, -100}, {100, 0}, {-100, 100}})}));
      connector CRMLClockInput
                           = input CRML.CompilerCompliancy.CRMLClock
                                                            "'input CRMLClock' as connector"
                                                                      annotation(
        defaultComponentName = "u",
        Icon(graphics = {Polygon(points = {{-34, 6}, {20, 0}, {-34, -8}, {-34, 6}}, lineColor = {175, 175, 175}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, pattern = LinePattern.Dot, lineThickness = 0.5), Polygon(points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, lineColor={213,255,
                  170},                                                                                                                                                                                                        fillColor={213,255,
                  170},                                                                                                                                                                                                        fillPattern
                = FillPattern.Solid)},                                                                                                                                                                                                        coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.2, grid = {2, 2})),
        Diagram(coordinateSystem(preserveAspectRatio = true, initialScale = 0.2, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Polygon(points = {{-34, 6}, {20, 0}, {-34, -8}, {-34, 6}}, lineColor = {175, 175, 175}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, pattern = LinePattern.Dot, lineThickness = 0.5), Polygon(points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, lineColor={213,255,
                  170},                                                                                                                                                                                                        fillColor={213,255,
                  170},                                                                                                                                                                                                        fillPattern
                = FillPattern.Solid)}),
        Documentation(info = "<html>
<p>
Connector with one input signal of type Boolean.
</p>
</html>"));
      connector CRMLClockOutput
                           = output CRML.CompilerCompliancy.CRMLClock
                                                             "'output CRMLClock' as connector"
                                                                      annotation(
        defaultComponentName = "u",
        Icon(graphics = {Polygon(points = {{-34, 6}, {20, 0}, {-34, -8}, {-34, 6}}, lineColor = {175, 175, 175}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, pattern = LinePattern.Dot, lineThickness = 0.5), Polygon(points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, lineColor={213,255,
                  170},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid)},                                                                                                                                                                                                        coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.2, grid = {2, 2})),
        Diagram(coordinateSystem(preserveAspectRatio = true, initialScale = 0.2, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Polygon(points = {{-34, 6}, {20, 0}, {-34, -8}, {-34, 6}}, lineColor = {175, 175, 175}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, pattern = LinePattern.Dot, lineThickness = 0.5), Polygon(points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, lineColor={213,255,
                  170},                                                                                                                                                                                                        fillColor={255,255,
                  255},                                                                                                                                                                                                        fillPattern
                = FillPattern.Solid)}),
        Documentation(info = "<html>
<p>
Connector with one input signal of type Boolean.
</p>
</html>"));
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Polygon(origin = {20, 0}, lineColor = {64, 64, 64}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{-10.0, 70.0}, {10.0, 70.0}, {40.0, 20.0}, {80.0, 20.0}, {80.0, -20.0}, {40.0, -20.0}, {10.0, -70.0}, {-10.0, -70.0}}), Polygon(fillColor = {102, 102, 102}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-100, 20}, {-60, 20}, {-30, 70}, {-10, 70}, {-10, -70}, {-30, -70}, {-60, -20}, {-100, -20}})}));
    end Connectors;

    package Types
      constant Integer nMaxOverlap = 10 "Maximum number of overlapping time periods";
      type Boolean3 = enumeration(undecided, false3, true3) "3-valued logic";
      type Boolean4 = enumeration(undefined, undecided, false4, true4) "4-valued logic";
      type FunctionType = enumeration(monotonicIncreasing, monotonicDecreasing, nonMonotonic) "Function type";

      record TimeLocator "Description of a time locator"
        Boolean timePeriod "Represents the different time periods of the time locator";
        Boolean timeSlot "Represents the different time slots of the time locator";
        Boolean4 clock "Clock ticks";
        Boolean isLeftBoundaryIncluded "true if left boundary belongs to the CTL";
        Boolean isRightBoundaryIncluded "true if right boundary belongs to the CTL";
        Integer indexMax "Number of allocated time periods";
        annotation(
          Documentation(info = "<html>

</html>"));
      end TimeLocator;

      record WhileLocator "Description of a while locator"
        Boolean timePeriod "Represents the different time periods of the time locator";
        Boolean4 clock "Clock ticks";
        Boolean isLeftBoundaryIncluded "true if left boundary belongs to the CTL";
        Boolean isRightBoundaryIncluded "true if right boundary belongs to the CTL";
        annotation(
          Documentation(info = "<html>

</html>"));
      end WhileLocator;

      function cvBooleanToBoolean4 "Conversion from Boolean to Boolean4"
        import CRML.ETL.Types.Boolean4;
        input Boolean x;
        output Boolean4 y;
      algorithm
        y := if x then Boolean4.true4 else Boolean4.false4;
      end cvBooleanToBoolean4;

      function cvBooleanToBoolean3 "Conversion from Boolean to Boolean3"
        import CRML.ETL.Types.Boolean3;
        input Boolean x;
        output Boolean3 y;
      algorithm
        y := if x then Boolean3.true3 else Boolean3.false3;
      end cvBooleanToBoolean3;

      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Polygon(origin = {-12.167, -23}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{12.167, 65}, {14.167, 93}, {36.167, 89}, {24.167, 20}, {4.167, -30}, {14.167, -30}, {24.167, -30}, {24.167, -40}, {-5.833, -50}, {-15.833, -30}, {4.167, 20}, {12.167, 65}}, smooth = Smooth.Bezier, lineColor = {0, 0, 0}), Polygon(origin = {2.7403, 1.6673}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{49.2597, 22.3327}, {31.2597, 24.3327}, {7.2597, 18.3327}, {-26.7403, 10.3327}, {-46.7403, 14.3327}, {-48.7403, 6.3327}, {-32.7403, 0.3327}, {-6.7403, 4.3327}, {33.2597, 14.3327}, {49.2597, 14.3327}, {49.2597, 22.3327}}, smooth = Smooth.Bezier)}));
    end Types;

    package Utilities
      function firstTrueIndex "Returns the index of the first true element of a Boolean vector"
        extends Modelica.Icons.Function;
        input Boolean b[:];
        input Boolean reverse = false "If true, backward scanning";
        output Integer index;
      protected
        parameter Integer n1 = if not reverse then 1 else size(b, 1);
        parameter Integer n2 = if not reverse then size(b, 1) else 1;
        parameter Integer s = if not reverse then +1 else -1;
      algorithm
        index := 0;
        for i in n1:s:n2 loop
          if b[i] then
            index := i;
            return;
          end if;
        end for;
        annotation(
          Documentation(info = "<html>
<h4>Syntax</h4>
<p style=\"margin-left: 40px;\"><code><b>firstTrueIndex</b>(b);</code> </p>
<h4>Description</h4>
<p>Returns the index of the first <b>true</b> element of the Boolean vector b. If no element is <b>true</b> or b is an empty vector (i.e., size(b,1)=0) the function returns 0. </p>
<h4>Example</h4>
<pre>  Boolean b1[3] = {false, false, false};
  Boolean b2[3] = {false, true, false};
  Boolean b3[4] = {false, true, false, true};
  Integer r1, r2, r3;
<b>algorithm</b>
  r1 = firstTrueIndex(b1);  // r1 = 0
  r2 = firstTrueIndex(b2);  // r2 = 2</pre>
<p style=\"margin-left: 40px;\"><code>r3 = firstTrueIndex(b3); // r3 = 2</code> </p>
<p><br>The property is also demonstrated with the following <a href=\"modelica://ReqSysPro.Examples.Utilities.firstTrueIndex\">example</a> calling the function as: </p>
<p style=\"margin-left: 30px;\">Integer firstTrueIndexOutput = firstTrueIndex(b) </p>
<p>results in </p>
<p><img src=\"modelica://ReqSysPro/Resources/Images/Utilities/firstTrueIndex.png\"/></p>
<p><br><h4>See also</h4></p>
<p><a href=\"modelica://Modelica.Math.BooleanVectors.allTrue\">allTrue</a>, <a href=\"modelica://Modelica.Math.BooleanVectors.anyTrue\">anyTrue</a>, <a href=\"modelica://Modelica.Math.BooleanVectors.countTrue\">countTrue</a>, <a href=\"modelica://Modelica.Math.BooleanVectors.enumerate\">enumerate</a>, <a href=\"modelica://Modelica.Math.BooleanVectors.index\">index</a>, and <a href=\"modelica://Modelica.Math.BooleanVectors.oneTrue\">oneTrue</a>. </p>
</html>"));
      end firstTrueIndex;

      function vectorMax "Returns the largest element of a vector"
        input Real A[:];
        input Integer first = 1;
        input Integer last = size(A, 1);
        output Real b;
        output Integer i;
      protected
        Real B[size(A, 1)];
        Integer I[size(A, 1)];
      algorithm
        (B, I) := sort(A, first, last);
        b := B[last];
        i := I[last];
        annotation(
          Documentation(info = "<html>
<h4>Syntax</h4>
<p style=\"margin-left: 30px;\">(b, i) = v<b>ectorMax </b>(A, first, last); </p>
<h4>Description</h4>
<p><b>b</b> is the largest element of vector <b>A</b> between indices <b>first</b> and <b>last</b>. </p>
<p><b>i</b> contains the index of <b>b</b> in vector <b>A</b>.</p>
<p><b>First</b> and <b>last</b> are optional. If <b>first</b> is omitted, then <b>first</b> = 1. If <b>last</b> is omitted, then <b>last</b> equals the size of <b>A</b>.</p>
<h4>Examples</h4>
<p style=\"margin-left: 30px;\">(b, i) = vectorMax(<code>{1.3,&nbsp;1.2,&nbsp;7.4,&nbsp;3.6,&nbsp;20.9,&nbsp;0,&nbsp;-6.7,&nbsp;-100,&nbsp;5,&nbsp;0.1});</code></p>
<pre>returns 
b = 20.9;
i = 5;

(b, i) = vectorMax({1.3, 1.2, 7.4, 3.6, 20.9, 0, -6.7, -100, 5, 0.1}, 6, 9);

returns 
b = 5;
i = 9;</pre>
</html>"));
      end vectorMax;

      function vectorMin "Returns the smallest element of a vector"
        input Real A[:];
        input Integer first = 1;
        input Integer last = size(A, 1);
        output Real b;
        output Integer i;
      protected
        Real B[size(A, 1)];
        Integer I[size(A, 1)];
      algorithm
        (B, I) := sort(A, first, last);
        b := B[first];
        i := I[first];
        annotation(
          Documentation(info = "<html>
<h4>Syntax</h4>
<p style=\"margin-left: 30px;\">(b, i) = v<b>ectorMin </b>(A, first, last); </p>
<h4>Description</h4>
<p><b>b</b> is the smallest element of vector <b>A</b> between indices <b>first</b> and <b>last</b>. </p>
<p><b>i</b> contains the index of <b>b</b> in vector <b>A</b>.</p>
<p><b>First</b> and <b>last</b> are optional. If <b>first</b> is omitted, then <b>first</b> = 1. If <b>last</b> is omitted, then <b>last</b> equals the size of <b>A</b>.</p>
<h4>Examples</h4>
<p style=\"margin-left: 30px;\">(b, i) = vectorMin(<code>{1.3,&nbsp;1.2,&nbsp;7.4,&nbsp;3.6,&nbsp;20.9,&nbsp;0,&nbsp;-6.7,&nbsp;-100,&nbsp;5,&nbsp;0.1});</code></p>
<pre>returns 
b = -100;
i = 8;

    (b, i) = vectorMax({1.3, 1.2, 7.4, 3.6, 20.9, 0, -6.7, -100, 5, 0.1}, 2, 6);

returns 
b = 0;
i = 6;</pre>
</html>"));
      end vectorMin;

      function sort "Sorts elements in a vector using the quick sort algorithm"
        input Real A[:];
        input Integer first = 1;
        input Integer last = size(A, 1);
        output Real B[size(A, 1)];
        output Integer I[size(A, 1)];
      algorithm
        (B, I) := iterativeQuickSort(A, max(first, 1), min(last, size(A, 1)));
        annotation(
          Documentation(info = "<html>
<h4>Syntax</h4>
<p style=\"margin-left: 30px;\">(B, I) = <b>sort </b>(A, first, last); </p>
<h4>Description</h4>
<p>Vector<b> B</b> contains the elements of vector <b>A</b> sorted by increasing values between indices <b>first</b> and <b>last</b>. </p>
<p>Vector <b>I</b> contains the indices of vector <b>A</b> such that <b>I</b>[i] = j means that <b>B</b>[i] = <b>A</b>[j].</p>
<p><b>First</b> and <b>last</b> are optional. If <b>first</b> is omitted, then <b>first</b> = 1. If <b>last</b> is omitted, then <b>last</b> equals the size of <b>A</b>.</p>
<h4>Examples</h4>
<p style=\"margin-left: 30px;\">(B, I) = sort (<code>{1.3,&nbsp;1.2,&nbsp;7.4,&nbsp;3.6,&nbsp;20.9,&nbsp;0,&nbsp;-6.7,&nbsp;-100,&nbsp;5,&nbsp;0.1});</code></p>
<pre>returns 
B = { -100, -6.7, 0, 0.1, 1.2, 1.3,&nbsp;3.6, 5, 7.4,&nbsp;20.9 };
I = { 8, 7, 6, 2, 1, 4, 9, 3, 5 };

(B, I) = sort({1.3, 1.2, 7.4, 3.6, 20.9, 0, -6.7, -100, 5, 0.1}, 2, 7);

returns 
B = { 1.3, 1.2, -6.7, 0, 3.6, 7.4, 20.9, -100, 5, 0.1 };
I = { 1, 2, 7, 6, 4, 3, 5, 8, 9, 10 };</pre>
</html>"));
      end sort;

      function iterativeQuickSort "Quick sort algorithm"
        input Real A[:];
        input Integer first = 1;
        input Integer last = size(A, 1);
        output Real B[size(A, 1)];
        output Integer I[size(A, 1)];
      protected
        parameter Integer MAX = size(A, 1);
        Integer p;
        // Start index
        Integer q;
        // Pivot
        Integer r;
        // End index
        Integer stack[MAX, 2];
        // Stack
        Integer n;
        // Top of stack
      algorithm
        /* Initialize vector of indices */
        for i in 1:size(I, 1) loop
          I[i] := i;
        end for;
        /* Initialize stack */
        n := 0;
        /* Push start and end index on stack */
        p := first;
        r := last;
        n := n + 1;
        stack[n, 1] := p;
        stack[n, 2] := r;
        B := A;
        /* Cf. Introduction to Algorithms by Cormen et al. */
        while n > 0 loop
          /* Pop start and end index from stack */
          p := stack[n, 1];
          r := stack[n, 2];
          n := n - 1;
          if p < r then
            (q, B, I) := partition(B, p, r, I);
            /* Push start and end index on stack */
            assert(n < MAX, "Stack overflow");
            n := n + 1;
            stack[n, 1] := p;
            stack[n, 2] := q;
            /* Push start and end index on stack */
            assert(n < MAX, "Stack overflow");
            n := n + 1;
            stack[n, 1] := q + 1;
            stack[n, 2] := r;
          end if;
        end while;
      end iterativeQuickSort;

      function partition "Partition function for the quick sort algorithm"
        input Real A[:];
        input Integer p;
        input Integer r;
        input Integer I[:];
        output Integer n;
        output Real B[size(A, 1)];
        output Integer J[size(A, 1)];
      protected
        Real x;
        Real y;
        Integer i;
        Integer j;
        Integer k;
      algorithm
        x := A[p];
        i := p - 1;
        j := r + 1;
        B := A;
        J := I;
        /* Cf. Introduction to Algorithms by Cormen et al. */
        while true loop
          while true loop
            j := j - 1;
            if j == 0 then
              break;
            end if;
            if B[j] <= x then
              break;
            end if;
          end while;
          while true loop
            i := i + 1;
            if i == size(B, 1) + 1 then
              break;
            end if;
            if B[i] >= x then
              break;
            end if;
          end while;
          /* Exchange elements B[i] and B[j] */
          if i < j then
            y := B[i];
            B[i] := B[j];
            B[j] := y;
            k := J[i];
            J[i] := J[j];
            J[j] := k;
          else
            n := j;
            return;
          end if;
        end while;
      end partition;

      function isInsidePolygon "Determines whether a point is inside a polygon"
        input Real point[2] "Point";
        input Real polygon[:, 2] "Polygon";
        input Real tolerance = 0 "Tolerance";
        output Real insidePolygon "> 0.5: point is inside polygon. > -0.5 and < 0.5: point is outside polygon: < -0.5: undecided";
      protected
        parameter Real pi = Modelica.Constants.pi;
        parameter Integer N = size(polygon, 1);
        // Number of polygon vertices
        Real int[N];
        // Vector of intersection points on ray
        Integer int_i[N];
        // Vector of indices of the sorted vector
        Real alpha[2*N];
        // Vector of polygon edge and vertex angles
        Real theta[2*N];
        // Vector of consecutive polygon edge and vertex angles
        Integer n;
        // Number of intersection points
        Real x0_R;
        // Ray origin abscissa
        Real y0_R;
        // Ray origin ordinate
        Real a_R;
        // Ray direction abscissa
        Real b_R;
        // Ray direction ordinate
        Real theta_max;
        // Largest polygon angle
        Real alpha_R;
        // Ray angle
        Integer i;
        // Counter
        Integer j;
        // Counter
        Integer k;
        // Counter
        Integer r;
        // Counter
      algorithm
        /* Polygon should have at least 3 vertices */
        assert(N >= 3, "Polygon should have at least 3 vertices");
        /* General line equation is:
      x = x0 + t*a
      y = y0 + t*b
  
      (x, y) are the coordinates of the line points
      t is the curvilinar absicssa of the line points
      
      (x0, y0) is the origin of the line
      (a, b) is the direction of the line
      a = cos(alpha) and b = sin(alpha) where alpha is the edge angle from the x-axis */
        /* Get largest angle of all polygon directions */
        (alpha[1:N], r) := polygonEdgeAngles(polygon, tolerance);
        if (r == -1) then
          insidePolygon := -1;
          return;
        end if;
        (alpha[N + 1:2*N], r) := polygonVertexAngles(polygon, point, tolerance);
        if (r == -1) then
          insidePolygon := -1;
          return;
        end if;
        alpha := sort(alpha);
        for i in 1:2*N loop
          j := if i < 2*N then i + 1 else 1;
          theta[i] := alpha[j] - alpha[i];
        end for;
        (theta_max, j) := vectorMax(theta);
        /* Compute ray equation. The point is ray origin. 
  Ray direction must be different from all edge directions. 
  Ray direction is the bissector of the largest polygon angle */
        k := if j < 2*N then j + 1 else 1;
        alpha_R := (alpha[j] + alpha[k])/2;
        x0_R := point[1];
        y0_R := point[2];
        a_R := cos(alpha_R);
        b_R := sin(alpha_R);
        /* Compute intersections between ray and polygon */
        (int, n) := intersectionsPolygonLine(polygon, x0_R, y0_R, a_R, b_R, tolerance);
        if (n == -1) then
          insidePolygon := -1;
          return;
        end if;
        /* Add point to the vector of intersections */
        n := n + 1;
        int[n] := 0;
        /* Sort the vector of intersections */
        (int, int_i) := sort(int, 1, n);
        /* Count number of intersections on ray before point */
        i := 0;
        while int_i[i + 1] < n loop
          i := i + 1;
        end while;
        /* Point is inside polygon if number of intersections on ray before 
  point is odd */
        insidePolygon := mod(i, 2);
        annotation(
          Diagram(graphics = {Ellipse(extent = {{-24, -6}, {-22, -8}}, lineColor = {28, 108, 200}, fillColor = {28, 108, 200}, fillPattern = FillPattern.Solid), Polygon(points = {{-92, -4}, {-64, 24}, {-60, -14}, {-42, 24}, {-24, -34}, {60, -44}, {2, 8}, {44, 18}, {8, 84}, {-74, 82}, {-92, -4}}, lineColor = {238, 46, 47}, fillColor = {28, 108, 200}, fillPattern = FillPattern.None), Text(extent = {{-56, 80}, {-2, 74}}, lineColor = {238, 46, 47}, textString = "Polygon"), Text(extent = {{-50, -10}, {4, -16}}, lineColor = {28, 108, 200}, textString = "Point")}),
          Documentation(info = "<html>
<h4>Syntax</h4>
<p style=\"margin-left: 30px;\">z = <b>isInsidePolygon </b>(point, polygon, eps); </p>
<h4>Description</h4>
<p>Determines whether <b>point</b> is inside <b>polygon</b>. </p>
<p><b>point</b> is given by its x and y coordinates.</p>
<p><b>polygon</b> is given by a vector of points, each point being given by its x and y coordinates.</p>
<p>If <b>point</b> is inside <b>polygon</b>, then <b>z</b> &gt; + 0.5. If <b>point</b> is outside <b>polygon</b>, then - 0.5 &lt; <b>z</b> &lt; + 0.5. If it cannot be decided whether point is inside or outside polygon, then <b>z</b> &lt; - 0.5.</p>
<p>The result is undecided when <b>point</b> is too close to <b>polygon</b>, the tolerance being given by <b>eps</b>. The default is <b>eps</b> = 1e-4.</p>
<h4>Example</h4>
<p style=\"margin-left: 30px;\">z = isInsidePolygon (<code>{-23,&nbsp;-7}, {{-92,-4},{-64,24},{-60,-14},{-42,24},{-24,-34},{60,-44},{2,8},{44,18},{8,84},{-74,82}});</code></p>
<pre>returns z &gt; 0.5; (cf. graphics in diagram layer)</pre>
</html>"));
      end isInsidePolygon;

      function polygonEdgeAngles "Returns the vector of polygon edge angles"
        input Real polygon[:, 2] "Polygon";
        input Real tolerance = 0 "Tolerance";
        output Real alpha[size(polygon, 1)] "Vector of polygon edge angles";
        output Integer n "Number of polygon angles. If -1, the result is undecided";
      protected
        parameter Real pi = Modelica.Constants.pi;
        Real p0[2];
        // Edge origin
        Real p1[2];
        // Edge end
        Real x0;
        // Edge origin abscissa
        Real y0;
        // Edge origin ordinate
        Real x1;
        // Edge end abscissa
        Real y1;
        // Edge end ordinate
        Real a;
        // Edge direction abscissa
        Real b;
        // Edge direction ordinate
        Real d;
        // Edge length
        Integer i;
        // Counter
        Integer j;
        // Counter
      algorithm
        /* Polygon should have at least 3 vertices */
        assert(size(polygon, 1) >= 3, "Polygon should have at least 3 vertices");
        /* General line equation is:
      x = x0 + t*a
      y = y0 + t*b
  
      (x, y) are the coordinates of the line points
      t is the curvilinar absicssa of the line points
      
      (x0, y0) is the origin of the line
      (a, b) is the direction of the line
      a = cos(alpha) and b = sin(alpha) where alpha is the edge angle from the x-axis */
        /* Compute angles of all edges. An edge is given by two consecutive 
  polygon vertices. The consecutive point of the last point is the first point*/
        for i in 1:size(polygon, 1) loop
          /* Edge origin */
          j := i;
          p0 := polygon[j, :];
          x0 := p0[1];
          y0 := p0[2];
          /* Edge end */
          j := if j < size(polygon, 1) then j + 1 else 1;
          p1 := polygon[j, :];
          x1 := p1[1];
          y1 := p1[2];
          /* Edge angle */
          a := x1 - x0;
          b := y1 - y0;
          d := sqrt(a^2 + b^2);
          if d < tolerance then
            n := -1;
            return;
          end if;
          alpha[i] := if b >= 0 then acos(a/d) else pi - acos(a/d);
        end for;
        n := size(polygon, 1);
      end polygonEdgeAngles;

      function polygonVertexAngles "Returns the vector of polygon vertex angles from a given point"
        input Real polygon[:, 2] "Polygon";
        input Real point[2] "Point";
        input Real tolerance = 0 "Tolerance";
        output Real alpha[size(polygon, 1)] "Vector of polygon vertex angles";
        output Integer n "Number of polygon vertices. If -1, the result is undecided";
      protected
        parameter Real pi = Modelica.Constants.pi;
        Real p0[2];
        // Vertex origin
        Real p1[2];
        // Vertex end
        Real x0;
        // Vertex origin abscissa
        Real y0;
        // Vertex origin ordinate
        Real x1;
        // Vertex end abscissa
        Real y1;
        // Vertex end ordinate
        Real a;
        // Vertex direction abscissa
        Real b;
        // Vertex direction ordinate
        Real d;
        // Vertex length
        Integer i;
        // Counter
        Integer j;
        // Counter
      algorithm
        /* Polygon should have at least 3 vertices */
        assert(size(polygon, 1) >= 3, "Polygon should have at least 3 vertices");
        /* General line equation is:
      x = x0 + t*a
      y = y0 + t*b
  
      (x, y) are the coordinates of the line points
      t is the curvilinar absicssa of the line points
      
      (x0, y0) is the origin of the line
      (a, b) is the direction of the line
      a = cos(alpha) and b = sin(alpha) where alpha is the edge angle from the x-axis */
        /* Compute angles of all vertices from given point */
        p0 := point;
        x0 := p0[1];
        y0 := p0[2];
        for i in 1:size(polygon, 1) loop
          p1 := polygon[i, :];
          x1 := p1[1];
          y1 := p1[2];
          /* Vertex angle */
          a := x1 - x0;
          b := y1 - y0;
          d := sqrt(a^2 + b^2);
          if d < tolerance then
            n := -1;
            return;
          end if;
          alpha[i] := if b >= 0 then acos(a/d) else pi - acos(a/d);
        end for;
        n := size(polygon, 1);
      end polygonVertexAngles;

      function intersectionsPolygonLine "Returns the vector of intersections between a polygon and a line"
        input Real polygon[:, 2] "Polygon";
        input Real x0_R "Line origin abscissa";
        input Real y0_R "Line origin ordinate";
        input Real a_R "Line direction abscissa";
        input Real b_R "Line direction ordinate";
        input Real tolerance = 0 "Tolerance";
        output Real int[size(polygon, 1)] "Vector of intersection points on line";
        output Integer n "Number of intersection points. If -1, the result is undecided";
      protected
        Real p0[2];
        // Edge origin
        Real p1[2];
        // Edge end
        Real x0;
        // Edge origin abscissa
        Real y0;
        // Edge origin ordinate
        Real x1;
        // Edge end abscissa
        Real y1;
        // Edge end ordinate
        Real a;
        // Edge direction abscissa
        Real b;
        // Edge direction ordinate
        Real t;
        // Edge curvilinear abscissa
        Real t_R;
        // Ray curvilinear abscissa
        Integer i;
        // Counter
        Integer j;
        // Counter
      algorithm
        /* Polygon should have at least 3 vertices */
        assert(size(polygon, 1) >= 3, "Polygon should have at least 3 vertices");
        /* General line equation is:
      x = x0 + t*a
      y = y0 + t*b
  
      (x, y) are the coordinates of the line points
      t is the curvilinar absicssa of the line points
      
      (x0, y0) is the origin of the line
      (a, b) is the direction of the line
      a = cos(alpha) and b = sin(alpha) where alpha is the edge angle from the x-axis */
        /* Initialize vector of intersections */
        n := 0;
        /* Compute the intersections between the polygon and the ray */
        for i in 1:size(polygon, 1) loop
          /* Edge origin */
          j := i;
          p0 := polygon[j, :];
          x0 := p0[1];
          y0 := p0[2];
          /* Edge end */
          j := if j < size(polygon, 1) then j + 1 else 1;
          p1 := polygon[j, :];
          x1 := p1[1];
          y1 := p1[2];
          /* The curvilinear abscissa of the egde end is set to 1 */
          a := x1 - x0;
          b := y1 - y0;
          /* Intersection between ray and edge. The denominators of the
    two following expressions are never zero because ray direction is always
    different from edge direction */
          t := ((a_R*(y0_R - y0) - b_R*(x0_R - x0))/(a_R*b - b_R*a));
          t_R := ((a*(y0 - y0_R) - b*(x0 - x0_R))/(a*b_R - b*a_R));
          /* If t is in [0 + tolerance, 1 - tolerance], then the ray intersects the edge. 
    Add intersection to the vector of intersections on ray. 
    If t is outside [0 - tolerance, 1 + tolerance], then the ray does not intersect the edge. 
    Otherwise, it is undecided whether the ray intersects the edge or not */
          if abs(t) < tolerance or abs(1 - t) < tolerance then
            n := -1;
            return;
          end if;
          if t >= tolerance and t <= 1 - tolerance then
            n := n + 1;
            int[n] := t_R;
          end if;
        end for;
      end intersectionsPolygonLine;

      function getRandom
        input Integer s;
        output Real x;
      algorithm
        x := Modelica.Math.Random.Utilities.impureRandom(id = s);
      end getRandom;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Polygon(origin = {1.3835, -4.1418}, rotation = 45.0, fillColor = {64, 64, 64}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.0, 93.333}, {-15.0, 68.333}, {0.0, 58.333}, {15.0, 68.333}, {15.0, 93.333}, {20.0, 93.333}, {25.0, 83.333}, {25.0, 58.333}, {10.0, 43.333}, {10.0, -41.667}, {25.0, -56.667}, {25.0, -76.667}, {10.0, -91.667}, {0.0, -91.667}, {0.0, -81.667}, {5.0, -81.667}, {15.0, -71.667}, {15.0, -61.667}, {5.0, -51.667}, {-5.0, -51.667}, {-15.0, -61.667}, {-15.0, -71.667}, {-5.0, -81.667}, {0.0, -81.667}, {0.0, -91.667}, {-10.0, -91.667}, {-25.0, -76.667}, {-25.0, -56.667}, {-10.0, -41.667}, {-10.0, 43.333}, {-25.0, 58.333}, {-25.0, 83.333}, {-20.0, 93.333}}), Polygon(origin = {10.1018, 5.218}, rotation = -45.0, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{-15.0, 87.273}, {15.0, 87.273}, {20.0, 82.273}, {20.0, 27.273}, {10.0, 17.273}, {10.0, 7.273}, {20.0, 2.273}, {20.0, -2.727}, {5.0, -2.727}, {5.0, -77.727}, {10.0, -87.727}, {5.0, -112.727}, {-5.0, -112.727}, {-10.0, -87.727}, {-5.0, -77.727}, {-5.0, -2.727}, {-20.0, -2.727}, {-20.0, 2.273}, {-10.0, 7.273}, {-10.0, 17.273}, {-20.0, 27.273}, {-20.0, 82.273}})}));
    end Utilities;

    package Tests
      model EnsureAtEnd
        import CRML;
        TimeLocators.Periods timePeriod(leftBoundaryIncluded = false, rightBoundaryIncluded = false) annotation(
          Placement(transformation(extent = {{-20, 40}, {0, 60}})));
        CRML.Blocks.Logical.BooleanStep eventPeriodic(startTime = 5) annotation(
          Placement(transformation(extent = {{-80, -40}, {-60, -20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-44, -34}, {-36, -26}})));
        CRML.Blocks.Events.EventTable eventTable(option_width = false) annotation(
          Placement(transformation(extent = {{-80, 50}, {-60, 70}})));
        CRML.Blocks.Events.EventTable eventTable1(option_width = false, instant = {10}) annotation(
          Placement(transformation(extent = {{-80, 20}, {-60, 40}})));
        CRML.ETL.Requirements.CheckAtEnd ensure annotation(
          Placement(transformation(extent = {{-20, -40}, {0, -20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-44, 46}, {-36, 54}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{-44, 38}, {-36, 46}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-59, -30}, {-44.4, -30}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{-35.6, -30}, {-21, -30}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{-10, 40}, {-10, -20}, {-10, -20}}, color = {0, 0, 255}));
        connect(eventTable.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-59, 60}, {-50, 60}, {-50, 50}, {-44.4, 50}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{-35.6, 50}, {-21, 50}}, color = {162, 29, 33}));
        connect(eventTable1.y, booleanToBoolean4_3.u) annotation(
          Line(points = {{-59, 30}, {-50, 30}, {-50, 42}, {-44.4, 42}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_3.y, timePeriod.u2) annotation(
          Line(points = {{-35.6, 42}, {-21, 42}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 14));
      end EnsureAtEnd;

      model EnsureAllAlong
        TimeLocators.Periods timePeriod(leftBoundaryIncluded = false, rightBoundaryIncluded = false) annotation(
          Placement(transformation(extent = {{0, 40}, {20, 60}})));
        CRML.Blocks.Logical.BooleanStep eventPeriodic(startTime = 0) annotation(
          Placement(transformation(extent = {{-80, -40}, {-60, -20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-44, -34}, {-36, -26}})));
        CRML.Blocks.Events.EventTable eventTable(option_width = false) annotation(
          Placement(transformation(extent = {{-80, 50}, {-60, 70}})));
        CRML.Blocks.Events.EventTable eventTable1(option_width = false, instant = {10}) annotation(
          Placement(transformation(extent = {{-80, 20}, {-60, 40}})));
        Requirements.CheckInteger ensure(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerEqual) annotation(
          Placement(transformation(extent = {{0, -40}, {20, -20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-44, 46}, {-36, 54}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{-44, 38}, {-36, 46}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 0) annotation(
          Placement(transformation(extent = {{-80, -80}, {-60, -60}})));
        CRML.Blocks.Logical4.Not4 not4_1 annotation(
          Placement(transformation(extent = {{-26, -36}, {-14, -24}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-59, -30}, {-44.4, -30}}, color = {217, 67, 180}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{10, 40}, {10, -20}}, color = {0, 0, 255}));
        connect(eventTable.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-59, 60}, {-50, 60}, {-50, 50}, {-44.4, 50}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{-35.6, 50}, {-1, 50}}, color = {162, 29, 33}));
        connect(eventTable1.y, booleanToBoolean4_3.u) annotation(
          Line(points = {{-59, 30}, {-50, 30}, {-50, 42}, {-44.4, 42}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_3.y, timePeriod.u2) annotation(
          Line(points = {{-35.6, 42}, {-1, 42}}, color = {162, 29, 33}));
        connect(integerConstant.y, ensure.threshold) annotation(
          Line(points = {{-59, -70}, {-40, -70}, {-40, -38}, {-1, -38}}, color = {255, 127, 0}));
        connect(booleanToBoolean4_1.y, not4_1.u) annotation(
          Line(points = {{-35.6, -30}, {-26.6, -30}}, color = {162, 29, 33}));
        connect(not4_1.y, ensure.u) annotation(
          Line(points = {{-13.4, -30}, {-1, -30}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 14));
      end EnsureAllAlong;

      model IntegerEnsure
        TimeLocators.Periods timePeriod(rightBoundaryIncluded = false, leftBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{-20, 0}, {0, 20}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic annotation(
          Placement(transformation(extent = {{-80, -50}, {-60, -30}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-44, -44}, {-36, -36}})));
        CRML.Blocks.Events.EventTable eventTable(option_width = false, instant = {1, 1.5, 3, 5}) annotation(
          Placement(transformation(extent = {{-80, 10}, {-60, 30}})));
        CRML.Blocks.Events.EventTable eventTable1(option_width = false, instant = {12, 13}) annotation(
          Placement(transformation(extent = {{-80, -20}, {-60, 0}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 5) annotation(
          Placement(transformation(extent = {{-80, -80}, {-60, -60}})));
        TimeLocators.While While annotation(
          Placement(transformation(extent = {{-20, 40}, {0, 60}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse(period = 12, width = 9, startTime = 1) annotation(
          Placement(transformation(extent = {{-80, 40}, {-60, 60}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-44, 6}, {-36, 14}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{-44, -2}, {-36, 6}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
          Placement(transformation(extent = {{-44, 46}, {-36, 54}})));
        TimeLocators.While While1 annotation(
          Placement(transformation(extent = {{-20, 80}, {0, 100}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse1(period = 12, width = 8, startTime = 2) annotation(
          Placement(transformation(extent = {{-80, 80}, {-60, 100}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_5 annotation(
          Placement(transformation(extent = {{-44, 86}, {-36, 94}})));
        Requirements.CheckInteger ensure(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerGreaterEqual) annotation(
          Placement(transformation(extent = {{-20, -50}, {0, -30}})));
        CRML.Blocks.Events.ShowEvent showEvent annotation(
          Placement(transformation(extent = {{-46, -32}, {-38, -24}})));
        Requirements.CheckAnytime checkRequirement annotation(
          Placement(transformation(extent = {{60, -50}, {80, -30}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-59, -40}, {-44.4, -40}}, color = {217, 67, 180}));
        connect(eventTable.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-59, 20}, {-50, 20}, {-50, 10}, {-44.4, 10}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{-35.6, 10}, {-21, 10}}, color = {162, 29, 33}));
        connect(eventTable1.y, booleanToBoolean4_3.u) annotation(
          Line(points = {{-59, -10}, {-50, -10}, {-50, 2}, {-44.4, 2}}, color = {217, 67, 180}));
        connect(booleanPulse.y, booleanToBoolean4_4.u) annotation(
          Line(points = {{-59, 50}, {-44.4, 50}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_4.y, While.u) annotation(
          Line(points = {{-35.6, 50}, {-21, 50}}, color = {162, 29, 33}));
        connect(While.y, timePeriod.tl) annotation(
          Line(points = {{-10, 40}, {-10, 20}}, color = {0, 0, 255}));
        connect(booleanToBoolean4_3.y, timePeriod.u2) annotation(
          Line(points = {{-35.6, 2}, {-21, 2}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_5.y, While1.u) annotation(
          Line(points = {{-35.6, 90}, {-21, 90}}, color = {162, 29, 33}));
        connect(booleanPulse1.y, booleanToBoolean4_5.u) annotation(
          Line(points = {{-59, 90}, {-44.4, 90}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{-35.6, -40}, {-21, -40}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{-10, 0}, {-10, -30}, {-10, -30}}, color = {0, 0, 255}));
        connect(integerConstant.y, ensure.threshold) annotation(
          Line(points = {{-59, -70}, {-30, -70}, {-30, -48}, {-21, -48}}, color = {255, 127, 0}));
        connect(eventPeriodic.y, showEvent.u) annotation(
          Line(points = {{-59, -40}, {-52, -40}, {-52, -28}, {-46.4, -28}}, color = {217, 67, 180}));
        connect(timePeriod.y, checkRequirement.tl) annotation(
          Line(points = {{-10, 0}, {-10, -24}, {70, -24}, {70, -30}}, color = {0, 0, 255}));
        connect(ensure.y, checkRequirement.u) annotation(
          Line(points = {{1, -40}, {59, -40}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 14));
      end IntegerEnsure;

      model RealEnsure
        TimeLocators.Periods timePeriod(leftBoundaryIncluded = false, rightBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{-20, 40}, {0, 60}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic annotation(
          Placement(transformation(extent = {{-80, -40}, {-60, -20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-44, -34}, {-36, -26}})));
        CRML.Blocks.Events.EventTable eventTable(option_width = false) annotation(
          Placement(transformation(extent = {{-80, 50}, {-60, 70}})));
        CRML.Blocks.Events.EventTable eventTable1(option_width = false, instant = {10}) annotation(
          Placement(transformation(extent = {{-80, 20}, {-60, 40}})));
        CRML.Blocks.Math.Constant integerConstant annotation(
          Placement(transformation(extent = {{-80, -80}, {-60, -60}})));
        Requirements.CheckReal ensure(redeclare model Function = ETL.Requirements.Functions.Math.Boolean4Integrator, redeclare model Condition = ETL.Requirements.Conditions.Math.GreaterEqual) annotation(
          Placement(transformation(extent = {{-20, -40}, {0, -20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-44, 46}, {-36, 54}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{-44, 38}, {-36, 46}})));
        TimeLocators.ShowDiscretePeriods showDiscretePeriods annotation(
          Placement(transformation(extent = {{6, -18}, {14, -10}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-59, -30}, {-44.4, -30}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{-35.6, -30}, {-21, -30}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{-10, 40}, {-10, -20}}, color = {0, 0, 255}));
        connect(eventTable.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-59, 60}, {-50, 60}, {-50, 50}, {-44.4, 50}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{-35.6, 50}, {-21, 50}}, color = {162, 29, 33}));
        connect(eventTable1.y, booleanToBoolean4_3.u) annotation(
          Line(points = {{-59, 30}, {-50, 30}, {-50, 42}, {-44.4, 42}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_3.y, timePeriod.u2) annotation(
          Line(points = {{-35.6, 42}, {-21, 42}}, color = {162, 29, 33}));
        connect(integerConstant.y, ensure.threshold) annotation(
          Line(points = {{-59, -70}, {-40, -70}, {-40, -38}, {-21, -38}}, color = {0, 0, 0}));
        connect(timePeriod.y, showDiscretePeriods.tl) annotation(
          Line(points = {{-10, 40}, {-10, -6}, {10, -6}, {10, -10}}, color = {0, 0, 255}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 14));
      end RealEnsure;

      model DiscreteTimeLocator
        TimeLocators.Periods timePeriod(discreteClockSpecified = true, leftBoundaryIncluded = false, durationSpecified = true, rightBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{0, -10}, {20, 10}})));
        CRML.Blocks.Logical.BooleanConstant eventPeriodic annotation(
          Placement(transformation(extent = {{-80, -100}, {-60, -80}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-44, -74}, {-36, -66}})));
        CRML.Blocks.Events.EventTable eventTable(option_width = false, instant = {1, 1.5, 3, 5}) annotation(
          Placement(transformation(extent = {{-80, 0}, {-60, 20}})));
        CRML.Blocks.Events.EventTable eventTable1(option_width = false, instant = {10}) annotation(
          Placement(transformation(extent = {{-80, -70}, {-60, -50}})));
        Requirements.CheckAtEnd ensure annotation(
          Placement(transformation(extent = {{-2, -80}, {18, -60}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-44, -4}, {-36, 4}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{-44, -64}, {-36, -56}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic1(period = 1.2) annotation(
          Placement(transformation(extent = {{-80, 70}, {-60, 90}})));
        CRML.Blocks.Events.ShowEvent showEvent annotation(
          Placement(transformation(extent = {{-42, 64}, {-34, 72}})));
        TimeLocators.While While1(rightBoundaryIncluded = false) annotation(
          Placement(transformation(extent = {{0, 30}, {20, 50}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse(period = 14, startTime = 2.6, width = 6) annotation(
          Placement(transformation(extent = {{-80, 30}, {-60, 50}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_5 annotation(
          Placement(transformation(extent = {{-44, 36}, {-36, 44}})));
        TimeLocators.ShowDiscretePeriods showDiscreteTimePeriods annotation(
          Placement(transformation(extent = {{26, -36}, {34, -28}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
          Placement(transformation(extent = {{-44, 76}, {-36, 84}})));
        CRML.Blocks.MathInteger.IntegerConstant const(K = 5) annotation(
          Placement(transformation(extent = {{-80, -30}, {-60, -10}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse1(period = 12, startTime = 4, width = 4) annotation(
          Placement(transformation(extent = {{0, 70}, {20, 90}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_6 annotation(
          Placement(transformation(extent = {{36, 76}, {44, 84}})));
        TimeLocators.While While(rightBoundaryIncluded = false) annotation(
          Placement(transformation(extent = {{60, 70}, {80, 90}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-59, -90}, {-52, -90}, {-52, -70}, {-44.4, -70}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{-35.6, -70}, {-3, -70}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{10, -10}, {10, -60}, {8, -60}}, color = {0, 0, 255}));
        connect(eventTable.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-59, 10}, {-50, 10}, {-50, 0}, {-44.4, 0}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{-35.6, 0}, {-1, 0}}, color = {162, 29, 33}));
        connect(eventTable1.y, booleanToBoolean4_3.u) annotation(
          Line(points = {{-59, -60}, {-44.4, -60}}, color = {217, 67, 180}));
        connect(booleanPulse.y, booleanToBoolean4_5.u) annotation(
          Line(points = {{-59, 40}, {-44.4, 40}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_5.y, While1.u) annotation(
          Line(points = {{-35.6, 40}, {-1, 40}}, color = {162, 29, 33}));
        connect(timePeriod.y, showDiscreteTimePeriods.tl) annotation(
          Line(points = {{10, -10}, {10, -20}, {30, -20}, {30, -28}}, color = {0, 0, 255}));
        connect(eventPeriodic1.y, showEvent.u) annotation(
          Line(points = {{-59, 80}, {-52, 80}, {-52, 68}, {-42.4, 68}}, color = {217, 67, 180}));
        connect(eventPeriodic1.y, booleanToBoolean4_4.u) annotation(
          Line(points = {{-59, 80}, {-44.4, 80}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_4.y, timePeriod.clock) annotation(
          Line(points = {{-35.6, 80}, {-20, 80}, {-20, 8}, {-1, 8}}, color = {162, 29, 33}));
        connect(booleanPulse1.y, booleanToBoolean4_6.u) annotation(
          Line(points = {{21, 80}, {35.6, 80}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_6.y, While.u) annotation(
          Line(points = {{44.4, 80}, {59, 80}}, color = {162, 29, 33}));
        connect(While.y, While1.tl) annotation(
          Line(points = {{70, 70}, {70, 60}, {10, 60}, {10, 50}}, color = {0, 0, 255}));
        connect(const.y, timePeriod.discreteDuration) annotation(
          Line(points = {{-59, -20}, {-20, -20}, {-20, -8}, {-1, -8}}, color = {255, 127, 0}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 14));
      end DiscreteTimeLocator;

      model AfterFor
        TimeLocators.Periods timePeriod(durationSpecified = true, leftBoundaryIncluded = false, rightBoundaryIncluded = false) annotation(
          Placement(transformation(extent = {{-20, 40}, {0, 60}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic annotation(
          Placement(transformation(extent = {{-80, -40}, {-60, -20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-44, -34}, {-36, -26}})));
        CRML.Blocks.Events.EventTable eventTable(option_width = false, instant = {1, 3, 6}) annotation(
          Placement(transformation(extent = {{-80, 40}, {-60, 60}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 5) annotation(
          Placement(transformation(extent = {{-80, -80}, {-60, -60}})));
        Requirements.CheckInteger ensure(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerGreaterEqual) annotation(
          Placement(transformation(extent = {{-20, -40}, {0, -20}})));
        TimeLocators.While While annotation(
          Placement(transformation(extent = {{-20, 80}, {0, 100}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse(width = 8, period = 12, startTime = 1) annotation(
          Placement(transformation(extent = {{-80, 80}, {-60, 100}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-44, 46}, {-36, 54}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
          Placement(transformation(extent = {{-44, 86}, {-36, 94}})));
        CRML.Blocks.Math.Constant const(k = 10) annotation(
          Placement(transformation(extent = {{-80, -10}, {-60, 10}})));
        CRML.Blocks.Events.ShowEvent showEvent annotation(
          Placement(transformation(extent = {{-40, -18}, {-32, -10}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-59, -30}, {-44.4, -30}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{-35.6, -30}, {-21, -30}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{-10, 40}, {-10, -20}}, color = {0, 0, 255}));
        connect(integerConstant.y, ensure.threshold) annotation(
          Line(points = {{-59, -70}, {-40, -70}, {-40, -38}, {-21, -38}}, color = {255, 127, 0}));
        connect(While.y, timePeriod.tl) annotation(
          Line(points = {{-10, 80}, {-10, 60}}, color = {0, 0, 255}));
        connect(eventTable.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-59, 50}, {-44.4, 50}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{-35.6, 50}, {-21, 50}}, color = {162, 29, 33}));
        connect(booleanPulse.y, booleanToBoolean4_4.u) annotation(
          Line(points = {{-59, 90}, {-44.4, 90}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_4.y, While.u) annotation(
          Line(points = {{-35.6, 90}, {-21, 90}}, color = {162, 29, 33}));
        connect(const.y, timePeriod.continuousDuration) annotation(
          Line(points = {{-59, 0}, {-30, 0}, {-30, 42}, {-21, 42}}, color = {0, 0, 0}));
        connect(eventPeriodic.y, showEvent.u) annotation(
          Line(points = {{-59, -30}, {-52, -30}, {-52, -14}, {-40.4, -14}}, color = {217, 67, 180}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 14));
      end AfterFor;

      model When1
        TimeLocators.Periods timePeriod(durationSpecified = true, leftBoundaryIncluded = true, rightBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{-20, 40}, {0, 60}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic annotation(
          Placement(transformation(extent = {{-80, -40}, {-60, -20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-44, -34}, {-36, -26}})));
        CRML.Blocks.Events.EventTable eventTable(option_width = false, instant = {1, 3, 6}) annotation(
          Placement(transformation(extent = {{-80, 40}, {-60, 60}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 5) annotation(
          Placement(transformation(extent = {{-80, -80}, {-60, -60}})));
        Requirements.CheckInteger ensure(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerGreaterEqual) annotation(
          Placement(transformation(extent = {{-20, -40}, {0, -20}})));
        TimeLocators.While While annotation(
          Placement(transformation(extent = {{-20, 80}, {0, 100}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse(width = 8, period = 12, startTime = 1) annotation(
          Placement(transformation(extent = {{-80, 80}, {-60, 100}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-44, 46}, {-36, 54}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
          Placement(transformation(extent = {{-44, 86}, {-36, 94}})));
        CRML.Blocks.Math.Constant const(k = 0) annotation(
          Placement(transformation(extent = {{-80, -10}, {-60, 10}})));
        TimeLocators.ShowDiscretePeriods showDiscreteTimeLocator annotation(
          Placement(transformation(extent = {{6, 16}, {14, 24}})));
        TimeLocators.While continuousTimeWhile annotation(
          Placement(transformation(extent = {{0, -90}, {20, -70}})));
        TimeLocators.ShowDiscreteWhile showDiscreteTimeWhile annotation(
          Placement(transformation(extent = {{44, -96}, {52, -88}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-59, -30}, {-44.4, -30}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{-35.6, -30}, {-21, -30}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{-10, 40}, {-10, -20}}, color = {0, 0, 255}));
        connect(integerConstant.y, ensure.threshold) annotation(
          Line(points = {{-59, -70}, {-40, -70}, {-40, -38}, {-21, -38}}, color = {255, 127, 0}));
        connect(While.y, timePeriod.tl) annotation(
          Line(points = {{-10, 80}, {-10, 60}}, color = {0, 0, 255}));
        connect(eventTable.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-59, 50}, {-44.4, 50}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{-35.6, 50}, {-21, 50}}, color = {162, 29, 33}));
        connect(booleanPulse.y, booleanToBoolean4_4.u) annotation(
          Line(points = {{-59, 90}, {-44.4, 90}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_4.y, While.u) annotation(
          Line(points = {{-35.6, 90}, {-21, 90}}, color = {162, 29, 33}));
        connect(timePeriod.y, showDiscreteTimeLocator.tl) annotation(
          Line(points = {{-10, 40}, {-10, 32}, {10, 32}, {10, 24}}, color = {0, 0, 255}));
        connect(booleanToBoolean4_1.y, continuousTimeWhile.u) annotation(
          Line(points = {{-35.6, -30}, {-30, -30}, {-30, -80}, {-1, -80}}, color = {162, 29, 33}));
        connect(continuousTimeWhile.y, showDiscreteTimeWhile.tl) annotation(
          Line(points = {{10, -90}, {10, -94}, {34, -94}, {34, -84}, {48, -84}, {48, -88}}, color = {0, 0, 255}));
        connect(const.y, timePeriod.continuousDuration) annotation(
          Line(points = {{-59, 0}, {-28, 0}, {-28, 42}, {-21, 42}}, color = {0, 0, 0}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 14));
      end When1;

      model When2
        TimeLocators.Periods timePeriod(durationSpecified = false, leftBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{-20, 40}, {0, 60}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic annotation(
          Placement(transformation(extent = {{-80, -40}, {-60, -20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-44, -34}, {-36, -26}})));
        CRML.Blocks.Events.EventTable eventTable(option_width = false, instant = {1, 3, 6}) annotation(
          Placement(transformation(extent = {{-80, 40}, {-60, 60}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 5) annotation(
          Placement(transformation(extent = {{-80, -80}, {-60, -60}})));
        Requirements.CheckInteger ensure(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerGreaterEqual) annotation(
          Placement(transformation(extent = {{-20, -40}, {0, -20}})));
        TimeLocators.While While annotation(
          Placement(transformation(extent = {{-20, 80}, {0, 100}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse(width = 8, period = 12, startTime = 1) annotation(
          Placement(transformation(extent = {{-80, 80}, {-60, 100}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-44, 46}, {-36, 54}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
          Placement(transformation(extent = {{-44, 86}, {-36, 94}})));
        CRML.Blocks.Math.Constant const(k = 0) annotation(
          Placement(transformation(extent = {{-80, -10}, {-60, 10}})));
        TimeLocators.ShowDiscretePeriods showDiscreteTimeLocator annotation(
          Placement(transformation(extent = {{6, 16}, {14, 24}})));
        TimeLocators.While While1 annotation(
          Placement(transformation(extent = {{0, -90}, {20, -70}})));
        TimeLocators.ShowDiscreteWhile showDiscreteTimeWhile annotation(
          Placement(transformation(extent = {{44, -96}, {52, -88}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-59, -30}, {-44.4, -30}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{-35.6, -30}, {-21, -30}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{-10, 40}, {-10, -20}}, color = {0, 0, 255}));
        connect(integerConstant.y, ensure.threshold) annotation(
          Line(points = {{-59, -70}, {-40, -70}, {-40, -38}, {-21, -38}}, color = {255, 127, 0}));
        connect(While.y, timePeriod.tl) annotation(
          Line(points = {{-10, 80}, {-10, 60}}, color = {0, 0, 255}));
        connect(eventTable.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-59, 50}, {-44.4, 50}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{-35.6, 50}, {-21, 50}}, color = {162, 29, 33}));
        connect(booleanPulse.y, booleanToBoolean4_4.u) annotation(
          Line(points = {{-59, 90}, {-44.4, 90}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_4.y, While.u) annotation(
          Line(points = {{-35.6, 90}, {-21, 90}}, color = {162, 29, 33}));
        connect(timePeriod.y, showDiscreteTimeLocator.tl) annotation(
          Line(points = {{-10, 40}, {-10, 32}, {10, 32}, {10, 24}}, color = {0, 0, 255}));
        connect(booleanToBoolean4_2.y, timePeriod.u2) annotation(
          Line(points = {{-35.6, 50}, {-30, 50}, {-30, 42}, {-21, 42}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_1.y, While1.u) annotation(
          Line(points = {{-35.6, -30}, {-30, -30}, {-30, -80}, {-1, -80}}, color = {162, 29, 33}));
        connect(While1.y, showDiscreteTimeWhile.tl) annotation(
          Line(points = {{10, -90}, {10, -94}, {34, -94}, {34, -84}, {48, -84}, {48, -88}}, color = {0, 0, 255}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 14));
      end When2;

      model Sliding
        TimeLocators.Periods timePeriod(rightBoundaryIncluded = false, durationSpecified = true) annotation(
          Placement(transformation(extent = {{20, -20}, {40, 0}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic annotation(
          Placement(transformation(extent = {{-80, -60}, {-60, -40}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-24, -54}, {-16, -46}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 5) annotation(
          Placement(transformation(extent = {{-80, -100}, {-60, -80}})));
        Requirements.CheckInteger ensure(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerLowerEqual) annotation(
          Placement(transformation(extent = {{20, -60}, {40, -40}})));
        TimeLocators.While While annotation(
          Placement(transformation(extent = {{20, 60}, {40, 80}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse(startTime = 1, width = 20, period = 22) annotation(
          Placement(transformation(extent = {{-80, 60}, {-60, 80}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
          Placement(transformation(extent = {{-4, 66}, {4, 74}})));
        CRML.Blocks.Math.Constant const(k = 8) annotation(
          Placement(transformation(extent = {{-80, -20}, {-60, 0}})));
        Modelica.Blocks.Logical.And or1 annotation(
          Placement(transformation(extent = {{-40, 20}, {-20, 40}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-4, 26}, {4, 34}})));
        CRML.Blocks.Events.ShowEvent showEvent annotation(
          Placement(transformation(extent = {{-24, -36}, {-16, -28}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-59, -50}, {-24.4, -50}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{-15.6, -50}, {19, -50}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{30, -20}, {30, -40}}, color = {0, 0, 255}));
        connect(booleanToBoolean4_4.y, While.u) annotation(
          Line(points = {{4.4, 70}, {19, 70}}, color = {162, 29, 33}));
        connect(integerConstant.y, ensure.threshold) annotation(
          Line(points = {{-59, -90}, {0, -90}, {0, -58}, {19, -58}}, color = {255, 127, 0}));
        connect(booleanPulse.y, or1.u1) annotation(
          Line(points = {{-59, 70}, {-50, 70}, {-50, 30}, {-42, 30}}, color = {217, 67, 180}));
        connect(eventPeriodic.y, or1.u2) annotation(
          Line(points = {{-59, -50}, {-50, -50}, {-50, 22}, {-42, 22}}, color = {217, 67, 180}));
        connect(or1.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-19, 30}, {-4.4, 30}}, color = {255, 0, 255}));
        connect(booleanPulse.y, booleanToBoolean4_4.u) annotation(
          Line(points = {{-59, 70}, {-4.4, 70}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, timePeriod.u1) annotation(
          Line(points = {{-15.6, -50}, {10, -50}, {10, -10}, {19, -10}}, color = {162, 29, 33}));
        connect(eventPeriodic.y, showEvent.u) annotation(
          Line(points = {{-59, -50}, {-30, -50}, {-30, -32}, {-24.4, -32}}, color = {217, 67, 180}));
        connect(const.y, timePeriod.continuousDuration) annotation(
          Line(points = {{-59, -10}, {-20, -10}, {-20, -18}, {19, -18}}, color = {0, 0, 0}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 24));
      end Sliding;

      model Shift
        TimeLocators.Periods timePeriod(durationSpecified = true, leftBoundaryIncluded = false, rightBoundaryIncluded = true) annotation(
          Placement(transformation(extent = {{40, 40}, {60, 60}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic annotation(
          Placement(transformation(extent = {{-80, -50}, {-60, -30}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-44, -34}, {-36, -26}})));
        CRML.Blocks.Events.EventTable eventTable(option_width = false, instant = {1, 3, 6, 9, 11}) annotation(
          Placement(transformation(extent = {{-80, 40}, {-60, 60}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 5) annotation(
          Placement(transformation(extent = {{-80, -80}, {-60, -60}})));
        Requirements.CheckInteger ensure(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerGreaterEqual) annotation(
          Placement(transformation(extent = {{40, -40}, {60, -20}})));
        TimeLocators.While While annotation(
          Placement(transformation(extent = {{40, 80}, {60, 100}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse(startTime = 1, width = 20, period = 22) annotation(
          Placement(transformation(extent = {{-80, 80}, {-60, 100}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{22, 46}, {30, 54}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
          Placement(transformation(extent = {{-44, 86}, {-36, 94}})));
        CRML.Blocks.Math.Constant const(k = 10) annotation(
          Placement(transformation(extent = {{-80, -20}, {-60, 0}})));
        CRML.Blocks.Events.EventDelay eventDelay annotation(
          Placement(transformation(extent = {{-30, 40}, {-10, 60}})));
        CRML.Blocks.Math.Constant const1(k = 5) annotation(
          Placement(transformation(extent = {{-80, 10}, {-60, 30}})));
        CRML.Blocks.Events.ShowEvent showEvent annotation(
          Placement(transformation(extent = {{-44, 56}, {-36, 64}})));
        CRML.Blocks.Events.ShowEvent showEvent1 annotation(
          Placement(transformation(extent = {{8, 18}, {16, 26}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-59, -40}, {-52, -40}, {-52, -30}, {-44.4, -30}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{-35.6, -30}, {39, -30}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{50, 40}, {50, -20}}, color = {0, 0, 255}));
        connect(integerConstant.y, ensure.threshold) annotation(
          Line(points = {{-59, -70}, {32, -70}, {32, -38}, {39, -38}}, color = {255, 127, 0}));
        connect(While.y, timePeriod.tl) annotation(
          Line(points = {{50, 80}, {50, 60}}, color = {0, 0, 255}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{30.4, 50}, {39, 50}}, color = {162, 29, 33}));
        connect(booleanPulse.y, booleanToBoolean4_4.u) annotation(
          Line(points = {{-59, 90}, {-44.4, 90}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_4.y, While.u) annotation(
          Line(points = {{-35.6, 90}, {39, 90}}, color = {162, 29, 33}));
        connect(const1.y, eventDelay.delay) annotation(
          Line(points = {{-59, 20}, {-40, 20}, {-40, 42}, {-31, 42}}, color = {0, 0, 0}));
        connect(eventTable.y, showEvent.u) annotation(
          Line(points = {{-59, 50}, {-50, 50}, {-50, 60}, {-44.4, 60}}, color = {217, 67, 180}));
        connect(eventDelay.y, showEvent1.u) annotation(
          Line(points = {{-9, 50}, {-4, 50}, {-4, 22}, {7.6, 22}}, color = {217, 67, 180}));
        connect(eventTable.y, eventDelay.u) annotation(
          Line(points = {{-59, 50}, {-31, 50}}, color = {217, 67, 180}));
        connect(eventDelay.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-9, 50}, {21.6, 50}}, color = {217, 67, 180}));
        connect(const.y, timePeriod.continuousDuration) annotation(
          Line(points = {{-59, -10}, {32, -10}, {32, 42}, {39, 42}}, color = {0, 0, 0}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 14));
      end Shift;

      model Delay
        CRML.Blocks.Events.EventTable eventTable(option_width = false, instant = {1, 3, 6, 9, 11}) annotation(
          Placement(transformation(extent = {{-100, 40}, {-80, 60}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 5) annotation(
          Placement(transformation(extent = {{0, -100}, {20, -80}})));
        CRML.Blocks.Math.Constant const(k = 10) annotation(
          Placement(transformation(extent = {{-100, -20}, {-80, 0}})));
        CRML.Blocks.Events.EventDelay eventDelay annotation(
          Placement(transformation(extent = {{-50, 40}, {-30, 60}})));
        CRML.Blocks.Math.Constant const1(k = 5) annotation(
          Placement(transformation(extent = {{-100, 10}, {-80, 30}})));
        CRML.Blocks.Events.ShowEvent showEvent annotation(
          Placement(transformation(extent = {{-64, 56}, {-56, 64}})));
        CRML.Blocks.Events.ShowEvent showEvent1 annotation(
          Placement(transformation(extent = {{-14, 26}, {-6, 34}})));
        CRML.Blocks.Logical.BooleanTable booleanTable(option_width = false, instant = {1, 1.2, 3, 3.2, 6, 6.2, 9, 9.2, 11, 11.2}) annotation(
          Placement(transformation(extent = {{-100, -50}, {-80, -30}})));
        CRML.Blocks.Logical.BooleanDelay booleanDelay annotation(
          Placement(transformation(extent = {{-48, -50}, {-28, -30}})));
        CRML.Blocks.Logical.BooleanClockedDelay booleanClockedDelay annotation(
          Placement(transformation(extent = {{60, -80}, {80, -60}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic(period = 1) annotation(
          Placement(transformation(extent = {{0, -60}, {20, -40}})));
        CRML.Blocks.Events.ShowEvent showEvent2 annotation(
          Placement(transformation(extent = {{36, -44}, {44, -36}})));
        CRML.Blocks.Events.EventClockedDelay eventClockedDelay annotation(
          Placement(transformation(extent = {{60, 0}, {80, 20}})));
        CRML.Blocks.Events.ShowEvent showEvent3 annotation(
          Placement(transformation(extent = {{68, 36}, {76, 44}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic1(period = 1.05) annotation(
          Placement(transformation(extent = {{20, 20}, {40, 40}})));
        CRML.Blocks.Events.ShowEvent showEvent4 annotation(
          Placement(transformation(extent = {{88, 6}, {96, 14}})));
      equation
        connect(const1.y, eventDelay.delay) annotation(
          Line(points = {{-79, 20}, {-60, 20}, {-60, 42}, {-51, 42}}, color = {0, 0, 0}));
        connect(eventTable.y, showEvent.u) annotation(
          Line(points = {{-79, 50}, {-70, 50}, {-70, 60}, {-64.4, 60}}, color = {217, 67, 180}));
        connect(eventDelay.y, showEvent1.u) annotation(
          Line(points = {{-29, 50}, {-24, 50}, {-24, 30}, {-14.4, 30}}, color = {217, 67, 180}));
        connect(eventTable.y, eventDelay.u) annotation(
          Line(points = {{-79, 50}, {-51, 50}}, color = {217, 67, 180}));
        connect(booleanTable.y, booleanDelay.u) annotation(
          Line(points = {{-79, -40}, {-49, -40}}, color = {217, 67, 180}));
        connect(const1.y, booleanDelay.delay) annotation(
          Line(points = {{-79, 20}, {-60, 20}, {-60, -48}, {-49, -48}}, color = {0, 0, 0}));
        connect(integerConstant.y, booleanClockedDelay.delay) annotation(
          Line(points = {{21, -90}, {30, -90}, {30, -78}, {59, -78}}, color = {255, 127, 0}));
        connect(booleanTable.y, booleanClockedDelay.u) annotation(
          Line(points = {{-79, -40}, {-70, -40}, {-70, -70}, {59, -70}}, color = {217, 67, 180}));
        connect(eventPeriodic.y, booleanClockedDelay.clock) annotation(
          Line(points = {{21, -50}, {30, -50}, {30, -62}, {59, -62}}, color = {217, 67, 180}));
        connect(eventPeriodic.y, showEvent2.u) annotation(
          Line(points = {{21, -50}, {30, -50}, {30, -40}, {35.6, -40}}, color = {217, 67, 180}));
        connect(integerConstant.y, eventClockedDelay.delay) annotation(
          Line(points = {{21, -90}, {48, -90}, {48, 2}, {59, 2}}, color = {255, 127, 0}));
        connect(eventTable.y, eventClockedDelay.u) annotation(
          Line(points = {{-79, 50}, {-70, 50}, {-70, 10}, {59, 10}}, color = {217, 67, 180}));
        connect(eventPeriodic1.y, eventClockedDelay.clock) annotation(
          Line(points = {{41, 30}, {50, 30}, {50, 18}, {59, 18}}, color = {217, 67, 180}));
        connect(eventPeriodic1.y, showEvent3.u) annotation(
          Line(points = {{41, 30}, {50, 30}, {50, 40}, {67.6, 40}}, color = {217, 67, 180}));
        connect(eventClockedDelay.y, showEvent4.u) annotation(
          Line(points = {{81, 10}, {87.6, 10}}, color = {217, 67, 180}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 20));
      end Delay;

      model SlidingRandom
        TimeLocators.Periods timePeriod(rightBoundaryIncluded = false, durationSpecified = true) annotation(
          Placement(transformation(extent = {{60, -20}, {80, 0}})));
        CRML.Blocks.Logical.RandomFailure failure annotation(
          Placement(transformation(extent = {{-40, -60}, {-20, -40}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{28, -54}, {36, -46}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 8) annotation(
          Placement(transformation(extent = {{20, -80}, {40, -60}})));
        Requirements.CheckInteger ensure(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerLower) annotation(
          Placement(transformation(extent = {{60, -60}, {80, -40}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse(startTime = 1, width = 20, period = 1000) annotation(
          Placement(transformation(extent = {{-60, 20}, {-40, 40}})));
        CRML.Blocks.Math.Constant const(k = 8) annotation(
          Placement(transformation(extent = {{10, -20}, {30, 0}})));
        CRML.Blocks.Events.ShowEvent showEvent annotation(
          Placement(transformation(extent = {{36, 46}, {44, 54}})));
        Modelica.Blocks.Logical.And or1 annotation(
          Placement(transformation(extent = {{0, 20}, {20, 40}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{36, 26}, {44, 34}})));
        CRML.Blocks.Math.Constant integerConstant1 annotation(
          Placement(transformation(extent = {{-80, -60}, {-60, -40}})));
        TimeLocators.While While annotation(
          Placement(transformation(extent = {{60, 60}, {80, 80}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse1(startTime = 1, period = 1000, width = 28) annotation(
          Placement(transformation(extent = {{-60, 60}, {-40, 80}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-4, 66}, {4, 74}})));
        inner CRML.Blocks.Logical.GlobalSeed globalSeed(fixedSeed = 111111, useAutomaticSeed = true) annotation(
          Placement(transformation(extent = {{-80, -20}, {-60, 0}})));
      equation
        connect(failure.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-19, -50}, {27.6, -50}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{36.4, -50}, {59, -50}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{70, -20}, {70, -40}}, color = {0, 0, 255}));
        connect(integerConstant.y, ensure.threshold) annotation(
          Line(points = {{41, -70}, {50, -70}, {50, -58}, {59, -58}}, color = {255, 127, 0}));
        connect(or1.y, booleanToBoolean4_3.u) annotation(
          Line(points = {{21, 30}, {35.6, 30}}, color = {255, 0, 255}));
        connect(booleanPulse.y, or1.u1) annotation(
          Line(points = {{-39, 30}, {-2, 30}}, color = {217, 67, 180}));
        connect(failure.y, or1.u2) annotation(
          Line(points = {{-19, -50}, {-10, -50}, {-10, 22}, {-2, 22}}, color = {255, 0, 255}));
        connect(booleanToBoolean4_3.y, timePeriod.u1) annotation(
          Line(points = {{44.4, 30}, {50, 30}, {50, -10}, {59, -10}}, color = {162, 29, 33}));
        connect(or1.y, showEvent.u) annotation(
          Line(points = {{21, 30}, {28, 30}, {28, 50}, {35.6, 50}}, color = {255, 0, 255}));
        connect(booleanPulse1.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-39, 70}, {-4.4, 70}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, While.u) annotation(
          Line(points = {{4.4, 70}, {59, 70}}, color = {162, 29, 33}));
        connect(While.y, timePeriod.tl) annotation(
          Line(points = {{70, 60}, {70, 0}}, color = {0, 0, 255}));
        connect(integerConstant1.y, failure.failureRate) annotation(
          Line(points = {{-59, -50}, {-41, -50}}, color = {0, 0, 0}));
        connect(integerConstant1.y, failure.repairRate) annotation(
          Line(points = {{-59, -50}, {-50, -50}, {-50, -58}, {-41, -58}}, color = {0, 0, 0}));
        connect(const.y, timePeriod.continuousDuration) annotation(
          Line(points = {{31, -10}, {44, -10}, {44, -18}, {59, -18}}, color = {0, 0, 0}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 30));
      end SlidingRandom;

      model Projection
        CRML.Blocks.Events.EventTable clock1(option_width = false, instant = {1, 3, 6, 9, 11}) annotation(
          Placement(transformation(extent = {{-100, 60}, {-80, 80}})));
        CRML.Blocks.Events.ShowEvent showClock1 annotation(
          Placement(transformation(extent = {{-64, 76}, {-56, 84}})));
        CRML.Blocks.Events.EventProjection eventProjection annotation(
          Placement(transformation(extent = {{-40, 40}, {-20, 60}})));
        CRML.Blocks.Events.EventTable event1(option_width = false, instant = {0.5, 4, 5, 7, 10}) annotation(
          Placement(transformation(extent = {{-100, 30}, {-80, 50}})));
        CRML.Blocks.Events.ShowEvent showEvent1 annotation(
          Placement(transformation(extent = {{-64, 46}, {-56, 54}})));
        CRML.Blocks.Events.ShowEvent showEvent1ProjClock1 annotation(
          Placement(transformation(extent = {{44, 46}, {52, 54}})));
        TimeLocators.Periods afterBefore annotation(
          Placement(transformation(extent = {{40, 0}, {60, 20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{16, 6}, {24, 14}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{16, -2}, {24, 6}})));
        TimeLocators.Periods afterFor(durationSpecified = true) annotation(
          Placement(transformation(extent = {{40, -40}, {60, -20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
          Placement(transformation(extent = {{16, -34}, {24, -26}})));
        CRML.Blocks.Events.EventTable event2(option_width = false, instant = {5, 7, 10, 12, 15}) annotation(
          Placement(transformation(extent = {{-98, -20}, {-78, 0}})));
        CRML.Blocks.Math.Constant const(k = 5) annotation(
          Placement(transformation(extent = {{-60, -60}, {-40, -40}})));
        CRML.Blocks.Events.ShowEvent showEvent2 annotation(
          Placement(transformation(extent = {{-54, -4}, {-46, 4}})));
      equation
        connect(clock1.y, showClock1.u) annotation(
          Line(points = {{-79, 70}, {-70, 70}, {-70, 80}, {-64.4, 80}}, color = {217, 67, 180}));
        connect(event1.y, showEvent1.u) annotation(
          Line(points = {{-79, 40}, {-70, 40}, {-70, 50}, {-64.4, 50}}, color = {217, 67, 180}));
        connect(event1.y, eventProjection.u) annotation(
          Line(points = {{-79, 40}, {-50, 40}, {-50, 50}, {-41, 50}}, color = {217, 67, 180}));
        connect(clock1.y, eventProjection.clock) annotation(
          Line(points = {{-79, 70}, {-50, 70}, {-50, 58}, {-41, 58}}, color = {217, 67, 180}));
        connect(eventProjection.y, showEvent1ProjClock1.u) annotation(
          Line(points = {{-19, 50}, {43.6, 50}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, afterBefore.u1) annotation(
          Line(points = {{24.4, 10}, {39, 10}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_1.y, afterBefore.u2) annotation(
          Line(points = {{24.4, 2}, {39, 2}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_4.y, afterFor.u1) annotation(
          Line(points = {{24.4, -30}, {39, -30}}, color = {162, 29, 33}));
        connect(event2.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-77, -10}, {8, -10}, {8, 2}, {15.6, 2}}, color = {217, 67, 180}));
        connect(eventProjection.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-19, 50}, {0, 50}, {0, 10}, {15.6, 10}}, color = {217, 67, 180}));
        connect(event2.y, showEvent2.u) annotation(
          Line(points = {{-77, -10}, {-60, -10}, {-60, 0}, {-54.4, 0}}, color = {217, 67, 180}));
        connect(eventProjection.y, booleanToBoolean4_4.u) annotation(
          Line(points = {{-19, 50}, {0, 50}, {0, -30}, {15.6, -30}}, color = {217, 67, 180}));
        connect(const.y, afterFor.continuousDuration) annotation(
          Line(points = {{-39, -50}, {0, -50}, {0, -38}, {39, -38}}, color = {0, 0, 0}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 20));
      end Projection;

      model TimeLocator
        import CRML;
        CRML.Blocks.Events.EventTable clock1(option_width = false, instant = {1, 3, 6, 9, 11}) annotation(
          Placement(transformation(extent = {{-100, 60}, {-80, 80}})));
        CRML.Blocks.Events.ShowEvent showClock1 annotation(
          Placement(transformation(extent = {{-64, 76}, {-56, 84}})));
        CRML.Blocks.Events.EventProjection eventProjection annotation(
          Placement(transformation(extent = {{-40, 40}, {-20, 60}})));
        CRML.Blocks.Events.EventTable event1(option_width = false, instant = {0.5, 4, 5, 7, 10}) annotation(
          Placement(transformation(extent = {{-100, 30}, {-80, 50}})));
        CRML.Blocks.Events.ShowEvent showEvent1 annotation(
          Placement(transformation(extent = {{-64, 46}, {-56, 54}})));
        CRML.Blocks.Events.ShowEvent showEvent1ProjClock1 annotation(
          Placement(transformation(extent = {{44, 46}, {52, 54}})));
        TimeLocators.Periods fromFor
          annotation (Placement(transformation(extent={{40,0},{60,20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{16, 6}, {24, 14}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{16, -2}, {24, 6}})));
        TimeLocators.Periods fromFor_nticks(durationSpecified=true,
            discreteClockSpecified=false)
          annotation (Placement(transformation(extent={{40,-40},{60,-20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
          Placement(transformation(extent = {{16, -34}, {24, -26}})));
        CRML.Blocks.Events.EventTable event2(option_width = false, instant = {5, 7, 10, 12, 15}) annotation(
          Placement(transformation(extent = {{-100, -10}, {-80, 10}})));
        CRML.Blocks.Math.Constant duration(k=5)
          annotation (Placement(transformation(extent={{-40,-60},{-20,-40}})));
        CRML.Blocks.Events.ShowEvent showEvent2 annotation(
          Placement(transformation(extent = {{-54, 4}, {-46, 12}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic(period = 0.5) annotation(
          Placement(transformation(extent = {{-40, -30}, {-20, -10}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{16, -26}, {24, -18}})));
        CRML.TimeLocators.Attributes.PeriodsEnd timeLocatorStartingEvents annotation(
          Placement(transformation(extent = {{66, -56}, {74, -48}})));
        CRML.Blocks.Events.ShowEvent showEvent4 annotation(
          Placement(transformation(extent = {{86, -56}, {94, -48}})));
      equation
        connect(clock1.y, showClock1.u) annotation(
          Line(points = {{-79, 70}, {-70, 70}, {-70, 80}, {-64.4, 80}}, color = {217, 67, 180}));
        connect(event1.y, showEvent1.u) annotation(
          Line(points = {{-79, 40}, {-70, 40}, {-70, 50}, {-64.4, 50}}, color = {217, 67, 180}));
        connect(event1.y, eventProjection.u) annotation(
          Line(points = {{-79, 40}, {-50, 40}, {-50, 50}, {-41, 50}}, color = {217, 67, 180}));
        connect(clock1.y, eventProjection.clock) annotation(
          Line(points = {{-79, 70}, {-50, 70}, {-50, 58}, {-41, 58}}, color = {217, 67, 180}));
        connect(eventProjection.y, showEvent1ProjClock1.u) annotation(
          Line(points = {{-19, 50}, {43.6, 50}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, fromFor.u1)
          annotation (Line(points={{24.4,10},{39,10}}, color={162,29,33}));
        connect(booleanToBoolean4_1.y, fromFor.u2)
          annotation (Line(points={{24.4,2},{39,2}}, color={162,29,33}));
        connect(booleanToBoolean4_4.y, fromFor_nticks.u1)
          annotation (Line(points={{24.4,-30},{39,-30}}, color={162,29,33}));
        connect(event2.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-79, 0}, {8, 0}, {8, 2}, {15.6, 2}}, color = {217, 67, 180}));
        connect(eventProjection.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-19, 50}, {0, 50}, {0, 10}, {15.6, 10}}, color = {217, 67, 180}));
        connect(event2.y, showEvent2.u) annotation(
          Line(points = {{-79, 0}, {-60, 0}, {-60, 8}, {-54.4, 8}}, color = {217, 67, 180}));
        connect(eventProjection.y, booleanToBoolean4_4.u) annotation(
          Line(points = {{-19, 50}, {0, 50}, {0, -30}, {15.6, -30}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_3.y, fromFor_nticks.clock)
          annotation (Line(points={{24.4,-22},{39,-22}}, color={162,29,33}));
        connect(eventPeriodic.y, booleanToBoolean4_3.u) annotation(
          Line(points = {{-19, -20}, {8, -20}, {8, -22}, {15.6, -22}}, color = {217, 67, 180}));
        connect(fromFor_nticks.y, timeLocatorStartingEvents.tl) annotation (
            Line(points={{50,-40},{50,-44},{70,-44},{70,-48}}, color={0,0,255}));
        connect(timeLocatorStartingEvents.y, showEvent4.u) annotation(
          Line(points = {{74.4, -52}, {80, -52}, {80, -52}, {85.6, -52}}, color = {217, 67, 180}));
        connect(duration.y, fromFor_nticks.continuousDuration) annotation (Line(
              points={{-19,-50},{34,-50},{34,-38},{39,-38}}, color={0,0,0}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 20));
      end TimeLocator;

      model ElapsedTime
        CRML.Blocks.Events.EventTable event1(option_width = false, instant = {0.5, 4, 5, 7, 10}) annotation(
          Placement(transformation(extent = {{-100, 30}, {-80, 50}})));
        CRML.Blocks.Events.ShowEvent showEvent1 annotation(
          Placement(transformation(extent = {{-54, 44}, {-46, 52}})));
        CRML.Blocks.Events.EventTable event2(option_width = false, instant = {5, 7, 10, 12, 15}) annotation(
          Placement(transformation(extent = {{-100, -10}, {-80, 10}})));
        CRML.Blocks.Events.ShowEvent showEvent2 annotation(
          Placement(transformation(extent = {{-54, 6}, {-46, 14}})));
        CRML.Blocks.Events.ElapsedTime elapsedTime annotation(
          Placement(transformation(extent = {{-20, 10}, {0, 30}})));
      equation
        connect(event1.y, showEvent1.u) annotation(
          Line(points = {{-79, 40}, {-60, 40}, {-60, 48}, {-54.4, 48}}, color = {217, 67, 180}));
        connect(event2.y, showEvent2.u) annotation(
          Line(points = {{-79, 0}, {-60, 0}, {-60, 10}, {-54.4, 10}}, color = {217, 67, 180}));
        connect(event1.y, elapsedTime.u1) annotation(
          Line(points = {{-79, 40}, {-30, 40}, {-30, 28}, {-21, 28}}, color = {217, 67, 180}));
        connect(event2.y, elapsedTime.u2) annotation(
          Line(points = {{-79, 0}, {-30, 0}, {-30, 12}, {-21, 12}}, color = {217, 67, 180}));
        connect(event1.y, elapsedTime.reset) annotation(
          Line(points = {{-79, 40}, {-40, 40}, {-40, -10}, {-10, -10}, {-10, 9}}, color = {217, 67, 180}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 20));
      end ElapsedTime;

      model EventCounter
        CRML.Blocks.Events.EventTable eventTable(option_width = false, instant = {1, 20}) annotation(
          Placement(transformation(extent = {{20, -100}, {40, -80}})));
        CRML.Blocks.Events.EventTable eventTable1(option_width = false, instant = {12, 30}) annotation(
          Placement(transformation(extent = {{-20, -100}, {0, -80}})));
        CRML.Blocks.Events.EventPeriodic start(startTime = 2, period = 11) annotation(
          Placement(transformation(extent = {{-100, 40}, {-80, 60}})));
        CRML.Blocks.Events.ShowEvent showEventStart annotation(
          Placement(transformation(extent = {{-54, 64}, {-46, 72}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic1(startTime = 1) annotation(
          Placement(transformation(extent = {{-100, -10}, {-80, 10}})));
        CRML.Blocks.Events.ShowEvent showEvent annotation(
          Placement(transformation(extent = {{-54, -24}, {-46, -16}})));
        CRML.Blocks.Events.EventPeriodic finish(period = 11, startTime = 10) annotation(
          Placement(transformation(extent = {{-100, -60}, {-80, -40}})));
        CRML.Blocks.Events.ShowEvent showEventFinish annotation(
          Placement(transformation(extent = {{-54, -54}, {-46, -46}})));
        TimeLocators.Periods timePeriod(leftBoundaryIncluded = false, rightBoundaryIncluded = false) annotation(
          Placement(transformation(extent = {{20, 40}, {40, 60}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-24, 46}, {-16, 54}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-24, 38}, {-16, 46}})));
        Requirements.Functions.MathInteger.EventCounter eventCounter1 annotation(
          Placement(transformation(extent = {{20, -10}, {40, 10}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{-24, -4}, {-16, 4}})));
        Requirements.CheckInteger checkInteger(redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerLowerEqual) annotation(
          Placement(transformation(extent = {{60, -40}, {80, -20}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 8) annotation(
          Placement(transformation(extent = {{0, -60}, {20, -40}})));
      equation
        connect(start.y, showEventStart.u) annotation(
          Line(points = {{-79, 50}, {-60, 50}, {-60, 68}, {-54.4, 68}}, color = {217, 67, 180}));
        connect(eventPeriodic1.y, showEvent.u) annotation(
          Line(points = {{-79, 0}, {-70, 0}, {-70, -20}, {-54.4, -20}}, color = {217, 67, 180}));
        connect(finish.y, showEventFinish.u) annotation(
          Line(points = {{-79, -50}, {-54.4, -50}}, color = {217, 67, 180}));
        connect(start.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-79, 50}, {-24.4, 50}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, timePeriod.u1) annotation(
          Line(points = {{-15.6, 50}, {19, 50}}, color = {162, 29, 33}));
        connect(finish.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-79, -50}, {-60, -50}, {-60, 42}, {-24.4, 42}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u2) annotation(
          Line(points = {{-15.6, 42}, {19, 42}}, color = {162, 29, 33}));
        connect(timePeriod.y[1], eventCounter1.tl) annotation(
          Line(points = {{30, 40}, {30, 10}}, color = {0, 0, 255}));
        connect(eventPeriodic1.y, booleanToBoolean4_3.u) annotation(
          Line(points = {{-79, 0}, {-24.4, 0}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_3.y, eventCounter1.u) annotation(
          Line(points = {{-15.6, 0}, {19, 0}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_3.y, checkInteger.u) annotation(
          Line(points = {{-15.6, 0}, {0, 0}, {0, -30}, {59, -30}}, color = {162, 29, 33}));
        connect(timePeriod.y, checkInteger.tl) annotation(
          Line(points = {{30, 40}, {30, 28}, {70, 28}, {70, -20}}, color = {0, 0, 255}));
        connect(integerConstant.y, checkInteger.threshold) annotation(
          Line(points = {{21, -50}, {40, -50}, {40, -38}, {59, -38}}, color = {255, 127, 0}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 30));
      end EventCounter;

      model CheckCount
        TimeLocators.Periods timePeriod annotation(
          Placement(transformation(extent = {{-20, 70}, {0, 90}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic annotation(
          Placement(transformation(extent = {{-80, 20}, {-60, 40}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-44, 26}, {-36, 34}})));
        CRML.Blocks.Events.EventTable eventTable(option_width = false, instant = {1}) annotation(
          Placement(transformation(extent = {{-80, 80}, {-60, 100}})));
        CRML.Blocks.Events.EventTable eventTable1(option_width = false, instant = {12}) annotation(
          Placement(transformation(extent = {{-80, 50}, {-60, 70}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 11) annotation(
          Placement(transformation(extent = {{-80, -10}, {-60, 10}})));
        Requirements.CheckInteger ensure(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerEqual) annotation(
          Placement(transformation(extent = {{-20, 20}, {0, 40}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-44, 76}, {-36, 84}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{-44, 68}, {-36, 76}})));
        Requirements.CheckInteger ensure1(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerGreaterEqual) annotation(
          Placement(transformation(extent = {{-20, -20}, {0, 0}})));
        Requirements.CheckInteger ensure2(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerLowerEqual) annotation(
          Placement(transformation(extent = {{-20, -60}, {0, -40}})));
        CRML.Blocks.Logical4.And4 and4 annotation(
          Placement(transformation(extent = {{40, -40}, {60, -20}})));
        CRML.Blocks.Events.ShowEvent showEvent annotation(
          Placement(transformation(extent = {{-34, 46}, {-26, 54}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-59, 30}, {-44.4, 30}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{-35.6, 30}, {-21, 30}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{-10, 70}, {-10, 40}}, color = {0, 0, 255}));
        connect(integerConstant.y, ensure.threshold) annotation(
          Line(points = {{-59, 0}, {-40, 0}, {-40, 22}, {-21, 22}}, color = {255, 127, 0}));
        connect(eventTable.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-59, 90}, {-50, 90}, {-50, 80}, {-44.4, 80}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{-35.6, 80}, {-21, 80}}, color = {162, 29, 33}));
        connect(eventTable1.y, booleanToBoolean4_3.u) annotation(
          Line(points = {{-59, 60}, {-50, 60}, {-50, 72}, {-44.4, 72}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_3.y, timePeriod.u2) annotation(
          Line(points = {{-35.6, 72}, {-21, 72}}, color = {162, 29, 33}));
        connect(integerConstant.y, ensure1.threshold) annotation(
          Line(points = {{-59, 0}, {-40, 0}, {-40, -18}, {-21, -18}}, color = {255, 127, 0}));
        connect(integerConstant.y, ensure2.threshold) annotation(
          Line(points = {{-59, 0}, {-40, 0}, {-40, -58}, {-21, -58}}, color = {255, 127, 0}));
        connect(booleanToBoolean4_1.y, ensure1.u) annotation(
          Line(points = {{-35.6, 30}, {-30, 30}, {-30, -10}, {-21, -10}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_1.y, ensure2.u) annotation(
          Line(points = {{-35.6, 30}, {-30, 30}, {-30, -50}, {-21, -50}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure1.tl) annotation(
          Line(points = {{-10, 70}, {-10, 50}, {10, 50}, {10, 10}, {-10, 10}, {-10, 0}}, color = {0, 0, 255}));
        connect(timePeriod.y, ensure2.tl) annotation(
          Line(points = {{-10, 70}, {-10, 50}, {10, 50}, {10, -30}, {-10, -30}, {-10, -40}}, color = {0, 0, 255}));
        connect(ensure1.y, and4.u1) annotation(
          Line(points = {{1, -10}, {20, -10}, {20, -22}, {39, -22}}, color = {162, 29, 33}));
        connect(ensure2.y, and4.u2) annotation(
          Line(points = {{1, -50}, {20, -50}, {20, -38}, {39, -38}}, color = {162, 29, 33}));
        connect(eventPeriodic.y, showEvent.u) annotation(
          Line(points = {{-59, 30}, {-50, 30}, {-50, 50}, {-34.4, 50}}, color = {217, 67, 180}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 20));
      end CheckCount;

      model CheckCount1
        TimeLocators.Periods timePeriod annotation(
          Placement(transformation(extent = {{-20, 70}, {0, 90}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic annotation(
          Placement(transformation(extent = {{-80, 20}, {-60, 40}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-44, 26}, {-36, 34}})));
        CRML.Blocks.Events.EventTable eventTable(option_width = false, instant = {1}) annotation(
          Placement(transformation(extent = {{-80, 80}, {-60, 100}})));
        CRML.Blocks.Events.EventTable eventTable1(option_width = false, instant = {12}) annotation(
          Placement(transformation(extent = {{-80, 50}, {-60, 70}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 12) annotation(
          Placement(transformation(extent = {{-80, -10}, {-60, 10}})));
        Requirements.CheckInteger ensure(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerLowerEqual) annotation(
          Placement(transformation(extent = {{-20, 20}, {0, 40}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-44, 76}, {-36, 84}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{-44, 68}, {-36, 76}})));
        CRML.Blocks.Events.ShowEvent showEvent annotation(
          Placement(transformation(extent = {{-34, 46}, {-26, 54}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-59, 30}, {-44.4, 30}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{-35.6, 30}, {-21, 30}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{-10, 70}, {-10, 40}}, color = {0, 0, 255}));
        connect(integerConstant.y, ensure.threshold) annotation(
          Line(points = {{-59, 0}, {-40, 0}, {-40, 22}, {-21, 22}}, color = {255, 127, 0}));
        connect(eventTable.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-59, 90}, {-50, 90}, {-50, 80}, {-44.4, 80}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{-35.6, 80}, {-21, 80}}, color = {162, 29, 33}));
        connect(eventTable1.y, booleanToBoolean4_3.u) annotation(
          Line(points = {{-59, 60}, {-50, 60}, {-50, 72}, {-44.4, 72}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_3.y, timePeriod.u2) annotation(
          Line(points = {{-35.6, 72}, {-21, 72}}, color = {162, 29, 33}));
        connect(eventPeriodic.y, showEvent.u) annotation(
          Line(points = {{-59, 30}, {-50, 30}, {-50, 50}, {-34.4, 50}}, color = {217, 67, 180}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 20));
      end CheckCount1;

      model Master
        import CRML;
        TimeLocators.Periods timePeriod annotation(
          Placement(transformation(extent = {{-40, 30}, {-20, 50}})));
        CRML.Blocks.Logical.BooleanStep eventPeriodic(startTime = 5) annotation(
          Placement(transformation(extent = {{-100, -50}, {-80, -30}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-64, -44}, {-56, -36}})));
        CRML.Blocks.Events.EventTable eventTable(option_width = false) annotation(
          Placement(transformation(extent = {{-100, 40}, {-80, 60}})));
        CRML.Blocks.Events.EventTable eventTable1(option_width = false, instant = {10}) annotation(
          Placement(transformation(extent = {{-100, 10}, {-80, 30}})));
        CRML.ETL.Requirements.CheckAtEnd ensure annotation(
          Placement(transformation(extent = {{-40, -50}, {-20, -30}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-64, 36}, {-56, 44}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{-64, 28}, {-56, 36}})));
        TimeLocators.Periods timePeriod1 annotation(
          Placement(transformation(extent = {{80, 30}, {100, 50}})));
        CRML.Blocks.Logical.BooleanStep eventPeriodic1(startTime = 0) annotation(
          Placement(transformation(extent = {{0, -50}, {20, -30}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
          Placement(transformation(extent = {{36, -44}, {44, -36}})));
        CRML.Blocks.Events.EventTable eventTable2(option_width = false) annotation(
          Placement(transformation(extent = {{20, 40}, {40, 60}})));
        CRML.Blocks.Events.EventTable eventTable3(option_width = false, instant = {10}) annotation(
          Placement(transformation(extent = {{20, 10}, {40, 30}})));
        CRML.ETL.Requirements.CheckInteger ensure1(redeclare model Function = ETL.Requirements.Functions.MathInteger.EventCounter, redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerEqual) annotation(
          Placement(transformation(extent = {{80, -50}, {100, -30}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_5 annotation(
          Placement(transformation(extent = {{56, 36}, {64, 44}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_6 annotation(
          Placement(transformation(extent = {{56, 28}, {64, 36}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 0) annotation(
          Placement(transformation(extent = {{0, -80}, {20, -60}})));
        CRML.Blocks.Logical4.Not4 not4_1 annotation(
          Placement(transformation(extent = {{54, -46}, {66, -34}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse(width = 6, period = 20, startTime = 2) annotation(
          Placement(transformation(extent = {{0, 80}, {20, 100}})));
        CRML.Blocks.Events.TimeFrom timeFrom annotation(
          Placement(transformation(extent = {{-76, 84}, {-64, 96}})));
        inner CRML.TimeLocators.Continuous.Master master annotation(
          Placement(transformation(extent = {{60, 80}, {80, 100}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_7 annotation(
          Placement(transformation(extent = {{36, 86}, {44, 94}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-79, -40}, {-64.4, -40}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{-55.6, -40}, {-41, -40}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{-30, 30}, {-30, -30}}, color = {0, 0, 255}));
        connect(eventTable.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-79, 50}, {-70, 50}, {-70, 40}, {-64.4, 40}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{-55.6, 40}, {-41, 40}}, color = {162, 29, 33}));
        connect(eventTable1.y, booleanToBoolean4_3.u) annotation(
          Line(points = {{-79, 20}, {-70, 20}, {-70, 32}, {-64.4, 32}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_3.y, timePeriod.u2) annotation(
          Line(points = {{-55.6, 32}, {-41, 32}}, color = {162, 29, 33}));
        connect(eventPeriodic1.y, booleanToBoolean4_4.u) annotation(
          Line(points = {{21, -40}, {35.6, -40}}, color = {217, 67, 180}));
        connect(timePeriod1.y, ensure1.tl) annotation(
          Line(points = {{90, 30}, {90, -30}}, color = {0, 0, 255}));
        connect(eventTable2.y, booleanToBoolean4_5.u) annotation(
          Line(points = {{41, 50}, {50, 50}, {50, 40}, {55.6, 40}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_5.y, timePeriod1.u1) annotation(
          Line(points = {{64.4, 40}, {79, 40}}, color = {162, 29, 33}));
        connect(eventTable3.y, booleanToBoolean4_6.u) annotation(
          Line(points = {{41, 20}, {50, 20}, {50, 32}, {55.6, 32}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_6.y, timePeriod1.u2) annotation(
          Line(points = {{64.4, 32}, {79, 32}}, color = {162, 29, 33}));
        connect(integerConstant.y, ensure1.threshold) annotation(
          Line(points = {{21, -70}, {40, -70}, {40, -48}, {79, -48}}, color = {255, 127, 0}));
        connect(booleanToBoolean4_4.y, not4_1.u) annotation(
          Line(points = {{44.4, -40}, {53.4, -40}}, color = {162, 29, 33}));
        connect(not4_1.y, ensure1.u) annotation(
          Line(points = {{66.6, -40}, {79, -40}}, color = {162, 29, 33}));
        connect(booleanPulse.y, booleanToBoolean4_7.u) annotation(
          Line(points = {{21, 90}, {35.6, 90}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_7.y, master.u) annotation(
          Line(points = {{44.4, 90}, {59, 90}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 14));
      end Master;

      model Master1
        import CRML;
        CRML.Blocks.Logical.BooleanPulse booleanPulse(width = 6, period = 20, startTime = 2) annotation(
          Placement(transformation(extent = {{-100, 80}, {-80, 100}})));
        inner CRML.TimeLocators.Continuous.Master master annotation(
          Placement(transformation(extent = {{80, 80}, {100, 100}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_7 annotation(
          Placement(transformation(extent = {{16, 86}, {24, 94}})));
        CRML.TimeLocators.Continuous.During during annotation(
          Placement(transformation(extent = {{60, -20}, {80, 0}})));
        CRML.Blocks.Logical.BooleanConstant booleanConstant annotation(
          Placement(transformation(extent = {{-100, 0}, {-80, 20}})));
        Modelica.Blocks.Logical.And and1 annotation(
          Placement(transformation(extent = {{-40, 20}, {-20, 40}})));
      equation
        connect(booleanToBoolean4_7.y, master.u) annotation(
          Line(points = {{24.4, 90}, {79, 90}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_7.y, during.u) annotation(
          Line(points = {{24.4, 90}, {40, 90}, {40, -10}, {59, -10}}, color = {162, 29, 33}));
        connect(booleanConstant.y, and1.u2) annotation(
          Line(points = {{-79, 10}, {-60, 10}, {-60, 22}, {-42, 22}}, color = {217, 67, 180}));
        connect(booleanPulse.y, and1.u1) annotation(
          Line(points = {{-79, 90}, {-60, 90}, {-60, 30}, {-42, 30}}, color = {217, 67, 180}));
        connect(and1.y, booleanToBoolean4_7.u) annotation(
          Line(points = {{-19, 30}, {0, 30}, {0, 90}, {15.6, 90}}, color = {255, 0, 255}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 14));
      end Master1;

      model EnsureAnytime
        import CRML;
        TimeLocators.Periods timePeriod annotation(
          Placement(transformation(extent = {{-40, 30}, {-20, 50}})));
        CRML.Blocks.Logical.BooleanStep eventPeriodic(startTime = 5) annotation(
          Placement(transformation(extent = {{-100, -50}, {-80, -30}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-64, -44}, {-56, -36}})));
        CRML.Blocks.Events.EventTable eventTable(option_width = false) annotation(
          Placement(transformation(extent = {{-100, 40}, {-80, 60}})));
        CRML.Blocks.Events.EventTable eventTable1(option_width = false, instant = {10}) annotation(
          Placement(transformation(extent = {{-100, 10}, {-80, 30}})));
        CRML.ETL.Requirements.CheckAtEnd ensure annotation(
          Placement(transformation(extent = {{-40, -50}, {-20, -30}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-64, 36}, {-56, 44}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{-64, 28}, {-56, 36}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse(width = 6, period = 20, startTime = 2) annotation(
          Placement(transformation(extent = {{0, 80}, {20, 100}})));
        CRML.Blocks.Events.TimeFrom timeFrom annotation(
          Placement(transformation(extent = {{-76, 84}, {-64, 96}})));
        inner CRML.TimeLocators.Continuous.Master master annotation(
          Placement(transformation(extent = {{60, 80}, {80, 100}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_7 annotation(
          Placement(transformation(extent = {{36, 86}, {44, 94}})));
        CRML.Requirements.CheckAnytime checkAnytime annotation(
          Placement(transformation(extent = {{60, -80}, {80, -60}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
          Placement(transformation(extent = {{-34, -74}, {-26, -66}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse1 annotation(
          Placement(transformation(extent = {{-100, -80}, {-80, -60}})));
        CRML.TimeLocators.Continuous.During during annotation(
          Placement(transformation(extent = {{60, -20}, {80, 0}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_5 annotation(
          Placement(transformation(extent = {{36, -14}, {44, -6}})));
        CRML.Blocks.Logical.BooleanStep eventPeriodic1(startTime = 0.001) annotation(
          Placement(transformation(extent = {{0, -20}, {20, 0}})));
        CRML.ETL.Requirements.CheckAnytime check annotation(
          Placement(transformation(extent = {{0, -60}, {20, -40}})));
      equation
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-79, -40}, {-64.4, -40}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, ensure.u) annotation(
          Line(points = {{-55.6, -40}, {-41, -40}}, color = {162, 29, 33}));
        connect(timePeriod.y, ensure.tl) annotation(
          Line(points = {{-30, 30}, {-30, -30}}, color = {0, 0, 255}));
        connect(eventTable.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-79, 50}, {-70, 50}, {-70, 40}, {-64.4, 40}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{-55.6, 40}, {-41, 40}}, color = {162, 29, 33}));
        connect(eventTable1.y, booleanToBoolean4_3.u) annotation(
          Line(points = {{-79, 20}, {-70, 20}, {-70, 32}, {-64.4, 32}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_3.y, timePeriod.u2) annotation(
          Line(points = {{-55.6, 32}, {-41, 32}}, color = {162, 29, 33}));
        connect(booleanPulse.y, booleanToBoolean4_7.u) annotation(
          Line(points = {{21, 90}, {35.6, 90}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_7.y, master.u) annotation(
          Line(points = {{44.4, 90}, {59, 90}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_4.y, checkAnytime.u) annotation(
          Line(points = {{-25.6, -70}, {59, -70}}, color = {162, 29, 33}));
        connect(booleanPulse1.y, booleanToBoolean4_4.u) annotation(
          Line(points = {{-79, -70}, {-34.4, -70}}, color = {217, 67, 180}));
        connect(during.y, checkAnytime.tl) annotation(
          Line(points = {{70, -20}, {70, -60}}, color = {0, 0, 255}));
        connect(booleanToBoolean4_5.y, during.u) annotation(
          Line(points = {{44.4, -10}, {59, -10}}, color = {162, 29, 33}));
        connect(eventPeriodic1.y, booleanToBoolean4_5.u) annotation(
          Line(points = {{21, -10}, {35.6, -10}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_4.y, check.u) annotation(
          Line(points = {{-25.6, -70}, {-10, -70}, {-10, -50}, {-1, -50}}, color = {162, 29, 33}));
        connect(during.y, check.tl) annotation(
          Line(points = {{70, -20}, {70, -28}, {10, -28}, {10, -40}}, color = {0, 0, 255}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 14));
      end EnsureAnytime;

      model TimePeriods
        import CRML;
        TimeLocators.Periods timePeriod(rightBoundaryIncluded = false, leftBoundaryIncluded = false) annotation(
          Placement(transformation(extent = {{40, 60}, {60, 80}})));
        CRML.ETL.Requirements.CheckAtEnd checkAtEnd annotation(
          Placement(transformation(extent = {{40, 20}, {60, 40}})));
        CRML.ETL.Requirements.CheckAnytime checkAnytime annotation(
          Placement(transformation(extent = {{70, -20}, {90, 0}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse1(period = 5, startTime = 1, width = 4) annotation(
          Placement(transformation(extent = {{-80, 0}, {-60, 20}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
          Placement(transformation(extent = {{-4, 6}, {4, 14}})));
        CRML.ETL.Requirements.CheckInteger checkInteger(redeclare model Condition = ETL.Requirements.Conditions.MathInteger.IntegerGreaterEqual) annotation(
          Placement(transformation(extent = {{70, -60}, {90, -40}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic(startTime = 1) annotation(
          Placement(transformation(extent = {{-80, -60}, {-60, -40}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{36, -54}, {44, -46}})));
        CRML.Blocks.MathInteger.IntegerConstant integerConstant(K = 3) annotation(
          Placement(transformation(extent = {{-40, -80}, {-20, -60}})));
        CRML.Blocks.Events.ShowEvent showEvent annotation(
          Placement(transformation(extent = {{-24, -34}, {-16, -26}})));
        CRML.Blocks.Logical.BooleanPulse booleanPulse2(period = 5, startTime = 1, width = 4) annotation(
          Placement(transformation(extent = {{-80, 50}, {-60, 70}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-4, 66}, {4, 74}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{-4, 58}, {4, 66}})));
        Modelica.Blocks.Logical.Not not1 annotation(
          Placement(transformation(extent = {{-24, 58}, {-16, 66}})));
      equation
        connect(timePeriod.y, checkAtEnd.tl) annotation(
          Line(points = {{50, 60}, {50, 40}}, color = {0, 0, 255}));
        connect(timePeriod.y, checkAnytime.tl) annotation(
          Line(points = {{50, 60}, {50, 50}, {80, 50}, {80, 0}}, color = {0, 0, 255}));
        connect(booleanToBoolean4_4.y, checkAnytime.u) annotation(
          Line(points = {{4.4, 10}, {20, 10}, {20, -10}, {69, -10}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_4.y, checkAtEnd.u) annotation(
          Line(points = {{4.4, 10}, {20, 10}, {20, 30}, {39, 30}}, color = {162, 29, 33}));
        connect(booleanPulse1.y, booleanToBoolean4_4.u) annotation(
          Line(points = {{-59, 10}, {-4.4, 10}}, color = {217, 67, 180}));
        connect(timePeriod.y, checkInteger.tl) annotation(
          Line(points = {{50, 60}, {50, 50}, {100, 50}, {100, -30}, {80, -30}, {80, -40}}, color = {0, 0, 255}));
        connect(booleanToBoolean4_1.y, checkInteger.u) annotation(
          Line(points = {{44.4, -50}, {69, -50}}, color = {162, 29, 33}));
        connect(integerConstant.y, checkInteger.threshold) annotation(
          Line(points = {{-19, -70}, {20, -70}, {20, -58}, {69, -58}}, color = {255, 127, 0}));
        connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
          Line(points = {{4.4, 70}, {39, 70}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_3.y, timePeriod.u2) annotation(
          Line(points = {{4.4, 62}, {39, 62}}, color = {162, 29, 33}));
        connect(booleanPulse2.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-59, 60}, {-40, 60}, {-40, 70}, {-4.4, 70}}, color = {217, 67, 180}));
        connect(booleanPulse2.y, not1.u) annotation(
          Line(points = {{-59, 60}, {-40, 60}, {-40, 62}, {-24.8, 62}}, color = {217, 67, 180}));
        connect(not1.y, booleanToBoolean4_3.u) annotation(
          Line(points = {{-15.6, 62}, {-4.4, 62}}, color = {255, 0, 255}));
        connect(eventPeriodic.y, showEvent.u) annotation(
          Line(points = {{-59, -50}, {-40, -50}, {-40, -30}, {-24.4, -30}}, color = {217, 67, 180}));
        connect(eventPeriodic.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-59, -50}, {35.6, -50}}, color = {217, 67, 180}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 20));
      end TimePeriods;

      model Before
        import CRML;
        CRML.Blocks.Events.EventPeriodic start(startTime = 2, period = 11) annotation(
          Placement(transformation(extent = {{-100, 60}, {-80, 80}})));
        CRML.Blocks.Events.ShowEvent showEventStart annotation(
          Placement(transformation(extent = {{-54, 86}, {-46, 94}})));
        CRML.Blocks.Events.Before after annotation(
          Placement(transformation(extent = {{-10, 20}, {10, 40}})));
        CRML.Blocks.Events.EventPeriodic eventPeriodic1(startTime = 1) annotation(
          Placement(transformation(extent = {{-100, -20}, {-80, 0}})));
        CRML.Blocks.Events.ShowEvent showEvent annotation(
          Placement(transformation(extent = {{-54, -34}, {-46, -26}})));
        CRML.Blocks.Events.Before before annotation(
          Placement(transformation(extent = {{-10, -60}, {10, -40}})));
        CRML.Blocks.Events.EventPeriodic finish(period = 11, startTime = 10) annotation(
          Placement(transformation(extent = {{-100, -100}, {-80, -80}})));
        CRML.Blocks.Events.ShowEvent showEventFinish annotation(
          Placement(transformation(extent = {{-12, -94}, {-4, -86}})));
        Modelica.Blocks.Logical.And and1 annotation(
          Placement(transformation(extent = {{26, -6}, {34, 2}})));
        CRML.Blocks.Events.ShowEvent showEventReset annotation(
          Placement(transformation(extent = {{28, -74}, {36, -66}})));
        CRML.Blocks.Events.EventFilter eventFilter annotation(
          Placement(transformation(extent = {{40, -20}, {60, 0}})));
        CRML.Blocks.Events.ShowEvent showEventFilter annotation(
          Placement(transformation(extent = {{76, -44}, {84, -36}})));
        CRML.Blocks.Events.EventCounter eventCounter annotation(
          Placement(transformation(extent = {{80, -20}, {100, 0}})));
        CRML.ETL.TimeLocators.Periods timePeriod(leftBoundaryIncluded = true, rightBoundaryIncluded = false) annotation(
          Placement(transformation(extent = {{40, 70}, {60, 90}})));
        CRML.ETL.TimeLocators.Attributes.IsLeftBoundaryIncluded isLeftBoundaryIncluded annotation(
          Placement(transformation(extent = {{-54, 26}, {-46, 34}})));
        Modelica.Blocks.Logical.Not not1 annotation(
          Placement(transformation(extent = {{-34, 26}, {-26, 34}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{6, 76}, {14, 84}})));
        CRML.Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{6, 68}, {14, 76}})));
        CRML.ETL.TimeLocators.Attributes.IsRightBoundaryIncluded isRightBoundaryIncluded annotation(
          Placement(transformation(extent = {{-54, -54}, {-46, -46}})));
        Modelica.Blocks.Logical.Not not2 annotation(
          Placement(transformation(extent = {{-34, -54}, {-26, -46}})));
        CRML.ETL.TimeLocators.Attributes.PeriodStart periodStart annotation(
          Placement(transformation(extent = {{-84, 34}, {-76, 42}})));
        CRML.ETL.TimeLocators.Attributes.PeriodEnd periodEnd annotation(
          Placement(transformation(extent = {{-84, -62}, {-76, -54}})));
      equation
        connect(start.y, showEventStart.u) annotation(
          Line(points = {{-79, 70}, {-60, 70}, {-60, 90}, {-54.4, 90}}, color = {217, 67, 180}));
        connect(eventPeriodic1.y, showEvent.u) annotation(
          Line(points = {{-79, -10}, {-70, -10}, {-70, -30}, {-54.4, -30}}, color = {217, 67, 180}));
        connect(eventPeriodic1.y, after.u2) annotation(
          Line(points = {{-79, -10}, {-20, -10}, {-20, 22}, {-11, 22}}, color = {217, 67, 180}));
        connect(start.y, after.reset) annotation(
          Line(points = {{-79, 70}, {-40, 70}, {-40, 10}, {0, 10}, {0, 19}}, color = {217, 67, 180}));
        connect(eventPeriodic1.y, before.u1) annotation(
          Line(points = {{-79, -10}, {-20, -10}, {-20, -42}, {-11, -42}}, color = {217, 67, 180}));
        connect(finish.y, showEventFinish.u) annotation(
          Line(points = {{-79, -90}, {-12.4, -90}}, color = {217, 67, 180}));
        connect(after.y, and1.u1) annotation(
          Line(points = {{11, 30}, {20, 30}, {20, -2}, {25.2, -2}}, color = {217, 67, 180}));
        connect(before.y, and1.u2) annotation(
          Line(points = {{11, -50}, {20, -50}, {20, -5.2}, {25.2, -5.2}}, color = {217, 67, 180}));
        connect(start.y, before.reset) annotation(
          Line(points = {{-79, 70}, {-40, 70}, {-40, -70}, {0, -70}, {0, -61}}, color = {217, 67, 180}));
        connect(start.y, showEventReset.u) annotation(
          Line(points = {{-79, 70}, {-40, 70}, {-40, -70}, {27.6, -70}}, color = {217, 67, 180}));
        connect(and1.y, eventFilter.cond) annotation(
          Line(points = {{34.4, -2}, {39, -2}}, color = {255, 0, 255}));
        connect(eventPeriodic1.y, eventFilter.u) annotation(
          Line(points = {{-79, -10}, {39, -10}}, color = {217, 67, 180}));
        connect(eventFilter.y, showEventFilter.u) annotation(
          Line(points = {{61, -10}, {68, -10}, {68, -40}, {75.6, -40}}, color = {217, 67, 180}));
        connect(eventFilter.y, eventCounter.u) annotation(
          Line(points = {{61, -10}, {79, -10}}, color = {217, 67, 180}));
        connect(start.y, eventCounter.reset) annotation(
          Line(points = {{-79, 70}, {-40, 70}, {-40, -80}, {90, -80}, {90, -21}}, color = {217, 67, 180}));
        connect(timePeriod.y[1], isLeftBoundaryIncluded.tl) annotation(
          Line(points = {{50, 70}, {50, 50}, {-50, 50}, {-50, 34}}, color = {0, 0, 255}));
        connect(start.y, booleanToBoolean4_1.u) annotation(
          Line(points = {{-79, 70}, {-40, 70}, {-40, 80}, {5.6, 80}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_1.y, timePeriod.u1) annotation(
          Line(points = {{14.4, 80}, {39, 80}}, color = {162, 29, 33}));
        connect(finish.y, booleanToBoolean4_2.u) annotation(
          Line(points = {{-79, -90}, {-60, -90}, {-60, 60}, {0, 60}, {0, 72}, {5.6, 72}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, timePeriod.u2) annotation(
          Line(points = {{14.4, 72}, {39, 72}}, color = {162, 29, 33}));
        connect(isLeftBoundaryIncluded.y, not1.u) annotation(
          Line(points = {{-45.6, 30}, {-34.8, 30}}, color = {217, 67, 180}));
        connect(not1.y, after.strictlyBefore) annotation(
          Line(points = {{-25.6, 30}, {-11, 30}}, color = {255, 0, 255}));
        connect(isRightBoundaryIncluded.y, not2.u) annotation(
          Line(points = {{-45.6, -50}, {-34.8, -50}}, color = {217, 67, 180}));
        connect(not2.y, before.strictlyBefore) annotation(
          Line(points = {{-25.6, -50}, {-11, -50}}, color = {255, 0, 255}));
        connect(timePeriod.y[1], isRightBoundaryIncluded.tl) annotation(
          Line(points = {{50, 70}, {50, 50}, {-66, 50}, {-66, -40}, {-50, -40}, {-50, -46}}, color = {0, 0, 255}));
        connect(timePeriod.y[1], periodStart.tl) annotation(
          Line(points = {{50, 70}, {50, 50}, {-80, 50}, {-80, 42}}, color = {0, 0, 255}));
        connect(periodStart.y, after.u1) annotation(
          Line(points = {{-75.6, 38}, {-11, 38}}, color = {217, 67, 180}));
        connect(timePeriod.y[1], periodEnd.tl) annotation(
          Line(points = {{50, 70}, {50, 50}, {-66, 50}, {-66, -40}, {-80, -40}, {-80, -54}}, color = {0, 0, 255}));
        connect(periodEnd.y, before.u2) annotation(
          Line(points = {{-75.6, -58}, {-11, -58}}, color = {217, 67, 180}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
          Diagram(coordinateSystem(preserveAspectRatio = false)),
          experiment(StopTime = 22));
      end Before;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Polygon(origin = {8.0, 14.0}, lineColor = {78, 138, 73}, fillColor = {78, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-58.0, 46.0}, {42.0, -14.0}, {-58.0, -74.0}, {-58.0, 46.0}})}));
    end Tests;
    annotation(
      Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Text(extent = {{-42, 38}, {44, -30}}, lineColor = {0, 0, 0}, fontName = "Symbol", textString = ""), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0)}));
  end ETL;

  package Examples
    package TrafficLight
      model Verif
        Spec spec annotation(
          Placement(transformation(extent = {{-92, 26}, {-130, 54}})));
        Modelica.Blocks.Sources.RealExpression greenObserver(y = phys.greenLamp.i) annotation(
          Placement(transformation(extent = {{56, 10}, {30, 30}})));
        Modelica.Blocks.Logical.GreaterEqualThreshold oGreen(threshold = 9) annotation(
          Placement(transformation(extent = {{12, 16}, {4, 24}})));
        Modelica.Blocks.Sources.RealExpression yellowObservor(y = phys.yellowLamp.i) annotation(
          Placement(transformation(extent = {{56, 30}, {30, 50}})));
        Modelica.Blocks.Logical.GreaterEqualThreshold oYellow(threshold = 9) annotation(
          Placement(transformation(extent = {{12, 36}, {4, 44}})));
        Modelica.Blocks.Sources.RealExpression redObserver(y = phys.redLamp.i) annotation(
          Placement(transformation(extent = {{56, 50}, {30, 70}})));
        Log2 log annotation(
          Placement(transformation(extent = {{148, 30}, {128, 50}})));
        Modelica.Blocks.Logical.GreaterEqualThreshold oRed(threshold = 9) annotation(
          Placement(transformation(extent = {{12, 56}, {4, 64}})));
        Phys1 phys annotation(
          Placement(transformation(extent = {{108, 30}, {88, 50}})));
        Modelica.Blocks.Sources.BooleanExpression green_active(y = oGreen.y) annotation(
          Placement(transformation(extent = {{-30, 10}, {-50, 30}})));
        Modelica.Blocks.Sources.BooleanExpression yellow_active(y = oYellow.y) annotation(
          Placement(transformation(extent = {{-30, 30}, {-50, 50}})));
        Modelica.Blocks.Sources.BooleanExpression red_active(y = oRed.y) annotation(
          Placement(transformation(extent = {{-30, 50}, {-50, 70}})));
      equation
        connect(spec.green, green_active.y) annotation(
          Line(points = {{-90.5385, 28.8}, {-80, 28.8}, {-80, 20}, {-51, 20}}, color = {217, 67, 180}));
        connect(spec.yellow, yellow_active.y) annotation(
          Line(points = {{-90.5385, 40}, {-51, 40}}, color = {217, 67, 180}));
        connect(spec.red, red_active.y) annotation(
          Line(points = {{-90.5385, 51.2}, {-80, 51.2}, {-80, 60}, {-51, 60}}, color = {217, 67, 180}));
        connect(greenObserver.y, oGreen.u) annotation(
          Line(points = {{28.7, 20}, {12.8, 20}}, color = {0, 0, 127}));
        connect(yellowObservor.y, oYellow.u) annotation(
          Line(points = {{28.7, 40}, {12.8, 40}}, color = {0, 0, 127}));
        connect(redObserver.y, oRed.u) annotation(
          Line(points = {{28.7, 60}, {12.8, 60}}, color = {0, 0, 127}));
        connect(phys.green, log.y_green) annotation(
          Line(points = {{109, 32}, {114, 32}, {114, 32}, {118, 32}, {118, 32}, {127, 32}}, color = {217, 67, 180}));
        connect(phys.yellow, log.y_yellow) annotation(
          Line(points = {{109, 40}, {127, 40}}, color = {217, 67, 180}));
        connect(phys.red, log.y_red) annotation(
          Line(points = {{109, 48}, {114, 48}, {114, 48}, {118, 48}, {118, 48}, {127, 48}}, color = {217, 67, 180}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-160, -40}, {180, 100}}), graphics = {Rectangle(extent = {{-160, 100}, {180, -40}}, lineColor = {28, 108, 200}), Line(points = {{-40, 28}, {0, -30}, {62, 96}}, color = {0, 127, 0}, smooth = Smooth.None, thickness = 1)}),
          Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-160, -40}, {180, 100}}), graphics = {Rectangle(extent = {{-150, 90}, {172, -30}}, lineColor = {28, 108, 200}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Rectangle(extent = {{80, 80}, {158, 0}}, lineColor = {28, 108, 200}, fillColor = {170, 255, 213}, fillPattern = FillPattern.Solid), Text(extent = {{84, 14}, {156, 4}}, lineColor = {28, 108, 200}, textString = "Behavioral model"), Rectangle(extent = {{-4, 80}, {60, 0}}, lineColor = {28, 108, 200}, fillColor = {170, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-10, 12}, {64, 4}}, lineColor = {28, 108, 200}, textString = "Observation model"), Text(extent = {{116, 64}, {156, 56}}, lineColor = {28, 108, 200}, fillColor = {255, 213, 170}, fillPattern = FillPattern.Solid, textString = "I&C"), Text(extent = {{80, 64}, {120, 56}}, lineColor = {28, 108, 200}, fillColor = {255, 213, 170}, fillPattern = FillPattern.Solid, textString = "Physical"), Rectangle(extent = {{-54, 80}, {-26, 0}}, lineColor = {28, 108, 200}, fillColor = {255, 213, 170}, fillPattern = FillPattern.Solid), Text(extent = {{-76, 12}, {-4, 4}}, lineColor = {28, 108, 200}, textString = "Bindings"), Rectangle(extent = {{-140, 80}, {-72, 0}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 170}, fillPattern = FillPattern.Solid), Text(extent = {{-142, 12}, {-68, 4}}, lineColor = {28, 108, 200}, textString = "Requirements model"), Text(extent = {{-66, -8}, {78, -26}}, lineColor = {28, 108, 200}, fillColor = {255, 170, 255}, fillPattern = FillPattern.Solid, textString = "Verification model")}),
          experiment(StopTime = 100));
      end Verif;

      model Spec
        TimeLocators.Continuous.AfterBefore afterBefore annotation(
          Placement(transformation(extent = {{-40, 64}, {-20, 84}})));
        Requirements.CheckCountEqual checkInPCount(threshold = 0) annotation(
          Placement(transformation(extent = {{-40, 24}, {-20, 44}})));
        TimeLocators.Continuous.AfterFor afterFor annotation(
          Placement(transformation(extent = {{-40, -40}, {-20, -20}})));
        Blocks.Math.Constant const(k = 30) annotation(
          Placement(transformation(extent = {{-80, -60}, {-60, -40}})));
        Requirements.Ensure checkBoolean annotation(
          Placement(transformation(extent = {{-40, -80}, {-20, -60}})));
        TimeLocators.Continuous.AfterFor When annotation(
          Placement(transformation(extent = {{100, 70}, {120, 90}})));
        Blocks.Math.Constant const1(k = 0.2) annotation(
          Placement(transformation(extent = {{20, 14}, {40, 34}})));
        Requirements.CheckAtEnd checkInPCount1 annotation(
          Placement(transformation(extent = {{100, 0}, {120, 20}})));
        Blocks.Math.Constant const2(k = 30) annotation(
          Placement(transformation(extent = {{22, 50}, {42, 70}})));
        ETL.Connectors.BooleanInput red "External Boolean variable" annotation(
          Placement(transformation(extent = {{-120, 70}, {-100, 90}})));
        ETL.Connectors.BooleanInput green annotation(
          Placement(transformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.BooleanInput yellow "Boolean condition" annotation(
          Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
        Blocks.Logical4.ShowBoolean4 req1 annotation(
          Placement(transformation(extent = {{-8, 20}, {14, 48}})));
        Blocks.Logical4.ShowBoolean4 req2 annotation(
          Placement(transformation(extent = {{-10, -82}, {14, -58}})));
        Blocks.Logical4.ShowBoolean4 req3 annotation(
          Placement(transformation(extent = {{140, -2}, {162, 22}})));
        Blocks.Logical4.And4 and4_1 annotation(
          Placement(transformation(extent = {{20, -58}, {40, -38}})));
        Blocks.Logical4.And4 and4_2 annotation(
          Placement(transformation(extent = {{112, -50}, {132, -30}})));
        Blocks.Logical4.ShowBoolean4 req annotation(
          Placement(transformation(extent = {{138, -52}, {160, -28}})));
        Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
          Placement(transformation(extent = {{-84, 76}, {-76, 84}})));
        Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
          Placement(transformation(extent = {{-84, 62}, {-76, 70}})));
        Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
          Placement(transformation(extent = {{-84, -84}, {-76, -76}})));
        Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
          Placement(transformation(extent = {{-84, -4}, {-76, 4}})));
        Blocks.Events.EventDelay booleanDelay annotation(
          Placement(transformation(extent = {{58, 70}, {78, 90}})));
        Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_5 annotation(
          Placement(transformation(extent = {{84, 76}, {92, 84}})));
        Blocks.Events.Event4ToEvent event4ToEvent annotation(
          Placement(transformation(extent = {{42, 76}, {50, 84}})));
      equation
        connect(afterBefore.y, checkInPCount.tl) annotation(
          Line(points = {{-30, 64}, {-30, 44}}, color = {0, 0, 255}));
        connect(const.y, afterFor.duration) annotation(
          Line(points = {{-59, -50}, {-50, -50}, {-50, -38}, {-41, -38}}, color = {0, 0, 0}));
        connect(afterFor.y, checkBoolean.tl) annotation(
          Line(points = {{-30, -40}, {-30, -60}}, color = {0, 0, 255}));
        connect(const1.y, When.duration) annotation(
          Line(points = {{41, 24}, {90, 24}, {90, 72}, {99, 72}}, color = {0, 0, 0}));
        connect(checkInPCount.y, req1.u) annotation(
          Line(points = {{-19, 34}, {-8.55, 34}}, color = {162, 29, 33}));
        connect(checkBoolean.y, req2.u) annotation(
          Line(points = {{-19, -70}, {-10.6, -70}}, color = {162, 29, 33}));
        connect(checkBoolean.y, and4_1.u2) annotation(
          Line(points = {{-19, -70}, {-16, -70}, {-16, -56}, {19, -56}}, color = {162, 29, 33}));
        connect(checkInPCount.y, and4_1.u1) annotation(
          Line(points = {{-19, 34}, {-16, 34}, {-16, -40}, {19, -40}}, color = {162, 29, 33}));
        connect(and4_2.y, req.u) annotation(
          Line(points = {{133, -40}, {137.45, -40}}, color = {162, 29, 33}));
        connect(and4_1.y, and4_2.u2) annotation(
          Line(points = {{41, -48}, {111, -48}}, color = {162, 29, 33}));
        connect(checkInPCount.u, booleanToBoolean4_1.y) annotation(
          Line(points = {{-41, 34}, {-72, 34}, {-72, 80}, {-75.6, 80}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_1.u, red) annotation(
          Line(points = {{-84.4, 80}, {-110, 80}}, color = {217, 67, 180}));
        connect(yellow, booleanToBoolean4_2.u) annotation(
          Line(points = {{-110, 0}, {-94, 0}, {-94, 66}, {-84.4, 66}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_2.y, afterBefore.u2) annotation(
          Line(points = {{-75.6, 66}, {-41, 66}}, color = {162, 29, 33}));
        connect(green, booleanToBoolean4_3.u) annotation(
          Line(points = {{-110, -80}, {-84.4, -80}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_3.y, checkBoolean.u) annotation(
          Line(points = {{-75.6, -80}, {-52, -80}, {-52, -70}, {-41, -70}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_3.y, afterFor.u) annotation(
          Line(points = {{-75.6, -80}, {-52, -80}, {-52, -30}, {-41, -30}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_3.y, afterBefore.u1) annotation(
          Line(points = {{-75.6, -80}, {-52, -80}, {-52, 74}, {-41, 74}}, color = {162, 29, 33}));
        connect(checkInPCount1.u, booleanToBoolean4_4.y) annotation(
          Line(points = {{99, 10}, {90, 10}, {90, 0}, {-75.6, 0}}, color = {162, 29, 33}));
        connect(booleanToBoolean4_4.u, yellow) annotation(
          Line(points = {{-84.4, 0}, {-110, 0}}, color = {217, 67, 180}));
        connect(When.y, checkInPCount1.tl) annotation(
          Line(points = {{110, 70}, {110, 20}}, color = {0, 0, 255}));
        connect(const2.y, booleanDelay.delay) annotation(
          Line(points = {{43, 60}, {50, 60}, {50, 72}, {57, 72}}, color = {0, 0, 0}));
        connect(checkInPCount1.y, req3.u) annotation(
          Line(points = {{121, 10}, {139.45, 10}}, color = {162, 29, 33}));
        connect(checkInPCount1.y, and4_2.u1) annotation(
          Line(points = {{121, 10}, {128, 10}, {128, -22}, {98, -22}, {98, -32}, {111, -32}}, color = {162, 29, 33}));
        connect(booleanDelay.y, booleanToBoolean4_5.u) annotation(
          Line(points = {{79, 80}, {83.6, 80}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_5.y, When.u) annotation(
          Line(points = {{92.4, 80}, {99, 80}}, color = {162, 29, 33}));
        connect(event4ToEvent.y, booleanDelay.u) annotation(
          Line(points = {{50.4, 80}, {57, 80}}, color = {217, 67, 180}));
        connect(booleanToBoolean4_3.y, event4ToEvent.u) annotation(
          Line(points = {{-75.6, -80}, {-52, -80}, {-52, 88}, {28, 88}, {28, 80}, {41.6, 80}}, color = {162, 29, 33}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {160, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {215, 215, 215}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, 98}, {20, 58}}, lineColor = {238, 46, 47}, fillColor = {238, 46, 47}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, 18}, {20, -20}}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, -60}, {20, -98}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Text(extent = {{-92, 126}, {90, 108}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.None, textString = "%name")}),
          Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {160, 100}}), graphics = {Rectangle(extent = {{-86, -16}, {-14, -94}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 170}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-86, 96}, {-14, -10}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 170}, fillPattern = FillPattern.Solid), Text(extent = {{-72, -2}, {-30, -6}}, lineColor = {28, 108, 200}, textString = "After green, next step is yellow"), Text(extent = {{-82, -82}, {-16, -94}}, lineColor = {28, 108, 200}, textString = "Step green should stay active for at least 30 seconds"), Rectangle(extent = {{16, 96}, {134, -16}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 170}, fillPattern = FillPattern.Solid), Text(extent = {{24, -4}, {76, -8}}, lineColor = {28, 108, 200}, textString = "After green becomes active + 30 seconds,"), Text(extent = {{25, -8}, {81, -14}}, lineColor = {28, 108, 200}, textString = "next step should turn yellow within 0.2 seconds"), Text(extent = {{-126, 100}, {-96, 92}}, lineColor = {28, 108, 200}, textString = "red"), Text(extent = {{-126, -58}, {-96, -66}}, lineColor = {28, 108, 200}, textString = "green"), Text(extent = {{-126, 22}, {-96, 14}}, lineColor = {28, 108, 200}, textString = "yellow"), Text(extent = {{-84, 96}, {-58, 86}}, lineColor = {28, 108, 200}, textString = "req1"), Text(extent = {{28, 96}, {54, 86}}, lineColor = {28, 108, 200}, textString = "req3"), Text(extent = {{-84, -18}, {-58, -28}}, lineColor = {28, 108, 200}, textString = "req2")}),
          experiment(StopTime = 100));
      end Spec;

      model Log1
        block Red
          annotation(
            Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Text(origin = {-4, 0}, extent = {{-100, 100}, {100, -100}}, textString = "%name"), Rectangle(lineColor = {0, 0, 0}, borderPattern = BorderPattern.Raised, extent = {{-100, 100}, {100, -100}}, radius = 25)}),
            Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Text(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, textString = "%stateName", fontSize = 10)}),
            showDiagram = true,
            singleInstance = true);
        end Red;

        block Yellow
          annotation(
            Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Text(extent = {{-100, 100}, {100, -100}}, textString = "%name"), Rectangle(lineColor = {0, 0, 0}, borderPattern = BorderPattern.Raised, extent = {{-100, 100}, {100, -100}}, radius = 25)}),
            Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Text(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, textString = "%stateName", fontSize = 10)}),
            showDiagram = true,
            singleInstance = true);
        end Yellow;

        block Green
          annotation(
            Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Text(extent = {{-100, 100}, {100, -100}}, textString = "%name"), Rectangle(lineColor = {0, 0, 0}, borderPattern = BorderPattern.Raised, extent = {{-100, 100}, {100, -100}}, radius = 25)}),
            Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Text(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, textString = "%stateName", fontSize = 10)}),
            showDiagram = true,
            singleInstance = true);
        end Green;

        Green green annotation(
          Placement(transformation(origin = {20, -136}, extent = {{-70, 50}, {-50, 70}})));
        Yellow yellow annotation(
          Placement(transformation(origin = {2, -62}, extent = {{-12, 50}, {12, 70}})));
        Red red annotation(
          Placement(transformation(origin = {-94, 14}, extent = {{50, 50}, {70, 70}})));
        Modelica.Blocks.Sources.BooleanExpression green_active(y = hold(activeState(green))) annotation(
          Placement(transformation(extent = {{40, -90}, {80, -70}})));
        Modelica.Blocks.Sources.BooleanExpression yellow_active(y = hold(activeState(yellow))) annotation(
          Placement(transformation(extent = {{40, -10}, {80, 10}})));
        Modelica.Blocks.Sources.BooleanExpression red_active(y = hold(activeState(red))) annotation(
          Placement(transformation(extent = {{40, 70}, {80, 90}})));
        Modelica.Blocks.Interfaces.BooleanOutput y_green "Value of Boolean output" annotation(
          Placement(transformation(extent = {{100, -90}, {120, -70}})));
        Modelica.Blocks.Interfaces.BooleanOutput y_yellow "Value of Boolean output" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        Modelica.Blocks.Interfaces.BooleanOutput y_red "Value of Boolean output" annotation(
          Placement(transformation(extent = {{100, 70}, {120, 90}})));
      equation
        transition(green, yellow, timeInState() > 30, immediate = false, reset = true, synchronize = false, priority = 1) annotation(
          Line(points = {{-48, 60}, {-14, 60}}, color = {0, 0, 0}, thickness = 0.25, smooth = Smooth.Bezier),
          Text(string = "%condition", extent = {{-4, 4}, {-4, 10}}, fontSize = 10, textStyle = {TextStyle.Bold}, horizontalAlignment = TextAlignment.Right));
        transition(yellow, red, timeInState() > 4, immediate = false, reset = true, synchronize = false, priority = 1) annotation(
          Line(points = {{14, 60}, {48, 60}}, color = {0, 0, 0}, thickness = 0.25, smooth = Smooth.Bezier),
          Text(textString = "%condition", extent = {{-4, 4}, {-4, 10}}, fontSize = 10, textStyle = {TextStyle.Bold}, horizontalAlignment = TextAlignment.Right));
        transition(red, green, timeInState() > 30, immediate = false, reset = true, synchronize = false, priority = 1) annotation(
          Line(points = {{60, 48}, {60, 34}, {60, 20}, {-60, 20}, {-60, 48}}, color = {0, 0, 0}, thickness = 0.25, smooth = Smooth.Bezier),
          Text(textString = "%condition", extent = {{4, -4}, {4, -10}}, fontSize = 10, textStyle = {TextStyle.Bold}, horizontalAlignment = TextAlignment.Left));
        connect(green_active.y, y_green) annotation(
          Line(points = {{82, -80}, {110, -80}}, color = {255, 0, 255}));
        connect(yellow_active.y, y_yellow) annotation(
          Line(points = {{82, 0}, {110, 0}}, color = {255, 0, 255}));
        connect(red_active.y, y_red) annotation(
          Line(points = {{82, 80}, {110, 80}}, color = {255, 0, 255}));
        transition(red, green, false, immediate = false, reset = true, synchronize = false, priority = 1) annotation(
          Line(points = {{-44, 67}, {-71, 35}, {-43, -66}}, smooth = Smooth.Bezier),
          Text(extent = {{4, -4}, {4, -10}}, textString = "%condition", fontSize = 10, textStyle = {TextStyle.Bold}, horizontalAlignment = TextAlignment.Left));
        initialState(green) annotation(
          Line(points = {{-50, -78}, {-65, -84}, {-78, -62}}, smooth = Smooth.Bezier));
        transition(green, yellow, false, immediate = false, reset = true, synchronize = false, priority = 1) annotation(
          Line(points = {{-40, -66}, {-22, -66}, {-22, -2}, {-10, -2}}, smooth = Smooth.Bezier),
          Text(extent = {{-4, 4}, {-4, 10}}, textString = "%condition", fontSize = 10, textStyle = {TextStyle.Bold}, horizontalAlignment = TextAlignment.Right));
        transition(yellow, red, false, immediate = false, reset = true, synchronize = false, priority = 1) annotation(
          Line(points = {{14, -2}, {31, -2}, {31, 74}, {-24, 74}}, smooth = Smooth.Bezier),
          Text(extent = {{-4, 4}, {-4, 10}}, textString = "%condition", fontSize = 10, textStyle = {TextStyle.Bold}, horizontalAlignment = TextAlignment.Right));
        annotation(
          Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, 98}, {20, 58}}, lineColor = {238, 46, 47}, fillColor = {238, 46, 47}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, 18}, {20, -20}}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, -60}, {20, -98}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Text(extent = {{-92, 126}, {90, 108}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.None, textString = "%name")}),
          Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})),
          experiment(StopTime = 100, __Dymola_Algorithm = "Dassl"));
      end Log1;

      model Log2
        Modelica.StateGraph.StepWithSignal green(nIn = 2, nOut = 1) annotation(
          Placement(transformation(extent = {{-70, 20}, {-50, 40}})));
        Modelica.StateGraph.TransitionWithSignal T1 annotation(
          Placement(transformation(extent = {{-30, 20}, {-10, 40}})));
        Modelica.StateGraph.StepWithSignal yellow(nOut = 1, nIn = 1) annotation(
          Placement(transformation(extent = {{10, 20}, {30, 40}})));
        Modelica.StateGraph.StepWithSignal red(nOut = 1, nIn = 1) annotation(
          Placement(transformation(extent = {{30, -40}, {10, -20}})));
        Modelica.StateGraph.TransitionWithSignal T3 annotation(
          Placement(transformation(extent = {{-10, -40}, {-30, -20}})));
        Modelica.Blocks.Logical.Timer timer2 annotation(
          Placement(transformation(extent = {{26, -4}, {34, 4}})));
        Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqual2(threshold = 4) annotation(
          Placement(transformation(extent = {{46, -4}, {54, 4}})));
        Modelica.StateGraph.TransitionWithSignal T2 annotation(
          Placement(transformation(extent = {{50, 20}, {70, 40}})));
        Modelica.Blocks.Logical.Timer timer1 annotation(
          Placement(transformation(extent = {{-54, -4}, {-46, 4}})));
        Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqual1(threshold = 30) annotation(
          Placement(transformation(extent = {{-34, -4}, {-26, 4}})));
        Modelica.Blocks.Logical.Timer timer3 annotation(
          Placement(transformation(extent = {{14, -64}, {6, -56}})));
        Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqual3(threshold = 30) annotation(
          Placement(transformation(extent = {{-6, -64}, {-14, -56}})));
        Modelica.Blocks.Sources.BooleanExpression green_active(y = green.active) annotation(
          Placement(transformation(extent = {{60, -90}, {80, -70}})));
        Modelica.Blocks.Sources.BooleanExpression yellow_active(y = yellow.active) annotation(
          Placement(transformation(extent = {{72, -10}, {92, 10}})));
        Modelica.Blocks.Sources.BooleanExpression red_active(y = red.active) annotation(
          Placement(transformation(extent = {{60, 70}, {80, 90}})));
        Modelica.Blocks.Interfaces.BooleanOutput y_green "Value of Boolean output" annotation(
          Placement(transformation(extent = {{100, -90}, {120, -70}})));
        Modelica.Blocks.Interfaces.BooleanOutput y_yellow "Value of Boolean output" annotation(
          Placement(transformation(extent = {{100, -10}, {120, 10}})));
        Modelica.Blocks.Interfaces.BooleanOutput y_red "Value of Boolean output" annotation(
          Placement(transformation(extent = {{100, 70}, {120, 90}})));
        Modelica.StateGraph.InitialStepWithSignal initialStep(nIn = 0, nOut = 1) annotation(
          Placement(transformation(extent = {{-80, 80}, {-60, 100}})));
        Modelica.StateGraph.TransitionWithSignal T0 annotation(
          Placement(transformation(extent = {{-30, 80}, {-10, 100}})));
        Modelica.Blocks.Logical.Timer timer0 annotation(
          Placement(transformation(extent = {{-54, 56}, {-46, 64}})));
        Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqual0(threshold = 1) annotation(
          Placement(transformation(extent = {{-34, 56}, {-26, 64}})));
        inner Modelica.StateGraph.StateGraphRoot stateGraphRoot annotation(
          Placement(transformation(extent = {{-80, -80}, {-60, -60}})));
      equation
        connect(T3.outPort, green.inPort[1]) annotation(
          Line(points = {{-21.5, -30}, {-80, -30}, {-80, 29.75}, {-71, 29.75}}, color = {0, 0, 0}));
        connect(timer2.y, greaterEqual2.u) annotation(
          Line(points = {{34.4, 0}, {45.2, 0}}, color = {0, 0, 127}));
        connect(yellow.active, timer2.u) annotation(
          Line(points = {{20, 19}, {20, 0}, {25.2, 0}}, color = {255, 0, 255}));
        connect(greaterEqual2.y, T2.condition) annotation(
          Line(points = {{54.4, 0}, {60, 0}, {60, 18}}, color = {255, 0, 255}));
        connect(timer1.y, greaterEqual1.u) annotation(
          Line(points = {{-45.6, 0}, {-34.8, 0}}, color = {0, 0, 127}));
        connect(green.active, timer1.u) annotation(
          Line(points = {{-60, 19}, {-60, 0}, {-54.8, 0}}, color = {255, 0, 255}));
        connect(greaterEqual1.y, T1.condition) annotation(
          Line(points = {{-25.6, 0}, {-20, 0}, {-20, 18}}, color = {255, 0, 255}));
        connect(red.active, timer3.u) annotation(
          Line(points = {{20, -41}, {20, -60}, {14.8, -60}}, color = {255, 0, 255}));
        connect(timer3.y, greaterEqual3.u) annotation(
          Line(points = {{5.6, -60}, {-5.2, -60}}, color = {0, 0, 127}));
        connect(greaterEqual3.y, T3.condition) annotation(
          Line(points = {{-14.4, -60}, {-20, -60}, {-20, -42}}, color = {255, 0, 255}));
        connect(green_active.y, y_green) annotation(
          Line(points = {{81, -80}, {110, -80}}, color = {255, 0, 255}));
        connect(yellow_active.y, y_yellow) annotation(
          Line(points = {{93, 0}, {110, 0}}, color = {255, 0, 255}));
        connect(red_active.y, y_red) annotation(
          Line(points = {{81, 80}, {110, 80}}, color = {255, 0, 255}));
        connect(T0.outPort, green.inPort[2]) annotation(
          Line(points = {{-18.5, 90}, {-8, 90}, {-8, 48}, {-80, 48}, {-80, 30.25}, {-71, 30.25}}, color = {0, 0, 0}));
        connect(timer0.y, greaterEqual0.u) annotation(
          Line(points = {{-45.6, 60}, {-34.8, 60}}, color = {0, 0, 127}));
        connect(greaterEqual0.y, T0.condition) annotation(
          Line(points = {{-25.6, 60}, {-20, 60}, {-20, 78}}, color = {255, 0, 255}));
        connect(initialStep.active, timer0.u) annotation(
          Line(points = {{-70, 79}, {-70, 60}, {-54.8, 60}}, color = {255, 0, 255}));
        connect(green.outPort[1], T1.inPort) annotation(
          Line(points = {{-49.5, 30}, {-24, 30}}, color = {0, 0, 0}));
        connect(red.outPort[1], T3.inPort) annotation(
          Line(points = {{9.5, -30}, {-16, -30}}, color = {0, 0, 0}));
        connect(yellow.outPort[1], T2.inPort) annotation(
          Line(points = {{30.5, 30}, {56, 30}}, color = {0, 0, 0}));
        connect(T1.outPort, yellow.inPort[1]) annotation(
          Line(points = {{-18.5, 30}, {9, 30}}, color = {0, 0, 0}));
        connect(T2.outPort, red.inPort[1]) annotation(
          Line(points = {{61.5, 30}, {64, 30}, {64, -30}, {31, -30}}, color = {0, 0, 0}));
        connect(initialStep.outPort[1], T0.inPort) annotation(
          Line(points = {{-59.5, 90}, {-24, 90}}, color = {0, 0, 0}));
        annotation(
          Icon(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, 98}, {20, 58}}, lineColor = {238, 46, 47}, fillColor = {238, 46, 47}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, 18}, {20, -20}}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, -60}, {20, -98}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Text(extent = {{-92, 126}, {90, 108}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.None, textString = "%name")}));
      end Log2;

      model Phys1
        Modelica.Electrical.Analog.Basic.Resistor greenLamp(R = 1) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {-30, 60})));
        Modelica.Electrical.Analog.Basic.Resistor yellowLamp(R = 1) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {10, 60})));
        Modelica.Electrical.Analog.Sources.ConstantVoltage mainPowerVoltage(V = 10) annotation(
          Placement(transformation(extent = {{10, -10}, {-10, 10}}, rotation = 90, origin = {-70, 40})));
        Modelica.Electrical.Analog.Basic.Resistor redLamp(R = 1) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {50, 60})));
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch greenSwitch annotation(
          Placement(transformation(extent = {{10, -10}, {-10, 10}}, rotation = 90, origin = {-30, 20})));
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch yellowSwitch annotation(
          Placement(transformation(extent = {{10, -10}, {-10, 10}}, rotation = 90, origin = {10, 20})));
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch redSwitch annotation(
          Placement(transformation(extent = {{10, -10}, {-10, 10}}, rotation = 90, origin = {50, 20})));
        Modelica.Electrical.Analog.Basic.Resistor R(R = 1) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {80, 40})));
        Modelica.Electrical.Analog.Basic.Ground ground annotation(
          Placement(transformation(extent = {{-80, -30}, {-60, -10}})));
        ETL.Connectors.BooleanInput green annotation(
          Placement(transformation(origin = {12, 68}, extent = {{-120, -90}, {-100, -70}}), iconTransformation(extent = {{-120, -90}, {-100, -70}})));
        ETL.Connectors.BooleanInput yellow "Boolean condition" annotation(
          Placement(transformation(origin = {12, 26}, extent = {{-120, -10}, {-100, 10}}), iconTransformation(extent = {{-120, -10}, {-100, 10}})));
        ETL.Connectors.BooleanInput red "External Boolean variable" annotation(
          Placement(transformation(origin = {12, -2}, extent = {{-120, 70}, {-100, 90}}), iconTransformation(extent = {{-120, 70}, {-100, 90}})));
        Modelica.Blocks.Sources.BooleanExpression greenCom(y = green) annotation(
          Placement(transformation(extent = {{-54, 10}, {-46, 30}})));
        Modelica.Blocks.Sources.BooleanExpression yellowCom(y = yellow) annotation(
          Placement(transformation(extent = {{-14, 10}, {-6, 30}})));
        Modelica.Blocks.Sources.BooleanExpression redCom(y = red) annotation(
          Placement(transformation(extent = {{26, 10}, {34, 30}})));
      equation
        connect(mainPowerVoltage.p, greenLamp.p) annotation(
          Line(points = {{-70, 50}, {-70, 80}, {-30, 80}, {-30, 70}}, color = {0, 0, 255}));
        connect(greenLamp.p, yellowLamp.p) annotation(
          Line(points = {{-30, 70}, {-30, 80}, {10, 80}, {10, 70}}, color = {0, 0, 255}));
        connect(yellowLamp.p, redLamp.p) annotation(
          Line(points = {{10, 70}, {10, 80}, {50, 80}, {50, 70}}, color = {0, 0, 255}));
        connect(redLamp.p, R.p) annotation(
          Line(points = {{50, 70}, {50, 80}, {80, 80}, {80, 50}}, color = {0, 0, 255}));
        connect(R.n, redSwitch.n) annotation(
          Line(points = {{80, 30}, {80, 0}, {50, 0}, {50, 10}}, color = {0, 0, 255}));
        connect(redSwitch.n, yellowSwitch.n) annotation(
          Line(points = {{50, 10}, {50, 0}, {10, 0}, {10, 10}}, color = {0, 0, 255}));
        connect(yellowSwitch.n, greenSwitch.n) annotation(
          Line(points = {{10, 10}, {10, 0}, {-30, 0}, {-30, 10}}, color = {0, 0, 255}));
        connect(greenSwitch.n, mainPowerVoltage.n) annotation(
          Line(points = {{-30, 10}, {-30, 0}, {-70, 0}, {-70, 30}}, color = {0, 0, 255}));
        connect(mainPowerVoltage.n, ground.p) annotation(
          Line(points = {{-70, 30}, {-70, -10}}, color = {0, 0, 255}));
        connect(greenCom.y, greenSwitch.control) annotation(
          Line(points = {{-45.6, 20}, {-42, 20}}, color = {255, 0, 255}));
        connect(yellowCom.y, yellowSwitch.control) annotation(
          Line(points = {{-5.6, 20}, {-2, 20}}, color = {255, 0, 255}));
        connect(redCom.y, redSwitch.control) annotation(
          Line(points = {{34.4, 20}, {38, 20}}, color = {255, 0, 255}));
        connect(greenLamp.n, greenSwitch.p) annotation(
          Line(points = {{-30, 50}, {-30, 30}}, color = {0, 0, 255}));
        connect(yellowLamp.n, yellowSwitch.p) annotation(
          Line(points = {{10, 50}, {10, 30}}, color = {0, 0, 255}));
        connect(redLamp.n, redSwitch.p) annotation(
          Line(points = {{50, 50}, {50, 30}}, color = {0, 0, 255}));
        annotation(
          Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {28, 108, 200}, fillColor = {170, 255, 255}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, 98}, {20, 58}}, lineColor = {238, 46, 47}, fillColor = {238, 46, 47}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, 18}, {20, -20}}, lineColor = {244, 125, 35}, fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid), Ellipse(extent = {{-20, -60}, {20, -98}}, lineColor = {0, 140, 72}, fillColor = {0, 140, 72}, fillPattern = FillPattern.Solid), Text(extent = {{-92, 126}, {90, 108}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.None, textString = "%name")}),
          Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-140, 100}, {100, -40}})));
      end Phys1;
      annotation(
        Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Polygon(origin = {8, 14}, lineColor = {78, 138, 73}, fillColor = {78, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-58.0, 46.0}, {42.0, -14.0}, {-58.0, -74.0}, {-58.0, 46.0}})}));
    end TrafficLight;
    annotation(
      Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Polygon(origin = {8.0, 14.0}, lineColor = {78, 138, 73}, fillColor = {78, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-58.0, 46.0}, {42.0, -14.0}, {-58.0, -74.0}, {-58.0, 46.0}})}));
  end Examples;

  package Tests
    model Pump
      TimeLocators.Continuous.FromFor delayToNominalSpeed annotation(
        Placement(transformation(extent = {{40, -32}, {60, -12}})));
      Requirements.CheckAtEnd Req2 annotation(
        Placement(transformation(extent = {{40, -100}, {60, -80}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
        Placement(transformation(extent = {{6, -26}, {14, -18}})));
      Blocks.Logical.BooleanPulse pulse(width = 40, period = 60) annotation(
        Placement(transformation(extent = {{-100, -10}, {-80, 10}})));
      Blocks.Logical.BooleanPulse plantStarted(width = 200, startTime = 10, period = 230) annotation(
        Placement(transformation(extent = {{-100, 50}, {-80, 70}})));
      TimeLocators.Continuous.FromUntil plantInOperation annotation(
        Placement(transformation(extent = {{40, 50}, {60, 70}})));
      Modelica.Blocks.Logical.Not not2 annotation(
        Placement(transformation(extent = {{-64, 48}, {-56, 56}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
        Placement(transformation(extent = {{16, 56}, {24, 64}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_5 annotation(
        Placement(transformation(extent = {{16, 48}, {24, 56}})));
      Blocks.Math.Ramp pumpSpeed(height = 100, startTime = 2, duration = 30) annotation(
        Placement(transformation(extent = {{-100, -70}, {-80, -50}})));
      Blocks.Math.Constant nominalSpeedLimit(k = 90) annotation(
        Placement(transformation(extent = {{-100, -100}, {-80, -80}})));
      Blocks.Math.GreaterEqual4 greater4_1 annotation(
        Placement(transformation(extent = {{0, -100}, {20, -80}})));
      Blocks.Math.Constant startupDelay(k = 30) annotation(
        Placement(transformation(extent = {{-100, -40}, {-80, -20}})));
      Requirements.CheckCountLowerEqual Req1(threshold = 3) annotation(
        Placement(transformation(extent = {{40, 20}, {60, 40}})));
      Blocks.Logical4.And4 and4_1 annotation(
        Placement(transformation(extent = {{80, -10}, {100, 10}})));
      Modelica.Blocks.Logical.And pumpStarted annotation(
        Placement(transformation(extent = {{-40, -20}, {-20, 0}})));
      TimeLocators.Continuous.While While annotation(
        Placement(transformation(extent = {{40, 80}, {60, 100}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
        Placement(transformation(extent = {{16, 86}, {24, 94}})));
    equation
      connect(delayToNominalSpeed.y, Req2.tl) annotation(
        Line(points = {{50, -32}, {50, -80}}, color = {0, 0, 255}));
      connect(plantStarted.y, not2.u) annotation(
        Line(points = {{-79, 60}, {-70, 60}, {-70, 52}, {-64.8, 52}}, color = {217, 67, 180}));
      connect(plantStarted.y, booleanToBoolean4_4.u) annotation(
        Line(points = {{-79, 60}, {15.6, 60}}, color = {217, 67, 180}));
      connect(booleanToBoolean4_4.y, plantInOperation.u1) annotation(
        Line(points = {{24.4, 60}, {39, 60}}, color = {162, 29, 33}));
      connect(not2.y, booleanToBoolean4_5.u) annotation(
        Line(points = {{-55.6, 52}, {15.6, 52}}, color = {255, 0, 255}));
      connect(pumpSpeed.y, greater4_1.u1) annotation(
        Line(points = {{-79, -60}, {-40, -60}, {-40, -90}, {-1, -90}}, color = {0, 0, 0}));
      connect(nominalSpeedLimit.y, greater4_1.u2) annotation(
        Line(points = {{-79, -90}, {-60, -90}, {-60, -98}, {-1, -98}}, color = {0, 0, 0}));
      connect(greater4_1.y, Req2.u) annotation(
        Line(points = {{21, -90}, {39, -90}}, color = {162, 29, 33}));
      connect(booleanToBoolean4_5.y, plantInOperation.u2) annotation(
        Line(points = {{24.4, 52}, {39, 52}}, color = {162, 29, 33}));
      connect(booleanToBoolean4_2.y, Req1.u) annotation(
        Line(points = {{14.4, -22}, {30, -22}, {30, 30}, {39, 30}}, color = {162, 29, 33}));
      connect(plantInOperation.y, Req1.tl) annotation(
        Line(points = {{50, 50}, {50, 40}}, color = {0, 0, 255}));
      connect(Req1.y, and4_1.u1) annotation(
        Line(points = {{61, 30}, {70, 30}, {70, 8}, {79, 8}}, color = {162, 29, 33}));
      connect(Req2.y, and4_1.u2) annotation(
        Line(points = {{61, -90}, {70, -90}, {70, -8}, {79, -8}}, color = {162, 29, 33}));
      connect(plantStarted.y, pulse.reset) annotation(
        Line(points = {{-79, 60}, {-70, 60}, {-70, -14}, {-90, -14}, {-90, -11}}, color = {217, 67, 180}));
      connect(pulse.y, pumpStarted.u2) annotation(
        Line(points = {{-79, 0}, {-60, 0}, {-60, -18}, {-42, -18}}, color = {217, 67, 180}));
      connect(pumpStarted.y, booleanToBoolean4_2.u) annotation(
        Line(points = {{-19, -10}, {-10, -10}, {-10, -22}, {5.6, -22}}, color = {255, 0, 255}));
      connect(pumpStarted.y, pumpSpeed.reset) annotation(
        Line(points = {{-19, -10}, {-10, -10}, {-10, -74}, {-90, -74}, {-90, -71}}, color = {255, 0, 255}));
      connect(plantStarted.y, pumpStarted.u1) annotation(
        Line(points = {{-79, 60}, {-70, 60}, {-70, 10}, {-48, 10}, {-48, -10}, {-42, -10}}, color = {217, 67, 180}));
      connect(While.y, plantInOperation.tl) annotation(
        Line(points = {{50, 80}, {50, 70}}, color = {0, 0, 255}));
      connect(plantStarted.y, booleanToBoolean4_1.u) annotation(
        Line(points = {{-79, 60}, {-70, 60}, {-70, 90}, {15.6, 90}}, color = {217, 67, 180}));
      connect(booleanToBoolean4_1.y, While.u) annotation(
        Line(points = {{24.4, 90}, {39, 90}}, color = {162, 29, 33}));
      connect(While.y, delayToNominalSpeed.tl) annotation(
        Line(points = {{50, 80}, {50, 74}, {76, 74}, {76, 12}, {50, 12}, {50, -12}}, color = {0, 0, 255}));
      connect(startupDelay.y, delayToNominalSpeed.duration) annotation(
        Line(points = {{-79, -30}, {39, -30}}, color = {0, 0, 0}));
      connect(booleanToBoolean4_2.y, delayToNominalSpeed.u) annotation(
        Line(points = {{14.4, -22}, {39, -22}}, color = {162, 29, 33}));
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        experiment(StopTime = 500));
    end Pump;

    model Pump1 "While system is in operation, pump must not be started more than twice"
      Blocks.Logical.BooleanPulse pumpIsStarted(width = 40, period = 60) annotation(
        Placement(transformation(extent = {{-60, -10}, {-40, 10}})));
      Blocks.Logical.BooleanPulse systemInOperation(width = 200, startTime = 10, period = 230) annotation(
        Placement(transformation(extent = {{-60, 20}, {-40, 40}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
        Placement(transformation(extent = {{-4, 26}, {4, 34}})));
      Requirements.CheckCountLowerEqual checkCountLowerEqual(threshold = 2) annotation(
        Placement(transformation(extent = {{20, -10}, {40, 10}})));
      TimeLocators.Continuous.During during annotation(
        Placement(transformation(extent = {{20, 20}, {40, 40}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
        Placement(transformation(extent = {{-4, -4}, {4, 4}})));
    equation
      connect(systemInOperation.y, booleanToBoolean4_4.u) annotation(
        Line(points = {{-39, 30}, {-4.4, 30}}, color = {217, 67, 180}));
      connect(systemInOperation.y, pumpIsStarted.reset) annotation(
        Line(points = {{-39, 30}, {-28, 30}, {-28, -20}, {-50, -20}, {-50, -11}}, color = {217, 67, 180}));
      connect(during.y, checkCountLowerEqual.tl) annotation(
        Line(points = {{30, 20}, {30, 10}}, color = {0, 0, 255}));
      connect(booleanToBoolean4_4.y, during.u) annotation(
        Line(points = {{4.4, 30}, {19, 30}}, color = {162, 29, 33}));
      connect(pumpIsStarted.y, booleanToBoolean4_1.u) annotation(
        Line(points = {{-39, 0}, {-4.4, 0}}, color = {217, 67, 180}));
      connect(booleanToBoolean4_1.y, checkCountLowerEqual.u) annotation(
        Line(points = {{4.4, 0}, {19, 0}}, color = {162, 29, 33}));
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
        experiment(StopTime = 500));
    end Pump1;

    model Probability1
      parameter Boolean reset = true;
      Blocks.Logical.RandomFailure randomFailure annotation(
        Placement(transformation(extent = {{-60, -30}, {-40, -10}})));
      inner Blocks.Logical.GlobalSeed globalSeed annotation(
        Placement(transformation(extent = {{-60, 0}, {-40, 20}})));
      Blocks.Math.Constant const1(k = 0.3) annotation(
        Placement(transformation(extent = {{-100, -20}, {-80, 0}})));
      Blocks.Math.Constant const2(k = 3) annotation(
        Placement(transformation(extent = {{-100, -50}, {-80, -30}})));
      Blocks.Logical.Heaviside heaviside annotation(
        Placement(transformation(extent = {{-10, -30}, {10, -10}})));
      Blocks.Logical4.Probability unavailability(reset = reset, dirName = "C:/Users/I51238/Documents/Dymola", fileName = "probatest1.csv") annotation(
        Placement(transformation(extent = {{20, 50}, {40, 70}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
        Placement(transformation(extent = {{-24, 56}, {-16, 64}})));
      Blocks.Logical4.Probability unreliability(reset = reset, dirName = "C:/Users/I51238/Documents/Dymola", fileName = "probatest2.csv") annotation(
        Placement(transformation(extent = {{58, -30}, {78, -10}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
        Placement(transformation(extent = {{36, -24}, {44, -16}})));
      Blocks.Events.EventPeriodic eventPeriodic(period = 0.1) annotation(
        Placement(transformation(extent = {{-60, -80}, {-40, -60}})));
    equation
      connect(const1.y, randomFailure.failureRate) annotation(
        Line(points = {{-79, -10}, {-70, -10}, {-70, -20}, {-61, -20}}, color = {0, 0, 0}));
      connect(const2.y, randomFailure.repairRate) annotation(
        Line(points = {{-79, -40}, {-70, -40}, {-70, -28}, {-61, -28}}, color = {0, 0, 0}));
      connect(randomFailure.y, heaviside.u) annotation(
        Line(points = {{-39, -20}, {-11, -20}}, color = {217, 67, 180}));
      connect(randomFailure.y, booleanToBoolean4_1.u) annotation(
        Line(points = {{-39, -20}, {-30, -20}, {-30, 60}, {-24.4, 60}}, color = {217, 67, 180}));
      connect(booleanToBoolean4_3.y, unreliability.u) annotation(
        Line(points = {{44.4, -20}, {57, -20}}, color = {162, 29, 33}));
      connect(heaviside.y, booleanToBoolean4_3.u) annotation(
        Line(points = {{11, -20}, {35.6, -20}}, color = {217, 67, 180}));
      connect(booleanToBoolean4_1.y, unavailability.u) annotation(
        Line(points = {{-15.6, 60}, {19, 60}}, color = {162, 29, 33}));
      connect(eventPeriodic.y, unreliability.event) annotation(
        Line(points = {{-39, -70}, {40, -70}, {40, -28}, {57, -28}}, color = {217, 67, 180}));
      connect(eventPeriodic.y, unavailability.event) annotation(
        Line(points = {{-39, -70}, {-20, -70}, {-20, 52}, {19, 52}}, color = {217, 67, 180}));
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
        Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Text(extent = {{8, 44}, {50, 36}}, lineColor = {0, 0, 0}, pattern = LinePattern.Dash, fillColor = {210, 210, 210}, fillPattern = FillPattern.Solid, textString = "Unavailability"), Text(extent = {{48, -36}, {90, -44}}, lineColor = {0, 0, 0}, pattern = LinePattern.Dash, fillColor = {210, 210, 210}, fillPattern = FillPattern.Solid, textString = "Unreliability")}),
        experiment(StopTime = 22));
    end Probability1;

    model Probability2
      parameter Boolean reset = true;
      Blocks.Logical.RandomFailure randomFailure annotation(
        Placement(transformation(extent = {{-60, -30}, {-40, -10}})));
      inner Blocks.Logical.GlobalSeed globalSeed annotation(
        Placement(transformation(extent = {{-60, 0}, {-40, 20}})));
      Blocks.Math.Constant const1(k = 0.3) annotation(
        Placement(transformation(extent = {{-100, -20}, {-80, 0}})));
      Blocks.Math.Constant const2(k = 3) annotation(
        Placement(transformation(extent = {{-100, -50}, {-80, -30}})));
      Blocks.Logical.Heaviside heaviside annotation(
        Placement(transformation(extent = {{-10, -30}, {10, -10}})));
      Blocks.Logical4.Probability unavailability(reset = reset, fileName = "probatest1.csv", dirName = "C:/Users/I51238/Documents/Dymola") annotation(
        Placement(transformation(extent = {{20, 50}, {40, 70}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
        Placement(transformation(extent = {{-24, 56}, {-16, 64}})));
      TimeLocators.Continuous.During during annotation(
        Placement(transformation(extent = {{-10, 80}, {10, 100}})));
      Blocks.Logical.BooleanPulse booleanPulse(width = 10, period = 100, startTime = 1.5) annotation(
        Placement(transformation(extent = {{-80, 80}, {-60, 100}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
        Placement(transformation(extent = {{-24, 86}, {-16, 94}})));
      Blocks.Logical4.Probability unreliability(reset = reset, fileName = "probatest2.csv", dirName = "C:/Users/I51238/Documents/Dymola") annotation(
        Placement(transformation(extent = {{58, -30}, {78, -10}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_3 annotation(
        Placement(transformation(extent = {{36, -24}, {44, -16}})));
      inner TimeLocators.Continuous.Master master annotation(
        Placement(transformation(extent = {{-60, 40}, {-40, 60}})));
      Blocks.Events.EventPeriodic eventPeriodic(period = 0.1) annotation(
        Placement(transformation(extent = {{-60, -80}, {-40, -60}})));
    equation
      connect(const1.y, randomFailure.failureRate) annotation(
        Line(points = {{-79, -10}, {-70, -10}, {-70, -20}, {-61, -20}}, color = {0, 0, 0}));
      connect(const2.y, randomFailure.repairRate) annotation(
        Line(points = {{-79, -40}, {-70, -40}, {-70, -28}, {-61, -28}}, color = {0, 0, 0}));
      connect(randomFailure.y, heaviside.u) annotation(
        Line(points = {{-39, -20}, {-11, -20}}, color = {217, 67, 180}));
      connect(randomFailure.y, booleanToBoolean4_1.u) annotation(
        Line(points = {{-39, -20}, {-30, -20}, {-30, 60}, {-24.4, 60}}, color = {217, 67, 180}));
      connect(booleanPulse.y, booleanToBoolean4_2.u) annotation(
        Line(points = {{-59, 90}, {-24.4, 90}}, color = {217, 67, 180}));
      connect(booleanToBoolean4_2.y, during.u) annotation(
        Line(points = {{-15.6, 90}, {-11, 90}}, color = {162, 29, 33}));
      connect(booleanToBoolean4_3.y, unreliability.u) annotation(
        Line(points = {{44.4, -20}, {57, -20}}, color = {162, 29, 33}));
      connect(heaviside.y, booleanToBoolean4_3.u) annotation(
        Line(points = {{11, -20}, {35.6, -20}}, color = {217, 67, 180}));
      connect(eventPeriodic.y, unreliability.event) annotation(
        Line(points = {{-39, -70}, {40, -70}, {40, -28}, {57, -28}}, color = {217, 67, 180}));
      connect(eventPeriodic.y, unavailability.event) annotation(
        Line(points = {{-39, -70}, {-20, -70}, {-20, 52}, {19, 52}}, color = {217, 67, 180}));
      connect(booleanToBoolean4_1.y, unavailability.u) annotation(
        Line(points = {{-15.6, 60}, {19, 60}}, color = {162, 29, 33}));
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
        Diagram(coordinateSystem(preserveAspectRatio = false), graphics = {Text(extent = {{8, 44}, {50, 36}}, lineColor = {0, 0, 0}, pattern = LinePattern.Dash, fillColor = {210, 210, 210}, fillPattern = FillPattern.Solid, textString = "Unavailability"), Text(extent = {{48, -36}, {90, -44}}, lineColor = {0, 0, 0}, pattern = LinePattern.Dash, fillColor = {210, 210, 210}, fillPattern = FillPattern.Solid, textString = "Unreliability")}),
        experiment(StopTime = 22));
    end Probability2;

    model Probability3
      parameter Boolean reset = true;
      Blocks.Logical.RandomFailure randomFailure annotation(
        Placement(transformation(extent = {{-80, 10}, {-60, 30}})));
      inner Blocks.Logical.GlobalSeed globalSeed annotation(
        Placement(transformation(extent = {{-100, 80}, {-80, 100}})));
      Blocks.Math.Constant const1(k = 0.3) annotation(
        Placement(transformation(extent = {{-120, 20}, {-100, 40}})));
      Blocks.Math.Constant const2(k = 3) annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
      Blocks.Logical4.Probability probability(reset = reset, fileName = "probatest1.csv", dirName = "C:/Users/I51238/Documents/Dymola") annotation(
        Placement(transformation(extent = {{160, 20}, {180, 40}})));
      ETL.TimeLocators.Periods timePeriod(rightBoundaryIncluded = false, durationSpecified = true) annotation(
        Placement(transformation(extent = {{40, 80}, {60, 100}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
        Placement(transformation(extent = {{16, 26}, {24, 34}})));
      Requirements.CheckCountLowerEqual checkCount(threshold = 4) annotation(
        Placement(transformation(extent = {{40, 20}, {60, 40}})));
      Blocks.Math.Constant const(k = 4) annotation(
        Placement(transformation(extent = {{-10, 72}, {10, 92}})));
      inner TimeLocators.Continuous.Master master annotation(
        Placement(transformation(extent = {{140, 138}, {160, 158}})));
      Blocks.Math.Greater4 greater4 annotation(
        Placement(transformation(extent = {{100, -60}, {120, -40}})));
      Blocks.Math.Constant const3(k = 0.99) annotation(
        Placement(transformation(extent = {{28, -68}, {48, -48}})));
      TimeLocators.Continuous.During during(rightBoundaryIncluded = false) annotation(
        Placement(transformation(extent = {{100, 140}, {120, 160}})));
      Blocks.Logical.BooleanPulse inOperation(width = 40, period = 50, startTime = 2) annotation(
        Placement(transformation(extent = {{-100, 140}, {-80, 160}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
        Placement(transformation(extent = {{-24, 146}, {-16, 154}})));
      Modelica.Blocks.Logical.Or or1 annotation(
        Placement(transformation(extent = {{-6, 24}, {6, 36}})));
      Requirements.Ensure ensure annotation(
        Placement(transformation(extent = {{100, 20}, {120, 40}})));
      ETL.TimeLocators.While While annotation(
        Placement(transformation(extent = {{40, 120}, {60, 140}})));
      Requirements.CheckAtEnd checkAtEnd annotation(
        Placement(transformation(extent = {{140, -60}, {160, -40}})));
      Modelica.Blocks.Logical.Edge edge1 annotation(
        Placement(transformation(extent = {{4, -4}, {-4, 4}}, rotation = 180, origin = {-30, 40})));
      Modelica.Blocks.Logical.Not not1 annotation(
        Placement(transformation(extent = {{-34, 106}, {-26, 114}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
        Placement(transformation(extent = {{116, -14}, {124, -6}})));
      TimeLocators.Continuous.During during1 annotation(
        Placement(transformation(extent = {{140, -20}, {160, 0}})));
    equation
      connect(const1.y, randomFailure.failureRate) annotation(
        Line(points = {{-99, 30}, {-90, 30}, {-90, 20}, {-81, 20}}, color = {0, 0, 0}));
      connect(const2.y, randomFailure.repairRate) annotation(
        Line(points = {{-99, 0}, {-90, 0}, {-90, 12}, {-81, 12}}, color = {0, 0, 0}));
      connect(booleanToBoolean4_2.y, checkCount.u) annotation(
        Line(points = {{24.4, 30}, {39, 30}}, color = {162, 29, 33}));
      connect(timePeriod.y, checkCount.tl) annotation(
        Line(points = {{50, 80}, {50, 40}}, color = {0, 0, 255}));
      connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
        Line(points = {{24.4, 30}, {30, 30}, {30, 90}, {39, 90}}, color = {162, 29, 33}));
      connect(const.y, timePeriod.continuousDuration) annotation(
        Line(points = {{11, 82}, {39, 82}}, color = {0, 0, 0}));
      connect(probability.y, greater4.u1) annotation(
        Line(points = {{181, 30}, {190, 30}, {190, 10}, {60, 10}, {60, -50}, {99, -50}}, color = {0, 0, 0}));
      connect(const3.y, greater4.u2) annotation(
        Line(points = {{49, -58}, {99, -58}}, color = {0, 0, 0}));
      connect(inOperation.y, booleanToBoolean4_1.u) annotation(
        Line(points = {{-79, 150}, {-24.4, 150}}, color = {217, 67, 180}));
      connect(booleanToBoolean4_1.y, during.u) annotation(
        Line(points = {{-15.6, 150}, {99, 150}}, color = {162, 29, 33}));
      connect(or1.y, booleanToBoolean4_2.u) annotation(
        Line(points = {{6.6, 30}, {15.6, 30}}, color = {255, 0, 255}));
      connect(checkCount.y, ensure.u) annotation(
        Line(points = {{61, 30}, {99, 30}}, color = {162, 29, 33}));
      connect(ensure.y, probability.u) annotation(
        Line(points = {{121, 30}, {159, 30}}, color = {162, 29, 33}));
      connect(during.y, ensure.tl) annotation(
        Line(points = {{110, 140}, {110, 40}}, color = {0, 0, 255}));
      connect(randomFailure.y, or1.u2) annotation(
        Line(points = {{-59, 20}, {-20, 20}, {-20, 25.2}, {-7.2, 25.2}}, color = {217, 67, 180}));
      connect(booleanToBoolean4_1.y, While.u) annotation(
        Line(points = {{-15.6, 150}, {0, 150}, {0, 130}, {39, 130}}, color = {162, 29, 33}));
      connect(While.y, timePeriod.tl) annotation(
        Line(points = {{50, 120}, {50, 100}}, color = {0, 0, 255}));
      connect(greater4.y, checkAtEnd.u) annotation(
        Line(points = {{121, -50}, {139, -50}}, color = {162, 29, 33}));
      connect(edge1.y, or1.u1) annotation(
        Line(points = {{-25.6, 40}, {-20, 40}, {-20, 30}, {-7.2, 30}}, color = {255, 0, 255}));
      connect(inOperation.y, edge1.u) annotation(
        Line(points = {{-79, 150}, {-50, 150}, {-50, 40}, {-34.8, 40}}, color = {217, 67, 180}));
      connect(inOperation.y, not1.u) annotation(
        Line(points = {{-79, 150}, {-50, 150}, {-50, 110}, {-34.8, 110}}, color = {217, 67, 180}));
      connect(inOperation.y, booleanToBoolean4_4.u) annotation(
        Line(points = {{-79, 150}, {-50, 150}, {-50, -10}, {115.6, -10}}, color = {217, 67, 180}));
      connect(not1.y, probability.event) annotation(
        Line(points = {{-25.6, 110}, {140, 110}, {140, 22}, {159, 22}}, color = {255, 0, 255}));
      connect(booleanToBoolean4_4.y, during1.u) annotation(
        Line(points = {{124.4, -10}, {139, -10}}, color = {162, 29, 33}));
      connect(during1.y, checkAtEnd.tl) annotation(
        Line(points = {{150, -20}, {150, -40}}, color = {0, 0, 255}));
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, initialScale = 0.1), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
        Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-120, -100}, {200, 160}}), graphics = {Text(extent = {{-86, -14}, {-44, -22}}, lineColor = {0, 0, 0}, pattern = LinePattern.Dash, fillColor = {210, 210, 210}, fillPattern = FillPattern.Solid, textString = "Unavailability"), Text(extent = {{-22, 70}, {22, 62}}, lineColor = {28, 108, 200}, textString = "1 month"), Text(extent = {{-112, 136}, {-68, 128}}, lineColor = {28, 108, 200}, textString = "10 months"), Text(extent = {{-34, -62}, {134, -112}}, lineColor = {28, 108, 200}, textString = "While the system is in operation, 
there should not be more than 4 pump failures in a sliding time period of one month
 with a probability greater than 99 percent.")}),
        experiment(StopTime = 50));
    end Probability3;

    model Probability4
      parameter Boolean reset = true;
      Blocks.Logical.RandomFailure randomFailure annotation(
        Placement(transformation(extent = {{-80, 10}, {-60, 30}})));
      inner Blocks.Logical.GlobalSeed globalSeed annotation(
        Placement(transformation(extent = {{-100, 80}, {-80, 100}})));
      Blocks.Math.Constant const1(k = 0.3) annotation(
        Placement(transformation(extent = {{-120, 20}, {-100, 40}})));
      Blocks.Math.Constant const2(k = 5.7) annotation(
        Placement(transformation(extent = {{-120, -10}, {-100, 10}})));
      Blocks.Logical4.Probability probability(reset = reset, fileName = "probatest1.csv", dirName = "C:/Users/I51238/Documents/Dymola") annotation(
        Placement(transformation(extent = {{160, 20}, {180, 40}})));
      ETL.TimeLocators.Periods timePeriod(rightBoundaryIncluded = false, durationSpecified = true) annotation(
        Placement(transformation(extent = {{40, 80}, {60, 100}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_2 annotation(
        Placement(transformation(extent = {{16, 26}, {24, 34}})));
      Requirements.CheckDurationLowerEqual checkDuration(threshold = 1) annotation(
        Placement(transformation(extent = {{40, 20}, {60, 40}})));
      Blocks.Math.Constant const(k = 4) annotation(
        Placement(transformation(extent = {{-10, 72}, {10, 92}})));
      inner TimeLocators.Continuous.Master master annotation(
        Placement(transformation(extent = {{140, 138}, {160, 158}})));
      Blocks.Math.Greater4 greater4 annotation(
        Placement(transformation(extent = {{100, -60}, {120, -40}})));
      Blocks.Math.Constant const3(k = 0.7) annotation(
        Placement(transformation(extent = {{28, -68}, {48, -48}})));
      TimeLocators.Continuous.During during(rightBoundaryIncluded = false) annotation(
        Placement(transformation(extent = {{100, 140}, {120, 160}})));
      Blocks.Logical.BooleanPulse inOperation(width = 40, period = 50, startTime = 2) annotation(
        Placement(transformation(extent = {{-100, 140}, {-80, 160}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_1 annotation(
        Placement(transformation(extent = {{-24, 146}, {-16, 154}})));
      Modelica.Blocks.Logical.Or or1 annotation(
        Placement(transformation(extent = {{-6, 24}, {6, 36}})));
      Requirements.Ensure ensure annotation(
        Placement(transformation(extent = {{100, 20}, {120, 40}})));
      ETL.TimeLocators.While While annotation(
        Placement(transformation(extent = {{40, 120}, {60, 140}})));
      Requirements.CheckAtEnd checkAtEnd annotation(
        Placement(transformation(extent = {{140, -60}, {160, -40}})));
      Modelica.Blocks.Logical.Edge edge1 annotation(
        Placement(transformation(extent = {{4, -4}, {-4, 4}}, rotation = 180, origin = {-30, 40})));
      Modelica.Blocks.Logical.Not not1 annotation(
        Placement(transformation(extent = {{-34, 106}, {-26, 114}})));
      Blocks.Logical4.BooleanToBoolean4 booleanToBoolean4_4 annotation(
        Placement(transformation(extent = {{116, -14}, {124, -6}})));
      TimeLocators.Continuous.During during1 annotation(
        Placement(transformation(extent = {{140, -20}, {160, 0}})));
    equation
      connect(const1.y, randomFailure.failureRate) annotation(
        Line(points = {{-99, 30}, {-90, 30}, {-90, 20}, {-81, 20}}, color = {0, 0, 0}));
      connect(const2.y, randomFailure.repairRate) annotation(
        Line(points = {{-99, 0}, {-90, 0}, {-90, 12}, {-81, 12}}, color = {0, 0, 0}));
      connect(booleanToBoolean4_2.y, checkDuration.u) annotation(
        Line(points = {{24.4, 30}, {39, 30}}, color = {162, 29, 33}));
      connect(timePeriod.y, checkDuration.tl) annotation(
        Line(points = {{50, 80}, {50, 40}}, color = {0, 0, 255}));
      connect(booleanToBoolean4_2.y, timePeriod.u1) annotation(
        Line(points = {{24.4, 30}, {30, 30}, {30, 90}, {39, 90}}, color = {162, 29, 33}));
      connect(const.y, timePeriod.continuousDuration) annotation(
        Line(points = {{11, 82}, {39, 82}}, color = {0, 0, 0}));
      connect(probability.y, greater4.u1) annotation(
        Line(points = {{181, 30}, {190, 30}, {190, 10}, {60, 10}, {60, -50}, {99, -50}}, color = {0, 0, 0}));
      connect(const3.y, greater4.u2) annotation(
        Line(points = {{49, -58}, {99, -58}}, color = {0, 0, 0}));
      connect(inOperation.y, booleanToBoolean4_1.u) annotation(
        Line(points = {{-79, 150}, {-24.4, 150}}, color = {217, 67, 180}));
      connect(booleanToBoolean4_1.y, during.u) annotation(
        Line(points = {{-15.6, 150}, {99, 150}}, color = {162, 29, 33}));
      connect(or1.y, booleanToBoolean4_2.u) annotation(
        Line(points = {{6.6, 30}, {15.6, 30}}, color = {255, 0, 255}));
      connect(checkDuration.y, ensure.u) annotation(
        Line(points = {{61, 30}, {99, 30}}, color = {162, 29, 33}));
      connect(ensure.y, probability.u) annotation(
        Line(points = {{121, 30}, {159, 30}}, color = {162, 29, 33}));
      connect(during.y, ensure.tl) annotation(
        Line(points = {{110, 140}, {110, 40}}, color = {0, 0, 255}));
      connect(randomFailure.y, or1.u2) annotation(
        Line(points = {{-59, 20}, {-20, 20}, {-20, 25.2}, {-7.2, 25.2}}, color = {217, 67, 180}));
      connect(booleanToBoolean4_1.y, While.u) annotation(
        Line(points = {{-15.6, 150}, {0, 150}, {0, 130}, {39, 130}}, color = {162, 29, 33}));
      connect(While.y, timePeriod.tl) annotation(
        Line(points = {{50, 120}, {50, 100}}, color = {0, 0, 255}));
      connect(greater4.y, checkAtEnd.u) annotation(
        Line(points = {{121, -50}, {139, -50}}, color = {162, 29, 33}));
      connect(edge1.y, or1.u1) annotation(
        Line(points = {{-25.6, 40}, {-20, 40}, {-20, 30}, {-7.2, 30}}, color = {255, 0, 255}));
      connect(inOperation.y, edge1.u) annotation(
        Line(points = {{-79, 150}, {-50, 150}, {-50, 40}, {-34.8, 40}}, color = {217, 67, 180}));
      connect(inOperation.y, not1.u) annotation(
        Line(points = {{-79, 150}, {-50, 150}, {-50, 110}, {-34.8, 110}}, color = {217, 67, 180}));
      connect(inOperation.y, booleanToBoolean4_4.u) annotation(
        Line(points = {{-79, 150}, {-50, 150}, {-50, -10}, {115.6, -10}}, color = {217, 67, 180}));
      connect(not1.y, probability.event) annotation(
        Line(points = {{-25.6, 110}, {140, 110}, {140, 22}, {159, 22}}, color = {255, 0, 255}));
      connect(booleanToBoolean4_4.y, during1.u) annotation(
        Line(points = {{124.4, -10}, {139, -10}}, color = {162, 29, 33}));
      connect(during1.y, checkAtEnd.tl) annotation(
        Line(points = {{150, -20}, {150, -40}}, color = {0, 0, 255}));
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false, initialScale = 0.1), graphics = {Ellipse(lineColor = {75, 138, 73}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Polygon(lineColor = {0, 0, 255}, fillColor = {75, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-36, 60}, {64, 0}, {-36, -60}, {-36, 60}})}),
        Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-120, -100}, {200, 160}}), graphics = {Text(extent = {{-86, -14}, {-44, -22}}, lineColor = {0, 0, 0}, pattern = LinePattern.Dash, fillColor = {210, 210, 210}, fillPattern = FillPattern.Solid, textString = "Unavailability"), Text(extent = {{-34, -62}, {134, -112}}, lineColor = {28, 108, 200}, textString = "While the system is in operation, 
unvailability should be less of 1 hour in a sliding time period of one month
 with a probability greater than 99 percent."), Text(extent = {{-22, 70}, {22, 62}}, lineColor = {28, 108, 200}, textString = "1 month"), Text(extent = {{-112, 136}, {-68, 128}}, lineColor = {28, 108, 200}, textString = "10 months")}),
        experiment(StopTime = 50));
    end Probability4;
    annotation(
      Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Polygon(origin = {8.0, 14.0}, lineColor = {78, 138, 73}, fillColor = {78, 138, 73}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-58.0, 46.0}, {42.0, -14.0}, {-58.0, -74.0}, {-58.0, 46.0}})}));
  end Tests;

  package CompilerCompliancy
    "Internal types and converters for compliancy of code generated by the CRMLToModelica compiler (a user should usually not directly utilize them!)"

    record CRMLClock
    //constant Integer buffer_size=50;  // number of events that can be logged
      CRML.ETL.Types.Boolean4 b( start= CRML.ETL.Types.Boolean4.false4);

      Real ticks[50](each start = -1, each fixed = true);
      discrete Integer counter(start=1, fixed=true);

      CRML.ETL.Types.Boolean4 out(start = CRML.ETL.Types.Boolean4.false4);

    end CRMLClock;

    record CRMLPeriod
      Boolean isLeftBoundaryIncluded "If true, the left boundaries of the time periods are included";
      Boolean isRightBoundaryIncluded "If true, the right boundaries of the time periods are included";
    public
      CRMLEvent start_event;
      CRMLEvent close_event;
      Boolean is_open;
    end CRMLPeriod;

    record CRMLEvent
      CRML.ETL.Types.Boolean4 b;
      Real t;
    end CRMLEvent;

    block CRMLClockClock "Converts Clock into a CRMLClock"
      ETL.Connectors.CRMLClockOutput y
        annotation (Placement(transformation(extent={{100,-10},{120,10}})));
      ETL.Connectors.ClockInput c annotation (Placement(transformation(extent={{-120,
                -10},{-100,10}}), iconTransformation(extent={{-120,-10},{-100,10}})));

      CRML.Blocks.Events.ClockToBoolean clockToBoolean
        annotation (Placement(transformation(extent={{-10,-10},{10,10}})));

    protected
      Boolean e;

    public
      Modelica.Clocked.BooleanSignals.Sampler.Hold hold1
        annotation (Placement(transformation(extent={{44,-6},{56,6}})));
    algorithm
      e := (y.b == CRML.ETL.Types.Boolean4.true4 and change(y.b));

      when (e) then
        y.ticks[y.counter] := time;
        y.counter := pre(y.counter)+1;
      end when;

    equation
      y.b = CRML.ETL.Types.cvBooleanToBoolean4(hold1.y);
      y.out = CRML.ETL.Types.cvBooleanToBoolean4(e);
      connect(clockToBoolean.u, c) annotation (Line(
          points={{-12,0},{-110,0}},
          color={175,175,175},
          pattern=LinePattern.Dot,
          thickness=0.5));
      connect(clockToBoolean.y, hold1.u)
        annotation (Line(points={{12,0},{42.8,0}}, color={217,67,180}));
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}),                                                                                                                                                                                                        Text(origin = {2, 52}, extent = {{-58, 16}, {58, -16}},
              textString="Clock -> CRMLClock",
              textColor={0,0,0})}),
        Diagram(coordinateSystem(preserveAspectRatio = false)));
    end CRMLClockClock;

    block CRMLPeriodTimePeriod
      "Extracts the CRML time period of a single time locator"
      ETL.Connectors.CRMLPeriodOutput y annotation(
        Placement(transformation(extent = {{100, -10}, {120, 10}})));
      ETL.Connectors.TimeLocatorInput tl annotation(
        Placement(transformation(extent = {{-10, 90}, {10, 110}}), iconTransformation(extent = {{-10, 90}, {10, 110}})));
      ETL.TimeLocators.Attributes.PeriodStart periodStart annotation (Placement(
            transformation(origin={-70,50}, extent={{-10,-10},{10,10}})));
      ETL.TimeLocators.Attributes.PeriodEnd periodEnd annotation (Placement(
            transformation(origin={-30,10}, extent={{-10,-10},{10,10}})));
      ETL.TimeLocators.Attributes.PeriodTimePeriod periodTimePeriod
        annotation (Placement(transformation(extent={{0,-60},{20,-40}})));
    initial equation
      y.start_event.t = -1;
      y.close_event.t = -1;
    equation
      y.isLeftBoundaryIncluded = tl.isLeftBoundaryIncluded;
      y.isRightBoundaryIncluded = tl.isRightBoundaryIncluded;

      when (y.start_event.b == CRML.ETL.Types.Boolean4.true4) then
        y.start_event.t = time;
      end when;

      when (y.close_event.b == CRML.ETL.Types.Boolean4.true4) then
        y.close_event.t = time;
      end when;

      y.start_event.b = CRML.ETL.Types.cvBooleanToBoolean4(periodStart.y);
      y.close_event.b = CRML.ETL.Types.cvBooleanToBoolean4(periodEnd.y);
      y.is_open = periodTimePeriod.y;
      connect(
      periodStart.tl, tl) annotation (
        Line(points={{-70,60},{-70,86},{0,86},{0,100}},          color = {0, 0, 255}));
      connect(
      periodEnd.tl, tl) annotation (
        Line(points={{-30,20},{-30,80},{0,80},{0,100}},                    color = {0, 0, 255}));
      connect(periodTimePeriod.tl, tl) annotation (Line(points={{10,-40},{12,-40},{12,
              82},{0,82},{0,100}}, color={0,0,255}));
      annotation(
        Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Line(points = {{-86, -24}, {-50, -24}, {-50, 20}, {60, 20}, {60, -26}, {88, -26}}), Rectangle(fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid, extent = {{-66, -46}, {0, -62}}), Rectangle(fillColor = {244, 125, 35}, fillPattern = FillPattern.Solid, extent = {{0, -46}, {66, -62}}), Text(origin = {2, 52}, extent = {{-58, 16}, {58, -16}}, textString = "tl -> Period")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)));
    end CRMLPeriodTimePeriod;
    annotation (Icon(graphics={
        Rectangle(
          lineColor={215,215,215},
          fillColor={255,255,255},
          fillPattern=FillPattern.HorizontalCylinder,
          extent={{-100,-100},{100,100}},
          radius=25),
        Rectangle(
          lineColor={215,215,215},
          extent={{-100,-100},{100,100}},
          radius=25),
        Ellipse(
          extent={{-80,80},{80,-80}},
          lineColor={215,215,215},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-55,55},{55,-55}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-60,14},{60,-14}},
          lineColor={215,215,215},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid,
          rotation=45)}), Diagram(graphics={
        Rectangle(
          lineColor={215,215,215},
          fillColor={255,255,255},
          fillPattern=FillPattern.HorizontalCylinder,
          extent={{-100,-100},{100,100}},
          radius=25),
        Rectangle(
          lineColor={215,215,215},
          extent={{-100,-100},{100,100}},
          radius=25),
        Ellipse(
          extent={{-80,80},{80,-80}},
          lineColor={215,215,215},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-55,55},{55,-55}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-60,14},{60,-14}},
          lineColor={215,215,215},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid,
          rotation=45)}));
  end CompilerCompliancy;
  annotation(
    Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25.0), Text(extent = {{-42, 38}, {44, -30}}, lineColor = {0, 0, 0}, fontName = "Symbol", textString = ""), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100, -100}, {100, 100}}, radius = 25.0)}),
    uses(Modelica(version = "4.0.0"), Complex(version = "4.0.0")));
end CRML;
