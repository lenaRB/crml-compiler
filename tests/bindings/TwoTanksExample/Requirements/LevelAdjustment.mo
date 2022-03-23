within TwoTanksExample.Requirements;

model LevelAdjustment "After each change of the tank input flow, the controller shall,
	 	within 20 seconds, ensure that the level of liquid in each tank 
		is equal to the reference level with a tolerance of ± 0.05 m."
  extends VVDRlib.Verification.Requirement;
  
  input Real inFlow;
  input Real refValue = 0.25; 
  
   
  discrete Real dInFlow;
  Boolean inFlowChanged(start=false);
  Boolean levelOutOfBounds(start=false);
  
  inner Integer st(start = 0);
  inner Boolean timeOut(start = false);
  inner Integer mTime = maxTime;
  
  parameter Real tolerance = 0.05;
  parameter Integer maxTime = 20;
   

  model Waiting
  outer output Integer st;
  equation
   st = VVDRlib.ReqStatus.NOT_APPLICABLE;
    annotation(
      Icon(graphics = {Text(extent = {{-100, 100}, {100, -100}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)),
      __Dymola_state = true,
      singleInstance = true);
  end Waiting;

  model AfterChange
  outer output Integer st;
  outer Boolean timeOut;
  outer Integer mTime;
  
  Real timer(start = 0);
  
    equation
       st = VVDRlib.ReqStatus.NOT_APPLICABLE;
       
      timer = previous(timer) + 1; 
      timeOut = if ( mTime < timer) then true else false;
      
    annotation(
      Icon(graphics = {Text(extent = {{-100, 100}, {100, -100}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)),
      __Dymola_state = true,
      singleInstance = true);
  end AfterChange;

  model Violated
    outer output Integer st;
  equation
    st = VVDRlib.ReqStatus.VIOLATED;
    annotation(
      Icon(graphics = {Text(extent = {{-100, 100}, {100, -100}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)),
      __Dymola_state = true,
      singleInstance = true);
  end Violated; 

   model NotViolated
    outer output Integer st;
  equation
    st = VVDRlib.ReqStatus.NOT_VIOLATED;
    annotation(
      Icon(graphics = {Text(extent = {{-100, 100}, {100, -100}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)),
      __Dymola_state = true,
      singleInstance = true);
  end NotViolated; 

  TwoTanksExample.Requirements.LevelAdjustment.Waiting waiting annotation(
    Placement(visible = true, transformation(origin = {0, 64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoTanksExample.Requirements.LevelAdjustment.AfterChange afterChange annotation(
    Placement(visible = true, transformation(origin = {4, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoTanksExample.Requirements.LevelAdjustment.Violated violated annotation(
   Placement(visible = true, transformation(origin = {-72, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoTanksExample.Requirements.LevelAdjustment.NotViolated notViolated annotation(
    Placement(visible = true, transformation(origin = {68, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

  
equation
  status = hold(st);

  levelOutOfBounds = if (dInFlow < refValue + tolerance) then true else false;
  dInFlow = sample(inFlow);
  //dInFlow = 0.0;
  //inFlowChanged = if time > 10 then true else false;
  inFlowChanged = change(dInFlow);
  initialState(waiting);  
  transition(afterChange, violated, timeOut and levelOutOfBounds, immediate = false, reset = true, synchronize = false, priority = 1) annotation(
    Line(points = {{4, -12}, {4, -30}, {-72, -30}, {-72, -60}}, color = {175, 175, 175}, smooth = Smooth.Bezier),
    Text(lineColor = {95, 95, 95}, extent = {{-4, 4}, {-4, 10}}, textString = "%condition", fontSize = 10, textStyle = {TextStyle.Bold}, horizontalAlignment = TextAlignment.Right)); 
  transition(waiting, afterChange, inFlowChanged, immediate = false, reset = true, synchronize = false) annotation(
    Line(points = {{0, 54}, {0, 26}, {-6, 26}, {-6, -2}}, color = {175, 175, 175}, smooth = Smooth.Bezier),
    Text(lineColor = {95, 95, 95}, extent = {{-4, 4}, {-4, 10}}, textString = "%condition", fontSize = 10, textStyle = {TextStyle.Bold}, horizontalAlignment = TextAlignment.Right));
  transition(notViolated, afterChange, inFlowChanged, immediate = false, reset = true, synchronize = false, priority = 1) annotation(
    Line(points = {{58, -54}, {4, -54}, {4, -12}}, color = {175, 175, 175}, smooth = Smooth.Bezier),
    Text(lineColor = {95, 95, 95}, extent = {{-4, 4}, {-4, 10}}, textString = "%condition", fontSize = 10, textStyle = {TextStyle.Bold}, horizontalAlignment = TextAlignment.Right)); 
  transition(afterChange, notViolated, timeOut and (not levelOutOfBounds), immediate = false, reset = true, synchronize = false, priority = 2) annotation(
    Line(points = {{14, -2}, {68, -2}, {68, -44}}, color = {175, 175, 175}, smooth = Smooth.Bezier),
    Text(lineColor = {95, 95, 95}, extent = {{-4, 4}, {-4, 10}}, textString = "%condition", fontSize = 10, textStyle = {TextStyle.Bold}, horizontalAlignment = TextAlignment.Right)); 
end LevelAdjustment;