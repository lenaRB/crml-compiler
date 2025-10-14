within cooling_system.Behavior.SRIN4_v4;
model SRI "SRI built with ThermoSysPro v4.0"
  import SRIN4_v3 =
         cooling_system.Behavior.SRIN4_v4;
  parameter Real p_rho=1000;
  parameter Real p_rho_vol=1000;
  parameter Real p_rho_vanne=1000;
  parameter Real p_rho_pompe=1000;
  parameter Real p_rho_ech=1000;
  parameter Real p_rho_bache=1000;
  parameter Integer mode=0;
  ThermoSysPro.WaterSteam.Volumes.VolumeA VolumeA1(
    p_rho=p_rho_vol,
    mode=mode,
    h(start=71733),
    Ce2(Q(start=-6.94834)))
               annotation (Placement(transformation(extent={{260,0},{280,20}},
          rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.LumpedStraightPipe PerteDP1(
    L=1,
    lambda=0.005,
    p_rho=p_rho,
    mode=mode,
    C1(P(start=313105)),
    C2(P(start=302810)))
               annotation (Placement(transformation(extent={{-20,0},{0,20}},
          rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.ControlValve VanneUtil(
                                                p_rho=p_rho, mode=mode,
    C1(h_vol(start=71733), P(start=538486)),
    Pm(start=454907),
    C2(P(start=371329)))
    annotation (Placement(transformation(extent={{80,-184},{60,-164}},
          rotation=0)));
  ThermoSysPro.ElectroMechanics.Machines.SynchronousMotor Moteur2(Im(start=
          2157))                    annotation (Placement(transformation(
          extent={{40,-60},{60,-40}}, rotation=0)));
  ThermoSysPro.WaterSteam.BoundaryConditions.SourceP SourceP3
                                     annotation (Placement(transformation(
          extent={{-100,250},{-80,270}}, rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.SwitchValve VanneTOR1(
    Qmin=0,
    p_rho=p_rho_vanne,
    mode=mode,
    Q(start=0),
    Pm(start=200650))
               annotation (Placement(transformation(extent={{-60,256},{-40,
            276}}, rotation=0)));
  ThermoSysPro.WaterSteam.Volumes.VolumeD VolumeD2(
    p_rho=p_rho_vol,
    mode=mode,
    h(start=107545),
    Cs1(Q(start=324)),
    Cs2(Q(start=245)),
    P(displayUnit="Pa", start=361174))
               annotation (Placement(transformation(extent={{-380,0},{-360,20}},
          rotation=0)));
  ThermoSysPro.WaterSteam.Volumes.VolumeC VolumeC2(
    p_rho=p_rho_vol,
    mode=mode,
    h(start=71612.6),
    P(start=323241, displayUnit="Pa"))
               annotation (Placement(transformation(extent={{-180,0},{-160,20}},
          rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.ControlValve VanneSerie1(
                                                  p_rho=p_rho_vanne, mode=
        mode,
    Q(start=324),
    C1(h_vol(start=57940.3), P(start=337884)))
              annotation (Placement(transformation(extent={{-220,66},{-200,86}},
          rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.ControlValve VanneSerie2(
                                                  p_rho=p_rho_vanne, mode=
        mode,
    C1(h_vol(start=57940.3), P(start=337884)))
              annotation (Placement(transformation(extent={{-220,6},{-200,26}},
          rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.ControlValve VanneBypass(
                                                  p_rho=p_rho_vanne, mode=
        mode,
    Q(start=245))
              annotation (Placement(transformation(extent={{-220,-58},{-200,
            -38}}, rotation=0)));
  ThermoSysPro.Thermal.BoundaryConditions.HeatSource SourceC1(
                                                  option_temperature=2, T0={
        323.15})
    annotation (Placement(transformation(extent={{-50,-112},{-30,-92}},
          rotation=0)));
  ThermoSysPro.Thermal.HeatTransfer.ConvectiveHeatFlow Flux1(
                                 A={800})
    annotation (Placement(transformation(extent={{-50,-154},{-30,-134}},
          rotation=0)));
  ThermoSysPro.WaterSteam.Volumes.VolumeDTh VolumeD3(
    p_rho=p_rho_vol,
    mode=mode,
    h(start=107545),
    Cs1(Q(start=0)))
               annotation (Placement(transformation(extent={{-78,-190},{-98,
            -170}}, rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.ControlValve VanneFuite(
    Cvmax=500,
    p_rho=p_rho_vanne,
    mode=mode,
    Q(start=0))
               annotation (Placement(transformation(
        origin={-94,-140},
        extent={{-10,-10},{10,10}},
        rotation=90)));
  ThermoSysPro.WaterSteam.BoundaryConditions.SinkP PuitsP3
    annotation (Placement(transformation(
        origin={-88,-100},
        extent={{-10,-10},{10,10}},
        rotation=90)));
  ThermoSysPro.WaterSteam.PressureLosses.LumpedStraightPipe PerteDP4(
    L=1,
    lambda=0.005,
    p_rho=p_rho,
    mode=mode,
    C1(P(start=371329)),
    C2(P(start=361174)))
               annotation (Placement(transformation(extent={{-260,-190},{-280,
            -170}}, rotation=0)));
  ThermoSysPro.WaterSteam.HeatExchangers.DynamicWaterWaterExchanger
    EchangeurAPlaques1D1(
    N=5,
    p_rhoc=p_rho_ech,
    p_rhof=p_rho_ech,
    modec=mode,
    modef=mode,
    Hcc(start={107545,89041.1,76592.9,68054.3,62114.9,57940.3}),
    Hcf(start={61856.9,57460.1,54502.3,52473.4,51062.1,50070.2}),
    Ef(h(start=50070.2)),
    Hmc(start={98293.1,82817,72323.6,65084.6,60027.6}),
    Qf(start={1064,1064,1064,1064,1064}),
    Hmf(start={59658.5,55981.2,53487.8,51767.8,50566.2}),
    Sf(h(start=61856.9)),
    muf(start={0.0012,0.0012,0.0012,0.0012,0.0012}),
    Ec(P(start=361174), h_vol(start=107545)),
    Pcc(start={361174,356572,351934,347268,342583,337884}, each displayUnit="Pa"),
    prof(d(start={999.227,999.366,999.462,999.531,999.585})))
                annotation (Placement(transformation(extent={{-300,60},{-280,
            80}}, rotation=0)));

  ThermoSysPro.WaterSteam.BoundaryConditions.SourceP SourceP1(
                                     T0=285)
    annotation (Placement(transformation(extent={{-322,40},{-302,60}},
          rotation=0)));
  ThermoSysPro.WaterSteam.BoundaryConditions.SinkP PuitsP1(
                                   T0=285)
    annotation (Placement(transformation(extent={{-280,40},{-260,60}},
          rotation=0)));
  ThermoSysPro.WaterSteam.HeatExchangers.DynamicWaterWaterExchanger
    EchangeurAPlaques1D2(
    N=5,
    p_rhoc=p_rho_ech,
    p_rhof=p_rho_ech,
    modec=mode,
    modef=mode,
    Ef(h(start=50070.2)),
    Hcc(start={107545,89041.1,76592.9,68054.3,62114.9,57940.3}),
    Hcf(start={61856.9,57460.1,54502.3,52473.4,51062.1,50070.2}),
    Qf(start={1064,1064,1064,1064,1064}),
    Hmc(start={98293.1,82817,72323.6,65084.6,60027.6}),
    Hmf(start={59658.5,55981.2,53487.8,51767.8,50566.2}),
    Sf(h(start=61856.9)),
    muf(start={0.0012,0.0012,0.0012,0.0012,0.0012}),
    Ec(P(start=361174), h_vol(start=107545)),
    Pcc(start={361174,356572,351934,347268,342583,337884}),
    prof(d(start={999.227,999.366,999.462,999.531,999.585})))
                annotation (Placement(transformation(extent={{-300,0},{-280,
            20}}, rotation=0)));
  ThermoSysPro.WaterSteam.BoundaryConditions.SourceP SourceP2(
                                     T0=285)
    annotation (Placement(transformation(extent={{-320,-20},{-300,0}},
          rotation=0)));
  ThermoSysPro.WaterSteam.BoundaryConditions.SinkP PuitsP2(
                                   T0=285)
    annotation (Placement(transformation(extent={{-280,-20},{-260,0}},
          rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Terminate Terminate1
    annotation (Placement(transformation(extent={{-340,260},{-320,280}},
          rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante FinSimu(
                                  K=false)
    annotation (Placement(transformation(extent={{-380,260},{-360,280}},
          rotation=0)));
  ThermoSysPro.WaterSteam.Volumes.VolumeC VolumeC1(
    p_rho=p_rho_vol,
    mode=mode,
    h(start=71733),
    Ce1(h_vol(start=71733)),
    Ce3(Q(start=0)),
    P(start=548779, displayUnit="Pa"))
               annotation (                          Placement(transformation(
          extent={{180,0},{200,20}}, rotation=0)));
  ThermoSysPro.WaterSteam.Volumes.VolumeD VolumeD1(
    p_rho=p_rho_vol,
    mode=mode,
    Cs1(h(start=71551.9)),
    Cs2(h(start=71733)),
    Cs3(h(start=71551.9)),
    h(start=71551.9))
               annotation (Placement(transformation(extent={{20,0},{40,20}},
          rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.IdealCheckValve ClapetDP0_1(
                                              Qmin=0, C1(h_vol(start=71733),
        P(start=548779)))
    annotation (Placement(transformation(extent={{140,0},{160,20}}, rotation=
            0)));
  ThermoSysPro.ElectroMechanics.Machines.SynchronousMotor Moteur1(Im(start=
          2157))                    annotation (Placement(transformation(
          extent={{40,40},{60,60}}, rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.IdealCheckValve ClapetDP0_2(
                                              Qmin=0, C1(P(start=548779),
        h_vol(start=71733)))
    annotation (Placement(transformation(extent={{140,100},{160,120}},
          rotation=0)));
  ThermoSysPro.ElectroMechanics.Machines.SynchronousMotor Moteur3(Im(start=0))
                                    annotation (Placement(transformation(
          extent={{40,-140},{60,-120}}, rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.IdealCheckValve ClapetDP0_3(
                                              Qmin=0, C1(P(start=302810),
        h_vol(start=71733)))
    annotation (Placement(transformation(extent={{140,-80},{160,-60}},
          rotation=0)));
  ThermoSysPro.WaterSteam.Machines.CentrifugalPump PompeCentrifugeDyn1(
    p_rho=p_rho_pompe,
    mode=mode,
    Q(start=447),
    dynamic_mech_equation=true,
    dynamic_energy_balance=true,
    Cr(start=890.9),
    w_a(start=1),
    hn(start=25.1),
    Qv(start=0.45),
    C1(h(start=71551.9)),
    C2(h_vol(start=71733), P(start=548779)),
    h(start=71642.4))
               annotation (Placement(transformation(extent={{100,100},{120,
            120}}, rotation=0)));
  ThermoSysPro.WaterSteam.Machines.CentrifugalPump PompeCentrifugeDyn2(
    p_rho=p_rho_pompe,
    mode=mode,
    Cr(start=890.9),
    dynamic_mech_equation=true,
    dynamic_energy_balance=true,
    w_a(start=1),
    hn(start=25.1),
    Qv(start=0.45),
    C1(h(start=71551.9)),
    C2(
      P(start=548779),
      h_vol(start=71733),
      h(start=71733)))
               annotation (Placement(transformation(extent={{100,0},{120,20}},
          rotation=0)));
  ThermoSysPro.WaterSteam.Machines.CentrifugalPump PompeCentrifugeDyn3(
    p_rho=p_rho_pompe,
    mode=mode,
    Q(start=0),
    Qv(start=0),
    dynamic_mech_equation=true,
    dynamic_energy_balance=true,
    Cr(start=0),
    w_a(start=0),
    hn(start=0),
    C1(h(start=71733), P(start=302810)),
    C2(
      h_vol(start=71733),
      P(start=302810),
      h(start=71733)))
               annotation (Placement(transformation(extent={{100,-80},{120,
            -60}}, rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.IdealSwitchValve VanneTOR0_1(
                                              Qmin=0, C2(h_vol(start=107545)))
    annotation (Placement(transformation(extent={{-340,66},{-320,86}},
          rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.IdealSwitchValve VanneTOR0_2(
                                              Qmin=0, C2(h_vol(start=107545)))
    annotation (Placement(transformation(extent={{-340,6},{-320,26}},
          rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.LumpedStraightPipe PerteDP5(
    L=1,
    lambda=0.005,
    p_rho=p_rho,
    mode=mode,
    C1(P(start=548779)),
    Q(start=901))
               annotation (Placement(transformation(extent={{220,0},{240,20}},
          rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.LumpedStraightPipe PerteDP6(
    L=30,
    D=0.05,
    z2=30,
    p_rho=p_rho,
    mode=mode,
    C2(P(start=131784)))
               annotation (Placement(transformation(
        origin={-50,110},
        extent={{-10,10},{10,-10}},
        rotation=90)));
  ThermoSysPro.WaterSteam.BoundaryConditions.SinkP PuitsP4(Q(start=0))
                                   annotation (Placement(transformation(
          extent={{160,222},{180,242}}, rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.LumpedStraightPipe PerteDP3(
    D=0.3,
    lambda=0.005,
    p_rho=p_rho,
    mode=mode) annotation (Placement(transformation(extent={{120,222},{140,
            242}}, rotation=0)));
  ThermoSysPro.WaterSteam.BoundaryConditions.SourceP SourceP4(Q(start=0))
                                     annotation (Placement(transformation(
          extent={{-100,210},{-80,230}}, rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.SwitchValve VanneTOR2(
    Qmin=0,
    p_rho=p_rho_vanne,
    mode=mode,
    Q(start=0))
               annotation (Placement(transformation(extent={{-60,216},{-40,
            236}}, rotation=0)));
  ThermoSysPro.WaterSteam.Volumes.VolumeC VolumeC3(
    p_rho=p_rho_vol,
    mode=mode,
    Cs(Q(start=0)))
               annotation (Placement(transformation(extent={{-10,230},{10,250}},
          rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.LumpedStraightPipe PerteDP7(
    lambda=0.005,
    p_rho=p_rho,
    mode=mode,
    C1(P(start=101300)),
    C2(P(start=101300)))
               annotation (Placement(transformation(extent={{20,230},{40,250}},
          rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.LumpedStraightPipe PerteDP8(
    L=30,
    D=0.05,
    z1=30,
    p_rho=p_rho,
    mode=mode,
    C1(P(start=131784)))
               annotation (Placement(transformation(
        origin={270,110},
        extent={{10,-10},{-10,10}},
        rotation=90)));
  SRIN4_v3.ReguNiveau_simple
             ReguNiveau1       annotation (Placement(transformation(extent={{-124,
            278},{-84,318}},       rotation=0)));
  ThermoSysPro.WaterSteam.Volumes.VolumeA VolumeA2(
    p_rho=p_rho_vol,
    mode=mode,
    h(start=71444.9))
               annotation (Placement(transformation(extent={{-60,20},{-40,0}},
          rotation=0)));
  ThermoSysPro.ElectroMechanics.Machines.Shaft CoupleurMecanique1(
                                                          Ke=2)
    annotation (Placement(transformation(extent={{80,40},{100,60}}, rotation=
            0)));
  ThermoSysPro.ElectroMechanics.Machines.Shaft CoupleurMecanique2(
                                                          Ke=2)
    annotation (Placement(transformation(extent={{80,-60},{100,-40}},
          rotation=0)));
  ThermoSysPro.ElectroMechanics.Machines.Shaft CoupleurMecanique3(
                                                          Ke=2)
    annotation (Placement(transformation(extent={{80,-140},{100,-120}},
          rotation=0)));
  ThermoSysPro.WaterSteam.Volumes.Tank Bache1(
    A=7,
    ze1=5,
    zs1=4.70,
    z0=3.11,
    p_rho=p_rho_bache,
    mode=mode,
    Cs1(Q(start=0)),
    Ce1(Q(start=0)),
    Ce2(Q(start=-6.94)))
               annotation (Placement(transformation(extent={{60,200},{100,240}},
          rotation=0)));
  ThermoSysPro.WaterSteam.Sensors.SensorT CapteurT1(T(start=17 + 273.15), C2(
        h_vol(start=71612.6)))
    annotation (Placement(transformation(extent={{-150,8},{-130,28}},
          rotation=0)));
  ThermoSysPro.WaterSteam.PressureLosses.LumpedStraightPipe PerteDP2(
    L=1,
    lambda=0.005,
    p_rho=p_rho,
    mode=mode,
    Q(start=880),
    C1(h_vol(start=71612.6), P(start=323241)))
               annotation (Placement(transformation(extent={{-100,0},{-80,20}},
          rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.AND and1 annotation (
    Placement(transformation(origin={-390,62},     extent = {{-10, -10}, {10, 10}})));
  Verification.Scenarios.Connector.ScenarioConnector scenario annotation (
      Placement(transformation(origin={-478,70}, extent={{-10,-10},{10,10}}),
        iconTransformation(origin={-416,60}, extent={{-36,-36},{36,36}})));
  Verification.Scenarios.Connector.BooleanExpression ouvreBranche1(y=scenario.ouvreBranche1)
    annotation (Placement(transformation(extent={{-440,84},{-420,104}})));
  Verification.Scenarios.Connector.BooleanExpression ouvreBranche2(y=scenario.ouvreBranche2)
    annotation (Placement(transformation(extent={{-438,24},{-418,44}})));
  Verification.Scenarios.Connector.RealExpression Psf(y=scenario.Psf)
    annotation (Placement(transformation(extent={{-366,-38},{-346,-18}})));
  Verification.Scenarios.Connector.RealExpression Tsf(y=scenario.Tsf)
    annotation (Placement(transformation(extent={{-330,98},{-310,118}})));
  Verification.Scenarios.Connector.RealExpression load(y=scenario.load)
    annotation (Placement(transformation(extent={{-74,-82},{-54,-62}})));
  Verification.Scenarios.Connector.RealExpression leak(y=scenario.leak)
    annotation (Placement(transformation(extent={{-136,-150},{-116,-130}})));
  Verification.Scenarios.Connector.RealExpression comUtil(y=scenario.comUtil)
    annotation (Placement(transformation(extent={{30,-160},{50,-140}})));
  Verification.Scenarios.Connector.BooleanExpression encP1(y=scenario.encP1)
    annotation (Placement(transformation(extent={{-12,54},{8,74}})));
  Verification.Scenarios.Connector.BooleanExpression encP2(y=scenario.encP2)
    annotation (Placement(transformation(extent={{-8,-44},{12,-24}})));
  Verification.Scenarios.Connector.BooleanExpression encP3(y=scenario.encP3)
    annotation (Placement(transformation(extent={{-8,-122},{12,-102}})));
  Verification.Scenarios.Connector.BooleanExpression comVanneBache(y=scenario.comVanneBache)
    annotation (Placement(transformation(extent={{-126,234},{-106,254}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante
    comVanne_constante(k=0.5)
    annotation (Placement(transformation(extent={{-270,132},{-250,152}})));
equation
  connect(SourceP3.C, VanneTOR1.C1) annotation (
    Line(points = {{-80, 260}, {-60, 260}}, color = {0, 0, 255}));
  connect(PuitsP3.C, VanneFuite.C2) annotation (
    Line(points = {{-88, -110}, {-88, -130}}, color = {0, 0, 255}));
  connect(SourceP1.C, EchangeurAPlaques1D1.Ef) annotation (
    Line(points={{-302,50},{-295,50},{-295,64}},        color = {0, 0, 255}));
  connect(PuitsP1.C, EchangeurAPlaques1D1.Sf) annotation (
    Line(points = {{-280, 50}, {-285, 50}, {-285, 64}}, color = {0, 0, 255}));
  connect(SourceP2.C, EchangeurAPlaques1D2.Ef) annotation (
    Line(points={{-300,-10},{-295,-10},{-295,4}},        color = {0, 0, 255}));
  connect(PuitsP2.C, EchangeurAPlaques1D2.Sf) annotation (
    Line(points={{-280,-10},{-285,-10},{-285,4}},        color = {0, 0, 255}));
  connect(FinSimu.yL, Terminate1.uL) annotation (
    Line(points = {{-359, 270}, {-341, 270}}));
  connect(PerteDP3.C2, PuitsP4.C) annotation (
    Line(points = {{140, 232}, {160, 232}}, color = {0, 0, 255}));
  connect(SourceP4.C, VanneTOR2.C1) annotation (
    Line(points = {{-80, 220}, {-60, 220}}, color = {0, 0, 255}));
  connect(ReguNiveau1.yvanne, VanneTOR1.Ouv) annotation (
    Line(points={{-83.3333,283.333},{-50,283.333},{-50,273.2}}));
  connect(Moteur1.C, CoupleurMecanique1.C1) annotation (
    Line(points = {{60.2, 50}, {79, 50}}, color = {217, 67, 180}));
  connect(Moteur2.C, CoupleurMecanique2.C1) annotation (
    Line(points = {{60.2, -50}, {79, -50}}, color = {217, 67, 180}));
  connect(Moteur3.C, CoupleurMecanique3.C1) annotation (
    Line(points = {{60.2, -130}, {79, -130}}, color = {217, 67, 180}));
  connect(VolumeD3.Cth, Flux1.C2) annotation (
    Line(points = {{-88, -180}, {-64, -180}, {-64, -154}, {-40, -154}}, color = {191, 95, 0}));
  connect(SourceC1.C[1], Flux1.C1) annotation (
    Line(points = {{-40, -111.8}, {-40, -134}}, color = {191, 95, 0}));
  connect(VolumeC2.Cs, CapteurT1.C1) annotation (
    Line(points = {{-160, 10}, {-150, 10}}, color = {0, 0, 255}));
  connect(CapteurT1.C2, PerteDP2.C1) annotation (
    Line(points = {{-129.8, 10}, {-100, 10}}, color = {0, 0, 255}));
  connect(PerteDP2.C2, VolumeA2.Ce1) annotation (
    Line(points = {{-80, 10}, {-60, 10}}, color = {0, 0, 255}));
  connect(VolumeA2.Cs1, PerteDP1.C1) annotation (
    Line(points = {{-40, 10}, {-20, 10}}, color = {0, 0, 255}));
  connect(PerteDP1.C2, VolumeD1.Ce) annotation (
    Line(points = {{0, 10}, {20, 10}}, color = {0, 0, 255}));
  connect(PerteDP5.C2, VolumeA1.Ce1) annotation (
    Line(points = {{240, 10}, {260, 10}}, color = {0, 0, 255}));
  connect(VolumeC1.Cs, PerteDP5.C1) annotation (
    Line(points = {{200, 10}, {220, 10}}, color = {0, 0, 255}));
  connect(VanneFuite.C1, VolumeD3.Cs1) annotation (
    Line(points = {{-88, -150}, {-88, -170}}, color = {28, 108, 200}));
  connect(VanneUtil.C2, VolumeD3.Ce) annotation (
    Line(points = {{60, -180}, {-78, -180}}, color = {28, 108, 200}));
  connect(VanneUtil.C1, VolumeA1.Cs1) annotation (
    Line(points = {{80, -180}, {290, -180}, {290, 10}, {280, 10}}, color = {28, 108, 200}));
  connect(VanneTOR1.C2, VolumeC3.Ce2) annotation (
    Line(points = {{-40, 260.2}, {-20, 260.2}, {-20, 260}, {0, 260}, {0, 249}}, color = {0, 0, 255}));
  connect(VanneTOR2.C2, VolumeC3.Ce3) annotation (
    Line(points = {{-40, 220.2}, {-20, 220.2}, {-20, 220}, {0, 220}, {0, 230}}, color = {0, 0, 255}));
  connect(VolumeC3.Cs, PerteDP7.C1) annotation (
    Line(points = {{10, 240}, {20, 240}}, color = {0, 0, 255}));
  connect(VolumeC1.Ce3, ClapetDP0_3.C2) annotation (
    Line(points = {{190, 0}, {190, -70}, {160, -70}}, color = {28, 108, 200}));
  connect(VolumeC1.Ce1, ClapetDP0_1.C2) annotation (
    Line(points = {{180, 10}, {160, 10}}, color = {28, 108, 200}));
  connect(ClapetDP0_1.C1, PompeCentrifugeDyn2.C2) annotation (
    Line(points = {{140, 10}, {120, 10}}, color = {28, 108, 200}));
  connect(PompeCentrifugeDyn2.C1, VolumeD1.Cs3) annotation (
    Line(points = {{100, 10}, {40, 10}}, color = {28, 108, 200}));
  connect(VanneTOR0_1.C2, EchangeurAPlaques1D1.Ec) annotation (
    Line(points = {{-320, 70}, {-300, 70}}, color = {28, 108, 200}));
  connect(VanneTOR0_1.C1, VolumeD2.Cs1) annotation (
    Line(points = {{-340, 69.8}, {-370, 69.8}, {-370, 20}}, color = {28, 108, 200}));
  connect(EchangeurAPlaques1D2.Ec, VanneTOR0_2.C2) annotation (
    Line(points = {{-300, 10}, {-320, 10}}, color = {28, 108, 200}));
  connect(VanneTOR0_2.C1, VolumeD2.Cs3) annotation (
    Line(points = {{-340, 9.8}, {-350, 9.8}, {-350, 10}, {-360, 10}}, color = {28, 108, 200}));
  connect(VanneSerie1.C2, VolumeC2.Ce2) annotation (
    Line(points = {{-200, 70}, {-170, 70}, {-170, 19}}, color = {28, 108, 200}));
  connect(VanneSerie1.C1, EchangeurAPlaques1D1.Sc) annotation (
    Line(points = {{-220, 70}, {-280, 70}}, color = {28, 108, 200}));
  connect(VolumeC2.Ce1, VanneSerie2.C2) annotation (
    Line(points = {{-180, 10}, {-200, 10}}, color = {28, 108, 200}));
  connect(VanneSerie2.C1, EchangeurAPlaques1D2.Sc) annotation (
    Line(points = {{-220, 10}, {-280, 10}}, color = {28, 108, 200}));
  connect(VolumeC2.Ce3, VanneBypass.C2) annotation (
    Line(points = {{-170, 0}, {-170, -54}, {-200, -54}}, color = {28, 108, 200}));
  connect(VanneBypass.C1, VolumeD2.Cs2) annotation (
    Line(points = {{-220, -54}, {-370, -54}, {-370, 0.2}}, color = {28, 108, 200}));
  connect(VolumeD3.Cs3, PerteDP4.C1) annotation (
    Line(points = {{-98, -180}, {-260, -180}}, color = {28, 108, 200}));
  connect(VolumeD2.Ce, PerteDP4.C2) annotation (
    Line(points = {{-380, 10}, {-390, 10}, {-390, -180}, {-280, -180}}, color = {28, 108, 200}));
  connect(PerteDP8.C2, VolumeA1.Ce2) annotation (
    Line(points = {{270, 100}, {270, 19.8}}, color = {28, 108, 200}));
  connect(PerteDP6.C1, VolumeA2.Cs2) annotation (
    Line(points = {{-50, 100}, {-50, 20}}));
  connect(ClapetDP0_2.C2, VolumeC1.Ce2) annotation (
    Line(points = {{160, 110}, {190, 110}, {190, 19}}, color = {28, 108, 200}));
  connect(PompeCentrifugeDyn1.C1, VolumeD1.Cs1) annotation (
    Line(points = {{100, 110}, {30, 110}, {30, 20}}, color = {28, 108, 200}));
  connect(ClapetDP0_2.C1, PompeCentrifugeDyn1.C2) annotation (
    Line(points = {{140, 110}, {120, 110}}, color = {28, 108, 200}));
  connect(Bache1.yLevel, ReguNiveau1.univeau) annotation (
    Line(points={{102,224},{112,224},{112,332},{-136,332},{-136,298},{-124.667,
          298}}));
  connect(Bache1.Ce2, PerteDP6.C2) annotation (
    Line(points = {{60, 208}, {-50, 208}, {-50, 120}}, color = {28, 108, 200}));
  connect(Bache1.Ce1, PerteDP7.C2) annotation (
    Line(points = {{60, 232}, {52, 232}, {52, 240}, {40, 240}}));
  connect(Bache1.Cs1, PerteDP3.C1) annotation (
    Line(points = {{100.4, 232}, {120, 232}}, color = {0, 0, 255}));
  connect(Bache1.Cs2, PerteDP8.C1) annotation (
    Line(points = {{100, 208}, {270, 208}, {270, 120}}, color = {28, 108, 200}));
  connect(ClapetDP0_3.C1, PompeCentrifugeDyn3.C2) annotation (
    Line(points = {{140, -70}, {120, -70}}, color = {28, 108, 200}));
  connect(PompeCentrifugeDyn3.C1, VolumeD1.Cs2) annotation (
    Line(points = {{100, -70}, {30, -70}, {30, 0.2}}, color = {28, 108, 200}));
  connect(CoupleurMecanique3.C2, PompeCentrifugeDyn3.M) annotation (
    Line(points = {{101, -130}, {110, -130}, {110, -81}}, color = {217, 67, 180}));
  connect(CoupleurMecanique2.C2, PompeCentrifugeDyn2.M) annotation (
    Line(points = {{101, -50}, {110, -50}, {110, -1}}, color = {217, 67, 180}));
  connect(CoupleurMecanique1.C2, PompeCentrifugeDyn1.M) annotation (
    Line(points = {{101, 50}, {110, 50}, {110, 99}}, color = {217, 67, 180}));
  connect(ouvreBranche2.yL, and1.uL2) annotation (Line(points={{-417,34},{-412,
          34},{-412,56},{-401,56}},
                                color={0,0,255}));
  connect(ouvreBranche2.yL, VanneTOR0_2.Ouv)
    annotation (Line(points={{-417,34},{-330,34},{-330,23}}, color={0,0,255}));
  connect(ouvreBranche1.yL, and1.uL1) annotation (Line(points={{-419,94},{-410,94},
          {-410,68},{-401,68}}, color={0,0,255}));
  connect(ouvreBranche1.yL, VanneTOR0_1.Ouv)
    annotation (Line(points={{-419,94},{-330,94},{-330,83}}, color={0,0,255}));
  connect(load.yR, SourceC1.ISignal) annotation (Line(points={{-53,-72},{-40,
          -72},{-40,-97}},
                      color={0,0,255}));
  connect(Tsf.yR, SourceP1.ITemperature) annotation (Line(points={{-309,108},{
          -292,108},{-292,90},{-312,90},{-312,55}},
                                                 color={0,0,255}));
  connect(Tsf.yR, PuitsP1.ITemperature) annotation (Line(points={{-309,108},{
          -288,108},{-288,90},{-270,90},{-270,55}},
                           color={0,0,255}));
  connect(Tsf.yR, SourceP2.ITemperature) annotation (Line(points={{-309,108},{
          -252,108},{-252,26},{-310,26},{-310,-5}},
                                               color={0,0,255}));
  connect(Psf.yR, SourceP2.IPressure) annotation (Line(points={{-345,-28},{-332,
          -28},{-332,-10},{-315,-10}}, color={0,0,255}));
  connect(Psf.yR, SourceP1.IPressure) annotation (Line(points={{-345,-28},{-332,
          -28},{-332,0},{-348,0},{-348,50},{-317,50}}, color={0,0,255}));
  connect(Tsf.yR, PuitsP2.ITemperature) annotation (Line(points={{-309,108},{
          -252,108},{-252,-5},{-270,-5}},        color={0,0,255}));
  connect(leak.yR, VanneFuite.Ouv)
    annotation (Line(points={{-115,-140},{-105,-140}}, color={0,0,255}));
  connect(comUtil.yR, VanneUtil.Ouv) annotation (Line(points={{51,-150},{51,
          -152},{70,-152},{70,-163}}, color={0,0,255}));
  connect(encP1.yL, Moteur1.marche)
    annotation (Line(points={{9,64},{50,64},{50,54.4}}, color={0,0,255}));
  connect(encP3.yL, Moteur3.marche) annotation (Line(points={{13,-112},{50,-112},
          {50,-125.6}}, color={0,0,255}));
  connect(encP2.yL, Moteur2.marche)
    annotation (Line(points={{13,-34},{50,-34},{50,-45.6}}, color={0,0,255}));
  connect(comVanneBache.yL, VanneTOR2.Ouv) annotation (Line(points={{-105,244},
          {-50,244},{-50,233.2}}, color={0,0,255}));
  connect(comVanne_constante.y, VanneSerie1.Ouv) annotation (Line(points={{-249,
          142},{-228,142},{-228,100},{-210,100},{-210,87}}, color={0,0,255}));
  connect(comVanne_constante.y, VanneSerie2.Ouv) annotation (Line(points={{-249,
          142},{-228,142},{-228,38},{-210,38},{-210,27}}, color={0,0,255}));
  connect(comVanne_constante.y, VanneBypass.Ouv) annotation(
    Line(points = {{-249, 142}, {-228, 142}, {-228, -24}, {-210, -24}, {-210, -37}}, color = {0, 0, 255}));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent = {{-420, -200}, {300, 340}},
        grid={2,2},
        initialScale=0.1)),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-420,-200},{300,340}},
        grid={2,2},
        initialScale=0.1), graphics={Rectangle(origin = {20, -2}, extent = {{-420, 342}, {280, -198}}),
          Text(origin = {0, 388},extent={{-302,114},{200,-42}}, textString=
                              "%name"), Rectangle(origin = {-45, 69}, fillColor = {153, 193, 241}, fillPattern = FillPattern.Solid, extent = {{-335, -257}, {335, 257}}), Text(origin = {-43, 75}, extent = {{-141, 69}, {141, -69}}, textString = "SRI")}),
    Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
"), experiment(StopTime=1000, __Dymola_Algorithm="Dassl"));
end SRI;