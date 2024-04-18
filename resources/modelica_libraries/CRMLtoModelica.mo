package CRMLtoModelica
import CRML.ETL.Types.Boolean4;
  package Types
  
record CRMLClock
//constant Integer buffer_size=50;  // number of events that can be logged

CRMLtoModelica.Types.Boolean4 b;

Real ticks[50](each start = -1, each fixed = true);
discrete Integer counter(start=1, fixed=true);

end CRMLClock;
  
    model CRMLClock_build
    
    CRMLClock clock;
    
    protected  Boolean e;
    
    initial algorithm 
     
    
    algorithm
      e := (clock.b == CRMLtoModelica.Types.Boolean4.true4 and change(clock.b));
      when (e) then
        clock.ticks[clock.counter] := time;
        clock.counter := pre(clock.counter)+1;
      end when;
    
    end CRMLClock_build;
  
    type Boolean4 = enumeration(
      undefined,
      undecided,
      false4,
      true4) "4-valued logic" 
      annotation (Icon(graphics = {Text(extent = {{-58, 48}, {76, -38}}, textString = "")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})));

    record CRMLEvent
    
    Real occurence_time;
    
    Boolean occurence_condition;

    end CRMLEvent;
    
    record WhileLocator "Description of a while locator"
     Boolean timePeriod "Represents the different time periods of the time locator";
     Boolean4 clock "Clock ticks";
     Boolean isLeftBoundaryIncluded "true if left boundary belongs to the CTL";
     Boolean isRightBoundaryIncluded "true if right boundary belongs to the CTL";
    annotation (Documentation(info="<html>
  
  </html>"));
  end WhileLocator;

    record CRMLPeriod
    
      parameter Boolean isLeftBoundaryIncluded=true "If true, the left boundaries of the time periods are included";
      parameter Boolean isRightBoundaryIncluded=true "If true, the right boundaries of the time periods are included";
    
    public
      CRMLtoModelica.Types.CRMLEvent start_event;
      CRMLtoModelica.Types.CRMLEvent close_event;
      
  Integer timeOpen;
    Integer timeClosed;
    end CRMLPeriod;

    block CRMLPeriods "Generates multiple time periods"
      import CRML.ETL.Types.Boolean4;
      import CRML;
    
      parameter Boolean leftBoundaryIncluded=true "If true, the left boundaries of the time periods are included";
      parameter Boolean rightBoundaryIncluded=true "If true, the right boundaries of the time periods are included";
      parameter Boolean durationSpecified=false "If true, closing events are given by duration on u2, else closing events is given by events on u2" annotation(Evaluate=true);
      parameter Boolean discreteClockSpecified=false "If true, duration is given in clock ticks" annotation(Evaluate=true, Dialog(enable=durationSpecified));
    
    protected
      parameter String name=if durationSpecified then "periods" else "periods";
      parameter Integer N=CRML.ETL.Types.nMaxOverlap;
      discrete Integer index(start=0, fixed=true);
      discrete Integer indexMax(start=0, fixed=true);
      Real[N] tf(each start=-1, each fixed=true);
      Boolean[N] not_y_timePeriod(each start=false, each fixed=true)=not y.timeSlot;
      Boolean u1_(start=false, fixed=true)=(u1 == Boolean4.true4);
      discrete Integer ticks(start=0, fixed=true);
      outer CRML.TimeLocators.Continuous.Master master;
      Boolean masterPeriod=tl.timePeriod and master.y.timePeriod;
    
    public
      CRML.ETL.Connectors.TimeLocatorOutput[N] y(timePeriod(each fixed=true,
            each start=false)) "Vector of time periods" annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=-90,
            origin={0,-100}), iconTransformation(
            extent={{-10,-10},{10,10}},
            rotation=-90,
            origin={0,-100})));
      Types.Boolean4    u1 "Opening event"
        annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
    public
      Connectors.WhileInput tl "Master time period"
        annotation (Placement(transformation(extent={{-10,90},{10,110}})));
      Connectors.Boolean4Input    u2
        "Closing event"
        annotation (Placement(transformation(extent={{-120,-90},{-100,-70}}), visible=not durationSpecified));
      Connectors.RealInput continuousDuration "Time period duration"
        annotation (Placement(transformation(extent={{-120,-90},{-100,-70}}), visible=durationSpecified and not discreteClockSpecified));
      Connectors.IntegerInput discreteDuration "Time period duration in clock ticks"
        annotation (Placement(transformation(extent={{-120,-90},{-100,-70}}), visible=durationSpecified and discreteClockSpecified));
       discrete Connectors.Boolean4Input clock "Clock ticks"
        annotation (Placement(transformation(extent={{-120,70},{-100,90}}), visible=durationSpecified and discreteClockSpecified));
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
    
      indexMax = CRML.ETL.Utilities.firstTrueIndex(y.timePeriod, reverse=true);
    
      for i in 1:N loop
        y[i].timePeriod = y[i].timeSlot and masterPeriod;
        y[i].timeSlot = if discreteClockSpecified then ((ticks <= tf[i]) or ((i == index) and edge(u1_))) else ((time < tf[i]) or ((i == index) and edge(u1_)));
        y[i].clock = clock;
        y[i].isLeftBoundaryIncluded = leftBoundaryIncluded;
        y[i].isRightBoundaryIncluded = rightBoundaryIncluded;
        y[i].indexMax = indexMax;
      end for;
    
    algorithm
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
    
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                {100,100}}), graphics={      Rectangle(
              extent={{-100,100},{100,-100}},
              fillColor={170,213,255},
              lineThickness=5,
              fillPattern=FillPattern.Solid,
              borderPattern=BorderPattern.Raised,
              lineColor={0,0,0}),
            Text(
              extent={{-78,86},{76,38}},
              lineColor={0,0,0},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              textString=name),
            Rectangle(
              extent={{-70,30},{70,-52}},
              lineColor={175,175,175},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(
              points={{-50,-34},{-50,-12}},
              color={0,0,0},
              pattern=LinePattern.Dash),
            Line(
              points={{-48,-12},{52,-12}},
              color={0,0,0},
              pattern=LinePattern.Dash),
            Line(
              points={{52,-12},{52,-34}},
              color={0,0,0},
              pattern=LinePattern.Dash),
            Line(points={{-62,-34},{58,-34}}, color={175,175,175}),
            Line(
              points={{-50,-12},{-50,10}},
              color={0,0,0},
              pattern=LinePattern.Dash),
            Rectangle(
              extent={{22,2},{52,-12}},
              lineColor={0,0,0},
              fillColor={175,175,175},
              fillPattern=FillPattern.Solid),
            Line(
              points={{-50,10},{22,10}},
              color={0,0,0},
              pattern=LinePattern.Dash),
            Line(
              points={{22,10},{22,-12}},
              color={0,0,0},
              pattern=LinePattern.Dash),
            Line(
              points={{22,-12},{20,-10}},
              color={0,0,0},
              pattern=LinePattern.Dash),
            Line(
              points={{22,-12},{24,-10}},
              color={0,0,0},
              pattern=LinePattern.Dash),
            Line(
              points={{-50,-12},{-52,-10}},
              color={0,0,0},
              pattern=LinePattern.Dash),
            Line(
              points={{-50,-12},{-48,-10}},
              color={0,0,0},
              pattern=LinePattern.Dash),
            Line(points={{-50,30},{-70,30},{-70,-52},{-50,-52}}, color={0,0,0}, visible=leftBoundaryIncluded),
            Line(points={{50,30},{70,30},{70,-52},{50,-52}}, color={0,0,0}, visible=rightBoundaryIncluded),
            Line(points={{90,30},{70,30},{70,-52},{90,-52}},   color={0,0,0}, visible=not rightBoundaryIncluded),
            Line(points={{-90,30},{-70,30},{-70,-52},{-90,-52}},   color={0,0,0}, visible=not leftBoundaryIncluded),
            Text(
              extent={{-28,-10},{22,-34}},
              lineColor={175,175,175},
              pattern=LinePattern.Dash,
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              textString="%u")}),           Diagram(coordinateSystem(
              preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
            Text(
              extent={{-86,38},{-72,22}},
              lineColor={0,0,0},
              textString="",
              fontName="Symbol"),
            Text(
              extent={{-66,-2},{-52,-18}},
              lineColor={0,0,0},
              textString="",
              fontName="Symbol"),
            Text(
              extent={{-56,-42},{-42,-58}},
              lineColor={0,0,0},
              textString="",
              fontName="Symbol"),
            Text(
              extent={{14,38},{28,22}},
              lineColor={0,0,0},
              textString="",
              fontName="Symbol"),
            Text(
              extent={{24,-2},{38,-18}},
              lineColor={0,0,0},
              textString="",
              fontName="Symbol"),
            Text(
              extent={{54,-42},{68,-58}},
              lineColor={0,0,0},
              textString="",
              fontName="Symbol"),
            Text(
              extent={{-6,38},{8,22}},
              lineColor={238,46,47},
              fontName="Symbol",
              textString=""),
            Text(
              extent={{74,38},{88,22}},
              lineColor={238,46,47},
              fontName="Symbol",
              textString=""),
            Rectangle(
              extent={{-80,20},{0,0}},
              lineColor={0,0,0},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              pattern=LinePattern.None),
            Rectangle(
              extent={{20,20},{80,0}},
              lineColor={0,0,0},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              pattern=LinePattern.None),
            Text(
              extent={{-68,14},{-14,6}},
              lineColor={0,0,0},
              textString="Time period"),
            Text(
              extent={{22,14},{76,6}},
              lineColor={0,0,0},
              textString="Time period"),
            Line(
              points={{-90,0},{-80,0},{-80,20},{0,20},{0,0},{20,0},{20,20},{80,
                  20},{80,0},{96,0}},
              color={0,0,0},
              arrow={Arrow.None,Arrow.Filled}),
            Rectangle(
              extent={{-60,-20},{0,-40}},
              lineColor={0,0,0},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              pattern=LinePattern.None),
            Rectangle(
              extent={{30,-20},{80,-40}},
              lineColor={0,0,0},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              pattern=LinePattern.None),
            Line(
              points={{-90,-40},{-60,-40},{-60,-20},{0,-20},{0,-40},{30,-40},{
                  30,-20},{80,-20},{80,-40},{96,-40}},
              color={0,0,0},
              arrow={Arrow.None,Arrow.Filled}),
            Text(
              extent={{-56,-26},{-2,-34}},
              lineColor={0,0,0},
              textString="Time period"),
            Text(
              extent={{26,-26},{80,-34}},
              lineColor={0,0,0},
              textString="Time period"),
            Rectangle(
              extent={{-50,-60},{0,-80}},
              lineColor={0,0,0},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              pattern=LinePattern.None),
            Rectangle(
              extent={{60,-60},{80,-80}},
              lineColor={0,0,0},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              pattern=LinePattern.None),
            Line(
              points={{-90,-80},{-50,-80},{-50,-60},{0,-60},{0,-80},{60,-80},{
                  60,-60},{80,-60},{80,-80},{96,-80}},
              color={0,0,0},
              arrow={Arrow.None,Arrow.Filled}),
            Text(
              extent={{-50,-66},{4,-74}},
              lineColor={0,0,0},
              textString="Time period"),
            Line(
              points={{0,22},{0,-84}},
              color={0,0,0},
              pattern=LinePattern.Dot),
            Line(
              points={{80,24},{80,-82}},
              color={0,0,0},
              pattern=LinePattern.Dot),
            Text(
              extent={{106,96},{120,80}},
              lineColor={0,0,0},
              textString="",
              fontName="Symbol"),
            Text(
              extent={{122,96},{170,84}},
              lineColor={0,0,0},
              textString="Opening event"),
            Text(
              extent={{124,76},{172,64}},
              lineColor={0,0,0},
              textString="Closing event"),
            Text(
              extent={{108,76},{122,60}},
              lineColor={238,46,47},
              fontName="Symbol",
              textString=""),
            Polygon(
              points={{-120,90},{-120,70},{-100,80},{-120,90}},
              lineColor={162,29,33},
              fillColor={162,29,33},
              fillPattern=FillPattern.Solid),
            Line(
              points={{-90,80},{92,80}},
              color={0,0,0},
              pattern=LinePattern.Dash,
              arrow={Arrow.None,Arrow.Filled}),
            Ellipse(
              extent={{-92,82},{-88,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-82,82},{-78,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-72,82},{-68,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-62,82},{-58,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-52,82},{-48,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-42,82},{-38,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-32,82},{-28,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-22,82},{-18,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-12,82},{-8,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-2,82},{2,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{8,82},{12,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{18,82},{22,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{28,82},{32,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{38,82},{42,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{48,82},{52,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{58,82},{62,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{68,82},{72,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{78,82},{82,78}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-38,72},{46,60}},
              lineColor={0,0,0},
              textString="Discrete  time clock (optional)")}),
        Documentation(info="<html>
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
    
    end CRMLPeriods;

    model Event
    
    //Boolean trigger;
    
   CRMLtoModelica.Types.Boolean4 r1; 
    
    Boolean out;
    
    equation
    
    end Event;

    
    record TimeLocator "Description of a time locator"
       Boolean timePeriod "Represents the different time periods of the time locator";
       Boolean timeSlot "Represents the different time slots of the time locator";
       Boolean4 clock "Clock ticks";
       Boolean isLeftBoundaryIncluded "true if left boundary belongs to the CTL";
       Boolean isRightBoundaryIncluded "true if right boundary belongs to the CTL";
       Integer indexMax "Number of allocated time periods";
      annotation (Documentation(info="<html>
    
    </html>"));
    end TimeLocator;
  end Types;

  
  package Functions
  function cvBooleanToBoolean4 "Conversion from Boolean to Boolean4"
  import CRMLtoModelica.Types.Boolean4;

  input Boolean x;
  output Boolean4 y;

algorithm
  y := if x then Boolean4.true4 else Boolean4.false4;
end cvBooleanToBoolean4;
  
  function add4 "Boolean4 accumulation operator for requirements"
    import CRMLtoModelica.Types.Boolean4;
  
    input Boolean4 x1;
    input Boolean4 x2;
    output Boolean4 y;
  
  algorithm
    y := TruthTables.add4[Integer(x1), Integer(x2)];
  end add4;
  
  function mul4 "Boolean filter"
    import CRMLtoModelica.Types.Boolean4;
  
    input Boolean4 x1;
    input Boolean4 x2;
    output Boolean4 y;
  
  algorithm
    y := TruthTables.mul4[Integer(x1), Integer(x2)];
  end mul4;
  
  function or4 "Boolean4 or operator"
    import  CRMLtoModelica.Types.Boolean4;
  
    input Boolean4 x1;
    input Boolean4 x2;
    output Boolean4 y;
  
  algorithm
    y := not4(and4(not4(x1), not4(x2)));
  end or4;
  
  function not4 "Boolean4 not operator"
   import  CRMLtoModelica.Types.Boolean4;
  
    input Boolean4 x;
    output Boolean4 y;
  
  algorithm
    y := TruthTables.not4[Integer(x)];
  end not4;
  
  function and4 "Boolean4 and operator"
    import CRMLtoModelica.Types.Boolean4;
  
    input Boolean4 x1;
    input Boolean4 x2;
    output Boolean4 y;
  
  algorithm
    y := TruthTables.and4[Integer(x1), Integer(x2)];
  end and4;
  
  
  
  
  package TruthTables
  import CRMLtoModelica.Types.Boolean4;
  
  constant Boolean4 add4[4,4]=
  [ Boolean4.undefined, Boolean4.undecided, Boolean4.false4, Boolean4.true4;
    Boolean4.undecided, Boolean4.undecided, Boolean4.false4, Boolean4.true4;
    Boolean4.false4, Boolean4.false4, Boolean4.false4, Boolean4.false4;
    Boolean4.true4, Boolean4.true4, Boolean4.false4, Boolean4.true4];
  
  constant Boolean4 mul4[4,4]=
  [ Boolean4.undefined, Boolean4.undefined, Boolean4.undefined, Boolean4.undefined;
    Boolean4.undefined, Boolean4.undecided, Boolean4.undecided, Boolean4.undecided;
    Boolean4.undefined, Boolean4.undecided, Boolean4.undecided, Boolean4.undecided;
    Boolean4.undefined, Boolean4.undecided, Boolean4.false4, Boolean4.true4];
    
    constant Boolean4 and4[4, 4]=
    [ Boolean4.undefined, Boolean4.undecided, Boolean4.false4, Boolean4.true4;
      Boolean4.undecided, Boolean4.undecided, Boolean4.false4, Boolean4.undecided;
      Boolean4.false4, Boolean4.false4, Boolean4.false4, Boolean4.false4;
      Boolean4.true4, Boolean4.undecided, Boolean4.false4, Boolean4.true4];
  
    constant Boolean4 not4[4]=
    { Boolean4.undefined, Boolean4.undecided, Boolean4.true4, Boolean4.false4};
  
  annotation (Icon(graphics={
        Rectangle(
          lineColor={200,200,200},
          fillColor={248,248,248},
          fillPattern=FillPattern.HorizontalCylinder,
          extent={{-100.0,-100.0},{100.0,100.0}},
          radius=25.0),
        Rectangle(
          lineColor={128,128,128},
          extent={{-100.0,-100.0},{100.0,100.0}},
          radius=25.0),
        Rectangle(
          extent={{-76,-26},{80,-76}},
          lineColor={95,95,95},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-76,24},{80,-26}},
          lineColor={95,95,95},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-76,74},{80,24}},
          lineColor={95,95,95},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-28,74},{-28,-76}},
          color={95,95,95}),
        Line(
          points={{24,74},{24,-76}},
          color={95,95,95})}));
  end TruthTables;

    function PStart
    
    input CRMLtoModelica.Types.CRMLPeriod p;
    output Integer t;
    algorithm
      t:=p.timeOpen;

    end PStart;

    function PEnd
    input CRMLtoModelica.Types.CRMLPeriod p;
    output Integer t;
    algorithm
      t:=p.timeClosed;

    end PEnd;
  
  end Functions;
  
  package Blocks
  
  block EventFilter "Filters events depending on condition"
  
  protected
    Boolean x(start=false, fixed=true);
  
  public
    input Boolean r1//u
      annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
     output Boolean out(start=false, fixed=true) annotation (
        Placement(transformation(extent={{100,-10},{120,10}}),
          iconTransformation(extent={{100,-10},{120,10}})));
  
    input Boolean  r2 //cond
     "Condition" annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=0,
          origin={-110,80})));
  equation
  
    x = r1 and r2;
    out =  edge(x);
  
    annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(
            extent={{-100,100},{100,-100}},
            lineColor={0,0,0},
            lineThickness=5.0,
            fillColor={215,215,215},
            fillPattern=FillPattern.Solid,
            borderPattern=BorderPattern.Raised),
          Text(
            extent={{-60,148},{62,112}},
            lineColor={0,0,255},
            lineThickness=0.5,
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid,
            textString="%name"),
            Line(points={{-80,-60},{-62,-60},{-62,-60},{-20,-60},{-20,-60},{88,-60}},
                color={255,0,255}),
          Line(points={{-62,-16},{-62,-60}},
                                           color={217,67,180}),
          Line(points={{-20,-16},{-20,-60}},
                                           color={217,67,180}),
          Line(points={{38,-16},{38,-60}}, color={217,67,180}),
          Line(points={{68,-16},{68,-60}}, color={217,67,180}),
            Line(points={{-78,38},{-50,38},{-50,82},{48,82},{48,38},{68,38}})}),
                                                                   Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end EventFilter;
  
   
    block Integrate
          import CRMLtoModelica.Types.Boolean4;
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
          Boolean4 u;
          Boolean4  y;
          Types.TimeLocator  tl ;
    
          Boolean4  a;
        equation
    /* Compute the decision event d */
          d = Functions.or4(a, Functions.cvBooleanToBoolean4(edge(not_timePeriod)));
    /* Determine whether the change of the condition u happens at the same instant as the start of the time period tl */
          sync1 = u <> pre(u) and edge(timePeriod);
    /* Determine whether the change of the condition u happens at the same instant as the end of the time period tl */
          sync2 = u <> pre(u) and edge(not_timePeriod);
    /* Compute the condition c from the condition u within the bounds of the time period tl */
          c = if (tl.isLeftBoundaryIncluded and edge(sync1)) or (not tl.isRightBoundaryIncluded and edge(sync2)) then pre(u) else u;
    /* Compute the integral of c over the time period tl, taking into account the fact
    that the same time thread tl may accomodate several non-overlapping time periods */
          v = if timePeriod or edge(not_timePeriod) then Functions.mul4(d, c) else Boolean4.undefined;
          x = if edge(timePeriod) then Functions.and4(pre(x), v) else Functions.add4(pre(x), v);
    /* The output y is the value of the integral of c until the current time */
          y = x;
          annotation(
            Placement(transformation(extent = {{100, -90}, {120, -70}})),
            Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-76, 54}, {74, -50}}, lineColor = {0, 0, 0}, fontName = "Symbol", textString = "")}),
            Diagram(coordinateSystem(preserveAspectRatio = false)));
        end Integrate;

    block ClockTick "Generates an event when the integer input changes"
      input Integer r1;
      output Boolean out;
        equation
       out = r1 <> pre(r1);
      annotation (
        Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},{100,100}}, initialScale=0.06),
                        graphics={
            Ellipse(
              extent={{-100,100},{100,-100}},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              lineColor={217,67,180}),
            Ellipse(
              extent={{9,-10},{-11,10}},
              lineColor={217,67,180},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{-1,0},{52,50}},  color={217,67,180}),
            Rectangle(
              extent={{80,6},{100,-6}},
              fillPattern=FillPattern.Solid,
              lineColor={217,67,180},
              fillColor={217,67,180}),
            Rectangle(
              extent={{-100,6},{-80,-6}},
              fillPattern=FillPattern.Solid,
              lineColor={217,67,180},
              fillColor={217,67,180}),
            Rectangle(
              extent={{20,58},{40,46}},
              fillPattern=FillPattern.Solid,
              rotation=90,
              origin={52,-120},
              lineColor={217,67,180},
              fillColor={217,67,180}),
            Rectangle(
              extent={{20,58},{40,46}},
              fillPattern=FillPattern.Solid,
              rotation=45,
              origin={80,6},
              lineColor={217,67,180},
              fillColor={217,67,180}),
            Rectangle(
              extent={{20,58},{40,46}},
              fillPattern=FillPattern.Solid,
              rotation=135,
              origin={-6,80},
              lineColor={217,67,180},
              fillColor={217,67,180}),
            Rectangle(
              extent={{20,58},{40,46}},
              fillPattern=FillPattern.Solid,
              rotation=135,
              origin={122,-48},
              lineColor={217,67,180},
              fillColor={217,67,180}),
            Rectangle(
              extent={{20,58},{40,46}},
              fillPattern=FillPattern.Solid,
              rotation=90,
              origin={52,60},
              lineColor={217,67,180},
              fillColor={217,67,180}),
            Rectangle(
              extent={{20,58},{40,46}},
              fillPattern=FillPattern.Solid,
              rotation=45,
              origin={-52,-118},
              lineColor={217,67,180},
              fillColor={217,67,180}),
            Text(
              extent={{-51,150},{51,114}},
              lineColor={0,0,255},
              lineThickness=0.5,
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              textString="%name")}),
        Documentation(info="<html>
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
    </html>"));
    end ClockTick;

    model Card
    
    CRMLtoModelica.Types.Boolean4 r1;
    
    Boolean out;
    equation

    end Card;



  
  end Blocks;
annotation(
    Icon(graphics = {Ellipse(origin = {5, -2}, fillColor = {0, 143, 0}, fillPattern = FillPattern.Solid, extent = {{-59, 58}, {59, -58}})}));
  
end CRMLtoModelica;