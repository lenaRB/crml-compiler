package HeatedTank_2020 "New models for OpenModelica, built in 2019"
  package HeatedTank_deterministic "System without failures, model deduced from Form-L model"
    model HydroDevice
      // Initialisation: do not give a state because it is determined by input u at t=0
      Real v_c;
      type State = enumeration(on, off, stuck_on, stuck_off);
      State state(start = State.on) annotation(
        Dialog(enable = true));
      flow Modelica.Blocks.Interfaces.RealOutput y annotation(
        Placement(visible = true, transformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.BooleanInput u annotation(
        Placement(visible = true, transformation(origin = {-108, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-108, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    algorithm
      if pre(state) == State.on and u == false then
        state := State.off;
      end if;
      if pre(state) == State.off and u == true then
        state := State.on;
      end if;
    equation
      v_c = if state == State.on or state == State.stuck_on then 1 else 0;
      y = -v_c annotation(
        Diagram(coordinateSystem(initialScale = 0.1)),
        Icon(graphics = {Ellipse(origin = {7, 1}, fillColor = {255, 85, 255}, fillPattern = FillPattern.Solid, extent = {{-89, 73}, {89, -73}}, endAngle = 360)}));
      annotation(
        Icon(graphics = {Ellipse(origin = {6, 0}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-80, 62}, {80, -62}}, endAngle = 360), Text(origin = {-23, 27}, extent = {{93, -87}, {-35, 37}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)),
        experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002));
    end HydroDevice;

    model Tank
      constant Real gg = 1.5;
      // Parameter used in the derivative of level
      constant Real theta_in = 15;
      Real theta(start = 30.9261);
      Modelica.Blocks.Interfaces.RealOutput level(start = 7) annotation(
        Placement(visible = true, transformation(origin = {108, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      flow Modelica.Blocks.Interfaces.RealInput flow_in annotation(
        Placement(visible = true, transformation(origin = {2, 124}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {0, 120}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
      flow Modelica.Blocks.Interfaces.RealInput flow_out annotation(
        Placement(visible = true, transformation(origin = {4, -112}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {0, -120}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    equation
      der(level) = gg * (flow_in - flow_out);
      der(theta) = (gg * flow_in * (theta_in - theta) + 23.88915) / level;
      annotation(
        defaultComponentName = "tank",
        Icon(coordinateSystem(initialScale = 0.2), graphics = {Rectangle(lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.VerticalCylinder, extent = {{-100, 100}, {100, -100}}), Rectangle(fillColor = {170, 255, 255}, fillPattern = FillPattern.VerticalCylinder, extent = {{-100, -100}, {100, 10}}), Line(origin = {-0.385321, 0}, points = {{-100, 100}, {-100, -100}, {100, -100}, {100, 100}}), Text(extent = {{-95, -24}, {95, -44}}, textString = "Start level = %level_start", fontName = "0")}),
        Documentation(info = "<html>
<p>
Model of a simple tank.
</p>
</html>"),
        experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002));
    end Tank;

    model InterfaceTankToHydrodevice
      Modelica.Blocks.Interfaces.RealInput level annotation(
        Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.BooleanOutput y annotation(
        Placement(visible = true, transformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Real max_level = 8;
      parameter Real min_level = 6;
      // pre_command_start = false corresponds to an initial
      // state where y = true
      parameter Boolean pre_command_start = false;
      Boolean command;
    initial equation
      pre(command) = pre_command_start;
    equation
// inspired by the equation of block hysteresis
      command = not pre(command) and level > max_level or pre(command) and level >= min_level;
      y = not command;
      annotation(
        Diagram(coordinateSystem(initialScale = 0.1)),
        Icon(graphics = {Rectangle(fillColor = {85, 0, 127}, fillPattern = FillPattern.Solid, extent = {{-100, 10}, {100, -10}})}));
    end InterfaceTankToHydrodevice;

    model system
      // fonctionne
      HeatedTank_2020.HeatedTank_deterministic.Tank tank annotation(
        Placement(visible = true, transformation(origin = {-8, 22}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      HeatedTank_2020.HeatedTank_deterministic.InterfaceTankToHydrodevice interfaceTankToHydrodevice1(pre_command_start = true) annotation(
        Placement(visible = true, transformation(origin = {50, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      HeatedTank_2020.HeatedTank_deterministic.InterfaceTankToHydrodevice interfaceTankToHydrodevice2(pre_command_start = true) annotation(
        Placement(visible = true, transformation(origin = {52, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Logical.Not not1 annotation(
        Placement(visible = true, transformation(origin = {-52, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      HydroDevice pump_1 annotation(
        Placement(transformation(extent = {{-58, 50}, {-38, 70}})));
      HydroDevice pump_2 annotation(
        Placement(transformation(extent = {{46, 50}, {26, 70}})));
      HeatedTank_2020.HeatedTank_deterministic.HydroDevice valve_1 annotation(
        Placement(visible = true, transformation(extent = {{-32, -26}, {-12, -6}}, rotation = 0)));
    equation
      connect(tank.level, interfaceTankToHydrodevice1.level) annotation(
        Line(points = {{14, 24}, {27, 24}, {27, 40}, {38, 40}}, color = {0, 0, 127}));
      connect(tank.level, interfaceTankToHydrodevice2.level) annotation(
        Line(points = {{14, 24}, {14, 23}, {16, 23}, {16, 24}, {27, 24}, {27, 10}, {40, 10}}, color = {0, 0, 127}));
      connect(pump_1.y, tank.flow_in) annotation(
        Line(points = {{-37, 60}, {-8, 60}, {-8, 46}}, color = {0, 0, 127}));
      connect(pump_2.y, tank.flow_in) annotation(
        Line(points = {{25, 60}, {-8, 60}, {-8, 46}}, color = {0, 0, 127}));
      connect(not1.y, valve_1.u) annotation(
        Line(points = {{-41, -16}, {-33, -16}}, color = {255, 0, 255}));
      connect(valve_1.y, tank.flow_out) annotation(
        Line(points = {{-11, -16}, {-8, -16}, {-8, -2}}, color = {0, 0, 127}));
      connect(interfaceTankToHydrodevice1.y, pump_2.u) annotation(
        Line(points = {{61, 40}, {68, 40}, {68, 60}, {46.8, 60}}, color = {255, 0, 255}));
      connect(interfaceTankToHydrodevice2.y, pump_1.u) annotation(
        Line(points = {{63, 10}, {80, 10}, {80, 72}, {-70, 72}, {-70, 60}, {-58.8, 60}}, color = {255, 0, 255}));
      connect(interfaceTankToHydrodevice2.y, not1.u) annotation(
        Line(points = {{63, 10}, {80, 10}, {80, -36}, {-72, -36}, {-72, -16}, {-64, -16}}, color = {255, 0, 255}));
      annotation(
        experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.2),
        Diagram(graphics = {Text(origin = {55, -4}, extent = {{9, -12}, {-9, 12}}, textString = "Control"), Text(origin = {44, -25}, extent = {{0, -1}, {0, 1}}, textString = "The initial state is set by the pre_command_start
 value of control components")}, coordinateSystem(initialScale = 0.1)));
    end system;
  end HeatedTank_deterministic;

  package HeatedTank_with_failures
    model HydroDevice
      outer Integer seed1;
      inner Integer seed;
      outer Real temperature;
      // Initialisation: do not give a state because it is determined by input u at t=0
      parameter Real lambda_hat = 1e-3 annotation(
        Dialog(enable = true));
      Real lambda;
      Real v_c;
      type State = enumeration(on, off, stuck_on, stuck_off);
      State state(start = State.on) annotation(
        Dialog(enable = true));

      function aa
        input Real t;
        output Real aa;
      protected
        parameter Real b1 = 3.0295;
        parameter Real b2 = 0.7578;
        parameter Real bc = 0.05756;
        parameter Real bd = 0.2301;
      algorithm
        aa := (b1 * exp(bc * (t - 20)) + b2 * exp(-bd * (t - 20))) / (b1 + b2);
      end aa;

      flow Modelica.Blocks.Interfaces.RealOutput y annotation(
        Placement(visible = true, transformation(origin = {96, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {96, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.BooleanInput u annotation(
        Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      RandomFailures.Failure Stuck_on(independent = false, repairRate = 0) annotation(
        Placement(visible = true, transformation(origin = {-38, 42}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
      RandomFailures.Failure Stuck_off(independent = false, repairRate = 0) annotation(
        Placement(visible = true, transformation(origin = {-38, -28}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
      Modelica.Blocks.Logical.Or or1 annotation(
        Placement(visible = true, transformation(origin = {26, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    initial equation
      pre(state) = State.on;
    algorithm
      if pre(state) == State.on and u == false then
        state := State.off;
      end if;
      if pre(state) == State.off and u == true then
        state := State.on;
      end if;
      if edge(Stuck_on.y) then
        state := State.stuck_on;
      end if;
      if edge(Stuck_off.y) then
        state := State.stuck_off;
      end if;
    equation
// Sharing the seed of SEED !!
      seed = seed1;
      Stuck_on.failureRate = lambda;
      Stuck_off.failureRate = lambda;
      lambda = aa(temperature) * lambda_hat;
      v_c = if state == State.on or state == State.stuck_on then 1 else 0;
      y = -v_c annotation(
        Diagram(coordinateSystem(initialScale = 0.1)),
        Icon(graphics = {Ellipse(origin = {7, 1}, fillColor = {255, 85, 255}, fillPattern = FillPattern.Solid, extent = {{-89, 73}, {89, -73}}, endAngle = 360)}));
    connect(Stuck_on.y, or1.u1) annotation(
        Line(points = {{-18, 42}, {4, 42}, {4, 12}, {14, 12}}, color = {255, 0, 255}));
      connect(Stuck_off.y, or1.u2) annotation(
        Line(points = {{-18.2, -28}, {4, -28}, {4, 4}, {14, 4}}, color = {255, 0, 255}));
      connect(or1.y, Stuck_off.FailureIsPresent) annotation(
        Line(points = {{37, 12}, {42, 12}, {42, -58}, {-68, -58}, {-68, -31.6}, {-56, -31.6}}, color = {255, 0, 255}));
    connect(or1.y, Stuck_on.FailureIsPresent) annotation(
        Line(points = {{37, 12}, {42, 12}, {42, 58}, {-72, 58}, {-72, 38}, {-56, 38}}, color = {255, 0, 255}));
    connect(Stuck_on.FailureIsPresent, Stuck_off.FailureIsPresent) annotation(
        Line(points = {{-56, 38}, {-80, 38}, {-80, -31.6}, {-56, -31.6}}, color = {255, 0, 255}));
      annotation(
        Icon(graphics = {Ellipse(origin = {6, 0}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-80, 62}, {80, -62}}, endAngle = 360), Text(origin = {-23, 27}, extent = {{93, -87}, {-35, 37}}, textString = "%name")}, coordinateSystem(initialScale = 0.2)),
        experiment(StopTime = 1000, Interval = 0.002, Tolerance = 1e-06),
    Diagram(coordinateSystem(initialScale = 0.2, extent = {{0, 0}, {0, 0}}, preserveAspectRatio = false, grid = {0, 0}), graphics = {Rectangle(origin = {-5, 21}, lineThickness = 1, extent = {{-95, 51}, {91, -87}})}));
    end HydroDevice;

    model Tank
      outer Real temperature;
      constant Real gg = 1.5;
      // Parameter used in the derivative of level
      constant Real theta_in = 15;
      constant Real overFlowLevel = 10;
      constant Real dryOutLevel = 4;
      Real theta(start = 30.9261);
      output Integer failure_code(start = 0);
      output Real end_time(start = -1);
      Modelica.Blocks.Interfaces.RealOutput level(start = 7) annotation(
        Placement(visible = true, transformation(origin = {110, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      flow Modelica.Blocks.Interfaces.RealInput flow_in annotation(
        Placement(visible = true, transformation(origin = {2, 124}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {0, 120}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
      flow Modelica.Blocks.Interfaces.RealInput flow_out annotation(
        Placement(visible = true, transformation(origin = {4, -112}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {0, -120}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    algorithm
      when level < dryOutLevel then
        failure_code := 1;
        end_time := time;
      terminate("Undesirable event Dryout");
      end when;
      when level > overFlowLevel then
        failure_code := 2;
        end_time := time;
        terminate("Undesirable event Overflow");
      end when;
      when theta > 100 then
        failure_code := 3;
        end_time := time;
      terminate("Undesirable event Boiling");
      end when;
    equation
      temperature = theta;
      der(level) = gg * (flow_in - flow_out);
      der(theta) = (gg * flow_in * (theta_in - theta) + 23.88915) / level;
      annotation(
        defaultComponentName = "tank",
        Icon(coordinateSystem(initialScale = 0.2), graphics = {Rectangle(lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.VerticalCylinder, extent = {{-100, 100}, {100, -100}}), Rectangle(fillColor = {170, 255, 255}, fillPattern = FillPattern.VerticalCylinder, extent = {{-100, -100}, {100, 10}}), Line(origin = {-0.385321, 0}, points = {{-100, 100}, {-100, -100}, {100, -100}, {100, 100}}), Text(extent = {{-95, -24}, {95, -44}}, textString = "Start level = %level_start", fontName = "0")}),
        Documentation(info = "<html>
<p>
Model of a simple tank.
</p>
</html>"),
        experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002));
    end Tank;

    model InterfaceTankToHydrodevice
      Modelica.Blocks.Interfaces.RealInput level annotation(
        Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.BooleanOutput y annotation(
        Placement(visible = true, transformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Real max_level = 8;
      parameter Real min_level = 6;
      // pre_command_start = false corresponds to an initial
      // state where y = true
      parameter Boolean pre_command_start = false;
      Boolean command;
    initial equation
      pre(command) = pre_command_start;
    equation
// inspired by the equation of block hysteresis
      command = not pre(command) and level > max_level or pre(command) and level >= min_level;
      y = not command;
      annotation(
        Diagram(coordinateSystem(initialScale = 0.1)),
        Icon(graphics = {Rectangle(fillColor = {85, 0, 127}, fillPattern = FillPattern.Solid, extent = {{-100, 10}, {100, -10}})}));
    end InterfaceTankToHydrodevice;

    model system
      inner Integer seed1;
      inner Real temperature;
      HeatedTank_2020.HeatedTank_with_failures.Tank tank annotation(
        Placement(visible = true, transformation(origin = {-8, 4}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      HeatedTank_2020.HeatedTank_with_failures.InterfaceTankToHydrodevice interfaceTankToHydrodevice1(pre_command_start = false) annotation(
        Placement(visible = true, transformation(origin = {52, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      HeatedTank_2020.HeatedTank_with_failures.InterfaceTankToHydrodevice interfaceTankToHydrodevice2(pre_command_start = true) annotation(
        Placement(visible = true, transformation(origin = {52, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      RandomFailures.MyGlobalSeed SEED(useInitialSeed = false) annotation(
        Placement(visible = true, transformation(origin = {-81, 83}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
      HeatedTank_2020.HeatedTank_with_failures.HydroDevice pump_2(lambda_hat = 0.0028571)  annotation(
        Placement(visible = true, transformation(origin = {-42, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      HeatedTank_2020.HeatedTank_with_failures.HydroDevice pump_1(lambda_hat = 0.0022831)  annotation(
        Placement(visible = true, transformation(origin = {24, 48}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      HeatedTank_2020.HeatedTank_with_failures.HydroDevice valve_1(lambda_hat = 0.0015625)  annotation(
        Placement(transformation(extent = {{-38, -56}, {-18, -36}})));
      Modelica.Blocks.Logical.Not not1 annotation(
        Placement(transformation(extent = {{-74, -56}, {-54, -36}})));
    equation
      SEED.GlobalSeed = seed1;
    connect(tank.level, interfaceTankToHydrodevice1.level) annotation(
        Line(points = {{14, 14}, {40, 14}}, color = {0, 0, 127}));
      connect(tank.level, interfaceTankToHydrodevice2.level) annotation(
        Line(points = {{14, 14}, {27, 14}, {27, -14}, {40, -14}}, color = {0, 0, 127}));
    connect(pump_2.y, tank.flow_in) annotation(
        Line(points = {{-32, 48}, {-8, 48}, {-8, 28}}, color = {0, 0, 127}));
    connect(pump_1.y, tank.flow_in) annotation(
        Line(points = {{14, 48}, {-8, 48}, {-8, 28}}, color = {0, 0, 127}));
      connect(valve_1.y, tank.flow_out) annotation(
        Line(points = {{-17, -46}, {-8, -46}, {-8, -20}}, color = {0, 0, 127}));
      connect(not1.y, valve_1.u) annotation(
        Line(points = {{-53, -46}, {-40, -46}}, color = {255, 0, 255}));
      connect(interfaceTankToHydrodevice2.y, not1.u) annotation(
        Line(points = {{63, -14}, {78, -14}, {78, -68}, {-84, -68}, {-84, -46}, {-76, -46}}, color = {255, 0, 255}));
    connect(interfaceTankToHydrodevice1.y, pump_1.u) annotation(
        Line(points = {{63, 14}, {68, 14}, {68, 48}, {36, 48}}, color = {255, 0, 255}));
    connect(interfaceTankToHydrodevice2.y, pump_2.u) annotation(
        Line(points = {{64, -14}, {78, -14}, {78, 64}, {-68, 64}, {-68, 48}, {-54, 48}}, color = {255, 0, 255}));
      annotation(
        experiment(StopTime = 1000, Interval = 0.2, Tolerance = 1e-06),
        Diagram(graphics = {Text(origin = {53, 0}, extent = {{9, -12}, {-9, 12}}, textString = "Control"), Text(origin = {44, -31}, extent = {{0, -1}, {0, 1}}, textString = "The initial state is set by the pre_command_start
    value of control components")}, coordinateSystem(initialScale = 0.1)),
        __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
    end system;
  end HeatedTank_with_failures;
  annotation(
    uses(Modelica(version = "4.0.0")));
end HeatedTank_2020;