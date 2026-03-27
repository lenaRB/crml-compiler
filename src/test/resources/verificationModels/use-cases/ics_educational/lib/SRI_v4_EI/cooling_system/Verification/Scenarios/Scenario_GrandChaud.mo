within cooling_system.Verification.Scenarios;
model Scenario_GrandChaud
  extends cooling_system.Verification.Scenarios.Utils.Scenario_init;
  Utils.AddClient addClient1 annotation (Placement(transformation(origin={-116,16},
                 extent={{-10,-10},{10,10}})));
  Utils.AddClient addClient2(at=400) annotation (Placement(transformation(
          origin={-84,16},  extent={{-10,-10},{10,10}})));
  Utils.AddClient addClient3(at=600) annotation (Placement(transformation(
          origin={-52,16}, extent={{-10,-10},{10,10}})));
  Utils.AddClient addClient4(at=800) annotation (Placement(transformation(
          origin={-18,16}, extent={{-10,-10},{10,10}})));
  Utils.change_Tsf change_Tsf(delta=13.15)
    annotation (Placement(transformation(extent={{-154,-20},{-134,0}})));
  Utils.change_Psf change_Psf(delta=-1e5, at=50)
    annotation (Placement(transformation(extent={{-154,-46},{-134,-26}})));
equation
  connect(addClient1.outputReal, addClient2.inputReal) annotation (
    Line(points={{-105.2,15.8},{-94.8,15.8}},       color = {0, 0, 255}));
  connect(addClient2.outputReal, addClient3.inputReal) annotation (
    Line(points={{-73.2,15.8},{-62.8,15.8}},     color = {0, 0, 255}));
  connect(addClient3.outputReal, addClient4.inputReal) annotation (
    Line(points={{-41.2,15.8},{-28.8,15.8}},      color = {0, 0, 255}));
  connect(True.yL, toConnector.ouvreBranche1) annotation (Line(points={{-179,84},
          {18,84},{18,91.6},{31.6,91.6}}, color={0,0,255}));
  connect(True.yL, toConnector.ouvreBranche2) annotation (Line(points={{-179,84},
          {18,84},{18,75.6},{31.6,75.6}}, color={0,0,255}));
  connect(True.yL, toConnector.encP1) annotation (Line(points={{-179,84},{18,84},
          {18,59.6},{31.6,59.6}}, color={0,0,255}));
  connect(True.yL, toConnector.encP2) annotation (Line(points={{-179,84},{18,84},
          {18,43.6},{31.6,43.6}}, color={0,0,255}));
  connect(False.yL, toConnector.encP3) annotation (Line(points={{-179,56},{14,
          56},{14,27.6},{31.6,27.6}}, color={0,0,255}));
  connect(False.yL, toConnector.comVanneBache) annotation (Line(points={{-179,
          56},{14,56},{14,28},{20,28},{20,11.2},{31.6,11.2}}, color={0,0,255}));
  connect(addClient4.outputReal, toConnector.load) annotation (Line(points={{-7.2,
          15.8},{18,15.8},{18,-26.4},{32,-26.4}},       color={0,0,255}));
  connect(Fuite_init1.y, toConnector.leak) annotation (Line(points={{-179,-90},
          {20,-90},{20,-91},{32,-91}}, color={0,0,255}));
  connect(Util_init.y, toConnector.comUtil) annotation (Line(points={{-179,-64},
          {-36,-64},{-36,-75.6},{32,-75.6}}, color={0,0,255}));
  connect(HotPower_init.y, addClient1.inputReal) annotation (Line(points={{-179,16},
          {-130,16},{-130,15.8},{-126.8,15.8}},     color={0,0,255}));
  connect(Tsf_init.y, change_Tsf.inputReal) annotation (Line(points={{-179,-10},
          {-178,-10.2},{-154.8,-10.2}}, color={0,0,255}));
  connect(toConnector.Tsf, change_Tsf.outputReal) annotation (Line(points={{32,
          -42.8},{-82,-42.8},{-82,-10.2},{-133.2,-10.2}}, color={0,0,255}));
  connect(toConnector.Psf, change_Psf.outputReal) annotation (Line(points={{32,
          -59.2},{-128,-59.2},{-128,-36.2},{-133.2,-36.2}}, color={0,0,255}));
  connect(Psf_init.y, change_Psf.inputReal) annotation (Line(points={{-179,-36},
          {-178,-36.2},{-154.8,-36.2}}, color={0,0,255}));
end Scenario_GrandChaud;
