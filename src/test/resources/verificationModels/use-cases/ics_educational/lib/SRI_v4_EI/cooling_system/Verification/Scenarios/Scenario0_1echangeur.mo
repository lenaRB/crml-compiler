within cooling_system.Verification.Scenarios;
model Scenario0_1echangeur
  extends Utils.Scenario_init;
  cooling_system.Verification.Scenarios.Utils.RemoveClient deconnectClient
    annotation (Placement(transformation(origin={-138,16}, extent={{-10,-10},{
            10,10}})));
  Utils.IsoleBranche isoleBranche(at=50)
    annotation (Placement(transformation(extent={{-50,56},{-30,76}})));
equation
  connect(True.yL, toConnector.ouvreBranche1) annotation (Line(points={{-179,84},
          {18,84},{18,91.6},{31.6,91.6}}, color={0,0,255}));
  connect(False.yL, toConnector.encP3) annotation (Line(points={{-179,56},{-92,
          56},{-92,27.6},{31.6,27.6}}, color={0,0,255}));
  connect(False.yL, toConnector.comVanneBache) annotation (Line(points={{-179,
          56},{-92,56},{-92,28},{20,28},{20,11.2},{31.6,11.2}}, color={0,0,255}));
  connect(True.yL, toConnector.encP2) annotation (Line(points={{-179,84},{18,84},
          {18,43.6},{31.6,43.6}}, color={0,0,255}));
  connect(True.yL, toConnector.encP1) annotation (Line(points={{-179,84},{18,84},
          {18,59.6},{31.6,59.6}}, color={0,0,255}));
  connect(toConnector.load, deconnectClient.outputReal) annotation (Line(points
        ={{32,-26.4},{-122,-26.4},{-122,15.8},{-127.2,15.8}}, color={0,0,255}));
  connect(HotPower_init.y, deconnectClient.inputReal) annotation (Line(points={
          {-179,16},{-178,15.8},{-148.8,15.8}}, color={0,0,255}));
  connect(Tsf_init.y, toConnector.Tsf) annotation (Line(points={{-179,-10},{
          -124,-10},{-124,-42.8},{32,-42.8}}, color={0,0,255}));
  connect(Psf_init.y, toConnector.Psf) annotation (Line(points={{-179,-36},{
          -126,-36},{-126,-59.2},{32,-59.2}}, color={0,0,255}));
  connect(Util_init.y, toConnector.comUtil) annotation (Line(points={{-179,-64},
          {18,-64},{18,-75.6},{32,-75.6}}, color={0,0,255}));
  connect(Fuite_init1.y, toConnector.leak) annotation (Line(points={{-179,-90},
          {20,-90},{20,-91},{32,-91}}, color={0,0,255}));
  connect(toConnector.ouvreBranche2, isoleBranche.outputLogical) annotation (
      Line(points={{31.6,75.6},{6,75.6},{6,66},{-29,66}}, color={0,0,255}));
  connect(True.yL, isoleBranche.inputLogical) annotation (Line(points={{-179,84},
          {-56,84},{-56,66},{-51,66}}, color={0,0,255}));
end Scenario0_1echangeur;
