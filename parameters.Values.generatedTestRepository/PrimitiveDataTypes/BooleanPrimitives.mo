model BooleanPrimitives 
CRMLtoModelica.Types.Boolean4 b0 = CRMLtoModelica.Types.Boolean4.true4;
CRMLtoModelica.Types.Boolean4 b1 = CRMLtoModelica.Types.Boolean4.false4;
CRMLtoModelica.Types.Boolean4 b2 = CRMLtoModelica.Types.Boolean4.undecided;
CRMLtoModelica.Types.Boolean4 b3 = CRMLtoModelica.Types.Boolean4.undefined;
CRMLtoModelica.Types.Boolean4 b5 = CRMLtoModelica.Functions.and4(b2, b1);
CRMLtoModelica.Types.Boolean4 b6 = CRMLtoModelica.Functions.not4( b1);
CRMLtoModelica.Types.Boolean4 b8 = CRMLtoModelica.Functions.mul2x4(b2, b1);
CRMLtoModelica.Types.Boolean4 b10 = CRMLtoModelica.Functions.add4(b3, CRMLtoModelica.Functions.add4(b2, b1));
end BooleanPrimitives;
