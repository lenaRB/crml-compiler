within cooling_system.Verification.Scenarios;
model Scenario0_2echangeurs
  extends Utils.Scenario_init;
  Utils.RemoveClient deconnectClient annotation (Placement(transformation(
          origin={-146,16}, extent={{-10,-10},{10,10}})));
equation
  connect(deconnectClient.outputReal, toConnector.load) annotation (Line(points
        ={{-135.2,15.8},{-52,15.8},{-52,-26.4},{32,-26.4}}, color={0,0,255}));
  connect(HotPower_init.y, deconnectClient.inputReal) annotation (Line(points={
          {-179,16},{-168,16},{-168,15.8},{-156.8,15.8}}, color={0,0,255}));
  connect(Tsf_init.y, toConnector.Tsf) annotation (Line(points={{-179,-10},{-54,
          -10},{-54,-42.8},{32,-42.8}}, color={0,0,255}));
  connect(Psf_init.y, toConnector.Psf) annotation (Line(points={{-179,-36},{-56,
          -36},{-56,-59.2},{32,-59.2}}, color={0,0,255}));
  connect(Util_init.y, toConnector.comUtil) annotation (Line(points={{-179,-64},
          {18,-64},{18,-75.6},{32,-75.6}}, color={0,0,255}));
  connect(Fuite_init1.y, toConnector.leak) annotation (Line(points={{-179,-90},
          {20,-90},{20,-91},{32,-91}}, color={0,0,255}));
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
end Scenario0_2echangeurs;
