package RandomFailures "Library for modelling random failures (and possibly repairs)"
  model Failure "Component with failure and repair rates"
    // Parameters
    parameter Boolean perfect = false "Are the failures to be inhibited? (default is false)" annotation(
      choices(checkBox = true));
    parameter Boolean independent = true "Is the failure independent from other blocks?" annotation(
      choices(checkBox = true));
    //failureRate is to be set from outside this model
    Real failureRate "failure rate (nb/time unit)" annotation(
      Dialog(enable = not perfect));
    //repairRate is usually constant
    Real repairRate = 10 "repair rate (nb/time unit)" annotation(
      Dialog(enable = not perfect));
    //the seed is shared with other failure modes: it is a global variable of the model
    outer Integer seed;
    Modelica.Blocks.Interfaces.BooleanOutput y annotation(
      Placement(transformation(extent = {{100, -10}, {120, 10}})));
    Boolean componentIsWorking(start = true, fixed = true);
    Real r(start = 0, fixed = true) "random number" annotation(
      HideResult = false);
    Real F(start = 0, fixed = true) "cumulative distribution function" annotation(
      HideResult = true);
    Real hazardRate "hazard rate";
    RandomFailures.Bool FailureIsPresent(start = false, fixed = true) annotation(
      Placement(visible = true, transformation(origin = {-120, -44}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, -20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  equation
    if not perfect then
      hazardRate = if componentIsWorking then failureRate else repairRate;
      der(F) = (1 - F) * hazardRate;
  when {initial(), componentIsWorking <> pre(componentIsWorking)} then
// Generate a new random number when initial() or each time a transition occurs
        r = RandomFailures.getRandom(s = seed);
      end when;
// Allow transition if it is a repair (not componentIsWorking) or if no failure is present
// in a group of mutually exclusive failure modes or if it is independent
      when F > pre(r) and (not pre(componentIsWorking) or not pre(FailureIsPresent) or independent) then
        reinit(F, 0);
        componentIsWorking = not pre(componentIsWorking);
        if independent then
          FailureIsPresent = not componentIsWorking;
        end if;
      end when;
    else
// Perfect component
      {r, F, hazardRate} = {0.0, 0.0, 0.0};
      componentIsWorking = true;
      if independent then
        FailureIsPresent = not componentIsWorking;
      end if;
    end if;
    y = not componentIsWorking;
    annotation(
      Icon(graphics = {Rectangle(origin = {1, 0}, extent = {{-101, 40}, {99, -40}}), Text(extent = {{-54, -10}, {48, 20}}, lineColor = {28, 108, 200}, textString = "%name")}),
      Icon(coordinateSystem(preserveAspectRatio = false)),
      Diagram(coordinateSystem(preserveAspectRatio = false)),
      experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002));
  end Failure;

  model MyGlobalSeed "Global seed"
    // This model sets a seed (chosen by the user or at random) for the function getRandom
    parameter Boolean useInitialSeed = false "= true, if reproducible sequence with the given seed" annotation(
      choices(checkBox = true));
    parameter Integer userDefinedSeed = 30020 "Seed to initialize random number generator";
    Integer GlobalSeed;
  equation
    when initial() then
      GlobalSeed = if not useInitialSeed then Modelica.Math.Random.Utilities.initializeImpureRandom(Modelica.Math.Random.Utilities.automaticGlobalSeed()) else Modelica.Math.Random.Utilities.initializeImpureRandom(userDefinedSeed);
    end when;
  end MyGlobalSeed;

  connector Bool = Boolean "' Boolean' as connector" annotation(
    defaultComponentName = "u",
    Icon(graphics = {Polygon(points = {{20, 100}, {100, 0}, {20, -100}, {20, 100}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Polygon(points = {{-20, 100}, {-100, 0}, {-20, -100}, {-20, 100}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid)}, coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.2)),
    Diagram(coordinateSystem(preserveAspectRatio = true, initialScale = 0.2, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{0, 50}, {100, 0}, {0, -50}, {0, 50}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-10, 85}, {-10, 60}}, lineColor = {255, 0, 255}, textString = "%name")}),
    Documentation(info = "<html>
<p>
Connector with one input signal of type Boolean.
</p>
</html>"));

  function getRandom
    input Integer s;
    output Real x;
  algorithm
    x := Modelica.Math.Random.Utilities.impureRandom(id = s);
  end getRandom;

  model test
    RandomFailures.Failure F1(perfect = false, independent = false) annotation(
      Placement(visible = true, transformation(origin = {-64, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    RandomFailures.Failure F2(independent = false) annotation(
      Placement(visible = true, transformation(origin = {-66, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Logical.And Parallel annotation(
      Placement(visible = true, transformation(origin = {18, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Logical.Or Series annotation(
      Placement(visible = true, transformation(origin = {12, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.MathBoolean.Or or3(nu = 2) annotation(
      Placement(transformation(extent = {{-46, 34}, {-34, 46}})));
    RandomFailures.MyGlobalSeed SEED annotation(
      Placement(visible = true, transformation(origin = {-90, 90}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
    // Transfer the seed to failure modes (without graphics) via seed
    inner Integer seed;
  equation
    SEED.GlobalSeed = seed;
// The failure rates are function of time
    F1.failureRate = 1 + cos(0.1 * time);
    F2.failureRate = 1 + cos(0.2 * time);
    connect(F1.y, Series.u1) annotation(
      Line(points = {{-53, 62}, {0, 62}, {0, 0}}, color = {255, 0, 255}));
    connect(F1.y, Parallel.u1) annotation(
      Line(points = {{-53, 62}, {6, 62}, {6, 54}}, color = {255, 0, 255}));
    connect(F2.y, Series.u2) annotation(
      Line(points = {{-55, 16}, {-38, 16}, {-38, -8}, {0, -8}}, color = {255, 0, 255}));
    connect(F2.y, Parallel.u2) annotation(
      Line(points = {{-55, 16}, {-22, 16}, {-22, 46}, {6, 46}}, color = {255, 0, 255}));
    connect(F1.FailureIsPresent, F2.FailureIsPresent) annotation(
      Line(points = {{-74, 60}, {-84, 60}, {-84, 14}, {-76, 14}}, color = {255, 0, 255}));
    connect(F1.y, or3.u[1]) annotation(
      Line(points = {{-53, 62}, {-52, 62}, {-52, 42.1}, {-46, 42.1}}, color = {255, 0, 255}));
    connect(F2.y, or3.u[2]) annotation(
      Line(points = {{-55, 16}, {-50, 16}, {-50, 37.9}, {-46, 37.9}}, color = {255, 0, 255}));
    connect(or3.y, F1.FailureIsPresent) annotation(
      Line(points = {{-33.1, 40}, {-28, 40}, {-28, 72}, {-78, 72}, {-78, 60}, {-74, 60}}, color = {255, 0, 255}));
    annotation(
      Diagram(graphics = {Text(origin = {61, 3}, extent = {{-35, 5}, {35, -5}}, textString = "Series system", fontSize = 16), Text(origin = {57, 57}, extent = {{-25, 7}, {31, -11}}, textString = "Parallel system", fontSize = 16), Text(origin = {-66, -34}, lineColor = {255, 0, 0}, fillColor = {0, 85, 255}, extent = {{-14, 6}, {146, -14}}, textString = "The two failures are mutually exlusive, hence the and gate output remains always false")}, coordinateSystem(initialScale = 0.1)),
      experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2));
  end test;

  block Bool2Real
    extends Modelica.Blocks.Icons.Block;
    Modelica.Blocks.Interfaces.BooleanInput u annotation(
      Placement(visible = true, transformation(origin = {-120, 4}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput y annotation(
      Placement(visible = true, transformation(origin = {110, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    y = if u then 1 else 0;
  end Bool2Real;

  model test1
  // Model to check that a variable failure rate is correctly taken into account
    // The output of the two integrators should be close
    RandomFailures.Failure F1(independent = true, repairRate = 1000) annotation(
      Placement(visible = true, transformation(origin = {-64, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    RandomFailures.MyGlobalSeed SEED annotation(
      Placement(visible = true, transformation(origin = {-90, 90}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
    // Transfer the seed to failure modes (without graphics) via seed
    inner Integer seed;
    RandomFailures.Bool2Real bool2Real annotation(
      Placement(visible = true, transformation(origin = {10, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Continuous.Integrator integrator(k = 1000) annotation(
      Placement(visible = true, transformation(origin = {60, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Cosine cosine(amplitude = 10, freqHz = 0.1, offset = 10) annotation(
      Placement(visible = true, transformation(origin = {-66, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Continuous.Integrator Theorie(k = 1) annotation(
      Placement(visible = true, transformation(origin = {62, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    SEED.GlobalSeed = seed;
// The failure rate
    F1.failureRate = cosine.y;
  connect(bool2Real.y, integrator.u) annotation(
      Line(points = {{21, 62}, {48, 62}}, color = {0, 0, 127}));
    connect(cosine.y, Theorie.u) annotation(
      Line(points = {{-55, 22}, {50, 22}, {50, 20}}, color = {0, 0, 127}));
  connect(F1.y, bool2Real.u) annotation(
      Line(points = {{-52, 62}, {-2, 62}}, color = {255, 0, 255}));
    annotation(
      Diagram(coordinateSystem(initialScale = 0.1)),
      experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2));
  end test1;
  annotation(
    uses(Modelica(version = "4.0.0")));
end RandomFailures;
