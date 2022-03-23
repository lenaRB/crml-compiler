within TwoTanksExample.Scenarios;
model Overflow
extends VVDRlib.Verification.Scenario;
output Real flowLevel(start = 0.06);

equation
  when time > 150 then  
    flowLevel = 0.25;
  elsewhen time > 300 then
    flowLevel = 0.15;
  end when;
  

end Overflow ;