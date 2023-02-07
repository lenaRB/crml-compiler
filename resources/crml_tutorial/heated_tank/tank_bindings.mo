model tank_bindings
  requirements_tank rq;
  HeatedTank_2020.HeatedTank_with_failures.system system;
equation
  system.tank.level = rq.tankm.level;
  system.tank.temperature = rq.tankm.temperature;
  annotation(
    experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 0.2));
end tank_bindings;