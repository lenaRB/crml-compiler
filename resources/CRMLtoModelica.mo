package CRMLtoModelica
  package Types
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
  
  end Blocks;
  
end CRMLtoModelica;
