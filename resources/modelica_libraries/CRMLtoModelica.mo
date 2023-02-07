package CRMLtoModelica
  package Types
  
  record CRMLClock
  parameter Integer buffer_size=50;
  CRMLtoModelicaTypes.Boolean4 b;
  Real ticks[buffer_size](each start = -1, each fixed = true);
  discrete Integer counter(start=1, fixed=true);
  end CRMLClock;
  
  model CRMLClock_build
  
  CRMLClock clock;
  
  Boolean e(start = false);
  
  algorithm
    e := (clock.b == CRMLtoModelica.Types.Boolean4.true4);
    when (e) then
      clock.ticks[clock.counter] := time;
      clock.counter := pre(clock.counter)+1;
    end when;
  
  end CRMLClock_build;
  
    type Boolean4 = enumeration(
      undefined,
      undecided,
      false4,
      true4) "4-valued logic" annotation (Icon(graphics = {Text(extent = {{-58, 48}, {76, -38}}, textString = "")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})));
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
  
  end Functions;
  
  package Blocks
  
  block Integrate
  import CRML.ETL.Types.Boolean4;

protected
  Boolean4 x(start=Boolean4.undefined, fixed=true);
  Boolean4 d;
  Boolean4 c;
  Boolean4 v;
  Boolean timePeriod(start=false, fixed=true) = tl.timePeriod;
  Boolean not_timePeriod(start=true, fixed=true) = not tl.timePeriod;
  Boolean sync1(start=false, fixed=true);
  Boolean sync2(start=false, fixed=true);

public
  Connectors.Boolean4Input u(start=Boolean4.false4, fixed=true)
    annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
  Connectors.Boolean4Output y
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  Connectors.TimeLocatorInput tl
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
public
  Connectors.Boolean4Input a
    annotation (Placement(transformation(extent={{-120,70},{-100,90}})));
equation

  /* Compute the decision event d */
  d = Blocks.Logical4.or4(a, Types.cvBooleanToBoolean4(edge(not_timePeriod)));

  /* Determine whether the change of the condition u happens at the same instant as the start of the time period tl */
  sync1 = u <> pre(u) and edge(timePeriod);

  /* Determine whether the change of the condition u happens at the same instant as the end of the time period tl */
  sync2 = u <> pre(u) and edge(not_timePeriod);

  /* Compute the condition c from the condition u within the bounds of the time period tl */
  c = if (tl.isLeftBoundaryIncluded and edge(sync1)) or (not tl.isRightBoundaryIncluded and edge(sync2)) then pre(u) else u;

  /* Compute the integral of c over the time period tl, taking into account the fact
that the same time thread tl may accomodate several non-overlapping time periods */
  v = if timePeriod or edge(not_timePeriod) then TemporalOperators.mul4(d, c) else Boolean4.undefined;
  x = if edge(timePeriod) then Blocks.Logical4.and4(pre(x), v) else TemporalOperators.add4(pre(x), v);

  /* The output y is the value of the integral of c until the current time */
  y = x;

    annotation (Placement(transformation(extent={{100,-90},{120,-70}})),
              Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                                         Rectangle(
          extent={{-100,100},{100,-100}},
          fillColor={255,213,170},
          lineThickness=5,
          fillPattern=FillPattern.Solid,
          borderPattern=BorderPattern.Raised,
          lineColor={0,0,0}), Text(
          extent={{-76,54},{74,-50}},
          lineColor={0,0,0},
          fontName="Symbol",
          textString="")}),                                   Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Integrate;

  
  end Blocks;
  
end CRMLtoModelica;