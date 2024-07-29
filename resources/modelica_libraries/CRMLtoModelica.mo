package CRMLtoModelica
import CRML.ETL.Types.Boolean4;
  package Types
  
record CRMLClock
//constant Integer buffer_size=50;  // number of events that can be logged

CRMLtoModelica.Types.Boolean4 b (start= CRMLtoModelica.Types.Boolean4.false4);

Real ticks[50](each start = -1, each fixed = true);
discrete Integer counter(start=1, fixed=true);

CRMLtoModelica.Types.Boolean4 out(start = CRMLtoModelica.Types.Boolean4.false4);

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
      
      equation
        clock.out = Functions.cvBooleanToBoolean4(e);
    end CRMLClock_build;
  
    type Boolean4 = enumeration(
      undefined,
      undecided,
      false4,
      true4) "4-valued logic" 
      annotation (Icon(graphics = {Text(extent = {{-58, 48}, {76, -38}}, textString = "")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})));
    
    record WhileLocator "Description of a while locator"
     Boolean timePeriod "Represents the different time periods of the time locator";
     Boolean4 clock "Clock ticks";
     Boolean isLeftBoundaryIncluded "true if left boundary belongs to the CTL";
     Boolean isRightBoundaryIncluded "true if right boundary belongs to the CTL";
    annotation (Documentation(info="<html>
  
  </html>"));
  end WhileLocator;

    record CRMLPeriod
    
      Boolean isLeftBoundaryIncluded "If true, the left boundaries of the time periods are included";
      Boolean isRightBoundaryIncluded "If true, the right boundaries of the time periods are included";
    
    public
      Types.Event start_event;
      Types.Event close_event;
      
      Boolean is_open;
    end CRMLPeriod;

    record Event
    
   CRMLtoModelica.Types.Boolean4 b; 
    
    Real t;
    
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

    model CRMLPeriod_build
    CRMLPeriod P;
    
    equation
    P.is_open = true;
      

    end CRMLPeriod_build;
    
    model CRMLEvent_build
    Event E;
    
    initial equation
    E.t = -1;
    
    equation
    when (E.b==Types.Boolean4.true4) then
        E.t = time;
    end when;
    
    end CRMLEvent_build;
    
    record CRMLPeriods
    
      parameter Boolean isLeftBoundaryIncluded=true "If true, the left boundaries of the time periods are included";
      parameter Boolean isRightBoundaryIncluded=true "If true, the right boundaries of the time periods are included";
    
    public
      Types.Event start_event;
      Types.Event close_event;
    end CRMLPeriods;
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
    output Types.Event e;
    algorithm
      e:=p.start_event;

    end PStart;

    function PEnd
    input CRMLtoModelica.Types.CRMLPeriod p;
    output Types.Event e;
    algorithm
      e:=p.close_event;

    end PEnd;

    function gEV
    input CRMLtoModelica.Types.Event r1;
    input CRMLtoModelica.Types.Event r2;
    
    output Types.Boolean4 out = Functions.cvBooleanToBoolean4(r1.t>r2.t);
    algorithm
       

    end gEV;
    
    function lEV
    input CRMLtoModelica.Types.Event r1;
    input CRMLtoModelica.Types.Event r2;
    
    output Types.Boolean4 out = Functions.cvBooleanToBoolean4(r1.t>r2.t);
    algorithm
      
    
    end lEV;

    function Event2Boolean
    input Types.Event e;
    
    output Types.Boolean4 b;
    
    algorithm
    
    b:=e.b;

    end Event2Boolean;


  
  end Functions;
  
  package Blocks
  
    block EventFilter "Filters events depending on condition"
    
    protected
     Boolean e(start=false, fixed=true);
    
    public
      input Types.CRMLClock r1//u
        annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
       output Types.CRMLClock out annotation (
          Placement(transformation(extent={{100,-10},{120,10}}),
            iconTransformation(extent={{100,-10},{120,10}})));
    
      input Types.Boolean4  r2 //cond
       "Condition" annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={-110,80})));
    equation
    
    algorithm
      e := (r1.out == CRMLtoModelica.Types.Boolean4.true4 and r2 == CRMLtoModelica.Types.Boolean4.true4  and change(r2));
      when (e ) then
        out.ticks[out.counter] := time;
       out.counter := pre(out.counter)+1;
       out.out := CRMLtoModelica.Types.Boolean4.true4 ;
       out.b :=Functions.cvBooleanToBoolean4(e);
      end when;
    
    
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
          Boolean timePeriod(start = false, fixed = true) = r2.is_open;//  tl.timePeriod;
          Boolean not_timePeriod(start = true, fixed = true) = not r2.is_open;//tl.timePeriod;
          Boolean sync1(start = false, fixed = true);
          Boolean sync2(start = false, fixed = true);
        public
          input Boolean4 r1;
          
          input Types.CRMLPeriod  r2 ;
    
          input Boolean4  a= Types.Boolean4.true4; //FIXME
          output Boolean4  out;
        equation
    /* Compute the decision event d */
          d = Functions.or4(a, Functions.cvBooleanToBoolean4(edge(not_timePeriod)));
    /* Determine whether the change of the condition u happens at the same instant as the start of the time period tl */
          sync1 = r1 <> pre(r1) and edge(timePeriod);
    /* Determine whether the change of the condition u happens at the same instant as the end of the time period tl */
          sync2 = r1 <> pre(r1) and edge(not_timePeriod);
    /* Compute the condition c from the condition u within the bounds of the time period tl */
          c = if (r2.isLeftBoundaryIncluded and edge(sync1)) or (not r2.isRightBoundaryIncluded and edge(sync2)) then pre(r1) else r1;
    /* Compute the integral of c over the time period tl, taking into account the fact
    that the same time thread tl maout accomodate several non-overlapping time periods */
          v = if timePeriod or edge(not_timePeriod) then Functions.mul4(d, c) else Boolean4.undefined;
          x = if edge(timePeriod) then Functions.and4(pre(x), v) else Functions.add4(pre(x), v);
    /* The output out is the value of the integral of c until the current time */
          out = x;
          annotation(
            Placement(transformation(extent = {{100, -90}, {120, -70}})),
            Icon(coordinateSystem(preserveAspectRatio = false), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, fillColor = {255, 213, 170}, lineThickness = 5, fillPattern = FillPattern.Solid, borderPattern = BorderPattern.Raised, lineColor = {0, 0, 0}), Text(extent = {{-76, 54}, {74, -50}}, lineColor = {0, 0, 0}, fontName = "Symbol", textString = "")}),
            Diagram(coordinateSystem(preserveAspectRatio = false)));
        end Integrate;

    block ClockTick "Returns time of last clock tick"
      input Types.CRMLClock r1;
      output Types.Event out;
        equation
        out.t = r1.ticks[r1.counter];
        out.b = r1.b;
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

    block CardClock
    
    input CRMLtoModelica.Types.CRMLClock r1;
    
    output Integer out(start = 0);
    
    equation  
      out = r1.counter;  
      
    end CardClock;
    
    block BoolTick "Generates an event when the integer input changes"
      input Integer r1;
      output Boolean out;
    equation
      out = r1 <> pre(r1);
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
        </html>"));
    end BoolTick;

    block unaryBoolAnd
    
    input Types.Boolean4 r1;
    
    output Types.Boolean4 out (start = Types.Boolean4.true4);
    
    equation 
    
      when (r1 == Types.Boolean4.false4) then
        out = Types.Boolean4.false4;
        end when;
      
    end unaryBoolAnd;



  
  end Blocks;
annotation(
    Icon(graphics = {Ellipse(origin = {5, -2}, fillColor = {0, 143, 0}, fillPattern = FillPattern.Solid, extent = {{-59, 58}, {59, -58}})}));
  
end CRMLtoModelica;
