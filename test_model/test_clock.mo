within test_model;

model test_clock

CRMLtoModelica.Types.Boolean4 b1 =  if (CRMLtoModelica.Functions.and4(CRMLtoModelica.Functions.cvBooleanToBoolean4(time < 5), CRMLtoModelica.Functions.cvBooleanToBoolean4(2.5 < time))== CRMLtoModelica.Types.Boolean4.true4) then CRMLtoModelica.Types.Boolean4.true4 else CRMLtoModelica.Types.Boolean4.false4;

CRMLtoModelica.Types.CRMLClock C1 = c8;
CRMLtoModelica.Types.CRMLClock c8(b=b1);
CRMLtoModelica.Types.CRMLClock_build c8_init(clock =c8);
end test_clock;