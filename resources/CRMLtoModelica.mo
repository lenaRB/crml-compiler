package CRMLtoModelica
  package Types
    model CRMLClock_build
  
  CRMLClock clock;
  
  Boolean e(start = false);
  
  algorithm
    e := (clock.b == CRML.ETL.Types.Boolean4.true4);
    when (e) then
      clock.ticks[clock.counter] := time;
      clock.counter := pre(clock.counter)+1;
    end when;
  
  end CRMLClock_build;
    record CRMLClock
    parameter Integer buffer_size=50;
    CRML.ETL.Types.Boolean4 b;
    Real ticks[buffer_size](each start = -1, each fixed = true);
    discrete Integer counter(start=1, fixed=true);
  end CRMLClock;
  
  type Boolean4 = enumeration(
      undefined,
      undecided,
      false4,
      true4) "4-valued logic" annotation (Icon(graphics={Text(
          extent={{-58,48},{76,-38}},
          lineColor={0,0,0},
          fillPattern=FillPattern.HorizontalCylinder,
          fillColor={248,248,248},
          textString="")}));
  end Types;
  
  package Functions
  
  function or4 "Boolean4 or operator"
    import CRML.ETL.Types.Boolean4;
  
    input Boolean4 x1;
    input Boolean4 x2;
    output Boolean4 y;
  
  algorithm
    y := not4(and4(not4(x1), not4(x2)));
  end or4;
  
  function not4 "Boolean4 not operator"
    import CRML.ETL.Types.Boolean4;
  
    input Boolean4 x;
    output Boolean4 y;
  
  algorithm
    y := TruthTables.not4[Integer(x)];
  end not4;
  
  
  function and4 "Boolean4 and operator"
    import CRML.ETL.Types.Boolean4;
  
    input Boolean4 x1;
    input Boolean4 x2;
    output Boolean4 y;
  
  algorithm
    y := TruthTables.and4[Integer(x1), Integer(x2)];
  end and4;
  
  
  function cvBooleanToBoolean4 "Conversion from Boolean to Boolean4"
  import CRML.ETL.Types.Boolean4;
  
  input Boolean x;
  output Boolean4 y;
  
  algorithm
  y := if x then Boolean4.true4 else Boolean4.false4;
  end cvBooleanToBoolean4;
  
    function add4 "Boolean4 accumulation operator for requirements"
      import CRML.ETL.Types.Boolean4;
  
      input Boolean4 x1;
      input Boolean4 x2;
      output Boolean4 y;
  
    algorithm
      y := TruthTables.add4[Integer(x1), Integer(x2)];
    end add4;
  
    function diff4 "Boolean4 difference operator"
      import CRML.ETL.Types.Boolean4;
  
      input Boolean4 x1;
      input Boolean4 x2;
      output Boolean4 y;
  
    algorithm
      y := TruthTables.diff4[Integer(x1), Integer(x2)];
    end diff4;
  
    function mul2x4 "Boolean4 multiplication operator"
      import CRML.ETL.Types.Boolean4;
  
      input Boolean x1;
      input Boolean4 x2;
      output Boolean4 y;
  
    algorithm
      y := TruthTables.mul2x4[if x1 then 2 else 1, Integer(x2)];
    end mul2x4;
  
    package TruthTables
      import CRML.ETL.Types.Boolean4;
  
      constant Boolean4 add4[4, 4]=
      [ Boolean4.undefined, Boolean4.undecided, Boolean4.false4, Boolean4.true4;
        Boolean4.undecided, Boolean4.undecided, Boolean4.false4, Boolean4.true4;
        Boolean4.false4, Boolean4.false4, Boolean4.false4, Boolean4.false4;
        Boolean4.true4, Boolean4.true4, Boolean4.false4, Boolean4.true4];
  
      constant Boolean4 diff4[4, 4]=
      [ Boolean4.undefined, Boolean4.undecided, Boolean4.false4, Boolean4.true4;
        Boolean4.undecided, Boolean4.undecided, Boolean4.undecided, Boolean4.undecided;
        Boolean4.false4, Boolean4.false4, Boolean4.undecided, Boolean4.false4;
        Boolean4.true4, Boolean4.true4, Boolean4.true4, Boolean4.undecided];
  
      constant Boolean4 mul2x4[2, 4]=
      [ Boolean4.undefined, Boolean4.undecided, Boolean4.undecided, Boolean4.undecided;
        Boolean4.undefined, Boolean4.undecided, Boolean4.false4, Boolean4.true4];
  
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
  
    package TruthTables_old
      import CRML.ETL.Types.Boolean4;
  
      constant Boolean4 add4[4, 4]=
      [ Boolean4.undefined, Boolean4.undecided, Boolean4.false4, Boolean4.true4;
        Boolean4.undecided, Boolean4.undecided, Boolean4.false4, Boolean4.true4;
        Boolean4.false4, Boolean4.false4, Boolean4.false4, Boolean4.false4;
        Boolean4.true4, Boolean4.true4, Boolean4.false4, Boolean4.true4];
  
      constant Boolean4 diff4[4, 4]=
      [ Boolean4.undefined, Boolean4.undecided, Boolean4.false4, Boolean4.true4;
        Boolean4.undecided, Boolean4.undecided, Boolean4.undecided, Boolean4.undecided;
        Boolean4.false4, Boolean4.undecided, Boolean4.undecided, Boolean4.false4;
        Boolean4.true4, Boolean4.undecided, Boolean4.true4, Boolean4.undecided];
  
      constant Boolean4 mul2x4[2, 4]=
      [ Boolean4.undefined, Boolean4.undecided, Boolean4.undecided, Boolean4.undecided;
        Boolean4.undefined, Boolean4.undecided, Boolean4.false4, Boolean4.true4];
  
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
    end TruthTables_old;
    annotation (Icon(graphics={
          Rectangle(
            lineColor={200,200,200},
            fillColor={248,248,248},
            fillPattern=FillPattern.HorizontalCylinder,
            extent={{-100,-100},{100,100}},
            radius=25.0),       Text(
            extent={{-62,50},{78,-12}},
            lineColor={0,0,0},
            fontName="Symbol",
            textString=""),
          Rectangle(
            lineColor={128,128,128},
            fillPattern=FillPattern.None,
            extent={{-100,-100},{100,100}},
            radius=25.0)}));
  
  end Functions;
  
  package Blocks
  
  
  end Blocks;
  
  
end CRMLtoModelica;
