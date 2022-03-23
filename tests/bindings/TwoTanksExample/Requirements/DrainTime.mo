within TwoTanksExample.Requirements;

model DrainTime "With all tanks full, the maximum time to 
		drain all tanks shall be 50 seconds."
  extends VVDRlib.Verification.Requirement;
  
  input Boolean allTanksAreFull = false;
  input Boolean systemIsBeingDrained = false;
  input Boolean allTanksAreEmpty = false;
  
  parameter Integer maxTime = 50;
  
  inner Integer st;
  inner Boolean timeOut(start = false);
  inner Integer mTime = maxTime;
  
  // define the requirement through state machines
  model Waiting
    outer output Integer st;
    equation 
      st = VVDRlib.ReqStatus.NOT_APPLICABLE;
  end Waiting; 
  
  model WaitingTimeout
    outer output Integer st;
    outer Boolean timeOut;
    Real startT = sample(time);
    outer Integer mTime;
    equation 
      st = VVDRlib.ReqStatus.NOT_APPLICABLE;
      timeOut = if ((sample(time) - startT )> mTime) then true else false;
  end WaitingTimeout; 
  
  Waiting notBeingDrained; 
  WaitingTimeout beingDrained;
  
  model AfterTimeOutOK
    outer output Integer st;
      equation
      st = VVDRlib.ReqStatus.NOT_VIOLATED;
  end AfterTimeOutOK; 
  
   model AfterTimeOutKO
    outer output Integer st;
    equation
     st = VVDRlib.ReqStatus.VIOLATED;
  end AfterTimeOutKO; 
  
   AfterTimeOutOK afterTimeOutEmpty; 
   AfterTimeOutKO afterTimeOutNotEmpty; 
 
equation
  status = st;
  transition(
    notBeingDrained,
    beingDrained,
    systemIsBeingDrained,
    //  (systemIsBeingDrained and allTanksAreFull),
    immediate=false);
  
   transition(
      beingDrained, 
      notBeingDrained, 
      //((not systemIsBeingDrained) and (not timeOut)), 
     not systemIsBeingDrained,
      immediate=false);
  
  transition(
      beingDrained, 
      afterTimeOutNotEmpty,
      timeOut and (not allTanksAreEmpty),  
      immediate=false); 
   
  transition(
      beingDrained, 
      afterTimeOutEmpty,
      timeOut and allTanksAreEmpty,  
      immediate=false); 
      
  initialState(notBeingDrained);  
annotation(
    Diagram);
end DrainTime;