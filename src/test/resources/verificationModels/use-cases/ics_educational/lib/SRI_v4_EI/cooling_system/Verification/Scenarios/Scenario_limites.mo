within cooling_system.Verification.Scenarios;
model Scenario_limites
  extends Utils.Scenario_init;
  Utils.AddClient addClient1 annotation (Placement(transformation(origin={-128,-2},
          extent={{-10,-10},{10,10}})));
  Utils.AddClient addClient2(at=400) annotation (Placement(transformation(
          origin={-98,-2},  extent={{-10,-10},{10,10}})));
  Utils.AddClient addClient3(at=600) annotation (Placement(transformation(
          origin={-66,-2}, extent={{-10,-10},{10,10}})));
  Utils.AddClient addClient4(at=800) annotation (Placement(transformation(
          origin={-34,-2}, extent={{-10,-10},{10,10}})));
equation
  connect(addClient1.outputReal, addClient2.inputReal) annotation (
    Line(points={{-117.2,-2.2},{-108.8,-2.2}},      color = {0, 0, 255}));
  connect(addClient2.outputReal, addClient3.inputReal) annotation (
    Line(points={{-87.2,-2.2},{-76.8,-2.2}},     color = {0, 0, 255}));
  connect(addClient3.outputReal, addClient4.inputReal) annotation (
    Line(points={{-55.2,-2.2},{-44.8,-2.2}},      color = {0, 0, 255}));
  connect(True.yL, toConnector.ouvreBranche1) annotation (Line(points={{-179,84},
          {18,84},{18,91.6},{31.6,91.6}}, color={0,0,255}));
  connect(True.yL, toConnector.ouvreBranche2) annotation (Line(points={{-179,84},
          {18,84},{18,75.6},{31.6,75.6}}, color={0,0,255}));
  connect(True.yL, toConnector.encP1) annotation (Line(points={{-179,84},{18,84},
          {18,59.6},{31.6,59.6}}, color={0,0,255}));
  connect(True.yL, toConnector.encP2) annotation (Line(points={{-179,84},{18,84},
          {18,60},{20,60},{20,43.6},{31.6,43.6}}, color={0,0,255}));
  connect(False.yL, toConnector.comVanneBache) annotation (Line(points={{-179,
          56},{18,56},{18,11.2},{31.6,11.2}}, color={0,0,255}));
  connect(False.yL, toConnector.encP3) annotation (Line(points={{-179,56},{18,
          56},{18,27.6},{31.6,27.6}}, color={0,0,255}));
  connect(HotPower_init.y, addClient1.inputReal) annotation (Line(points={{-179,
          16},{-158,16},{-158,-2.2},{-138.8,-2.2}}, color={0,0,255}));
  connect(toConnector.load, addClient4.outputReal) annotation (Line(points={{32,
          -26.4},{4,-26.4},{4,-2.2},{-23.2,-2.2}}, color={0,0,255}));
  connect(Tsf_init.y, toConnector.Tsf) annotation (Line(points={{-179,-10},{
          -144,-10},{-144,-42.8},{32,-42.8}}, color={0,0,255}));
  connect(Psf_init.y, toConnector.Psf) annotation (Line(points={{-179,-36},{
          -146,-36},{-146,-59.2},{32,-59.2}}, color={0,0,255}));
  connect(Util_init.y, toConnector.comUtil) annotation (Line(points={{-179,-64},
          {18,-64},{18,-75.6},{32,-75.6}}, color={0,0,255}));
  connect(Fuite_init1.y, toConnector.leak) annotation (Line(points={{-179,-90},
          {20,-90},{20,-91},{32,-91}}, color={0,0,255}));
end Scenario_limites;
