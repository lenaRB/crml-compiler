within cooling_system.Verification.Scenarios.Connector;
model ToConnector
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical ouvreBranche1 annotation (
    Placement(transformation(origin={-142,458},   extent = {{-40, -40}, {40, 40}}), iconTransformation(origin={-142,458},   extent = {{-40, -40}, {40, 40}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical ouvreBranche2 annotation (
    Placement(transformation(origin={-142,378},   extent = {{-40, -40}, {40, 40}}), iconTransformation(origin={-142,378},   extent = {{-40, -40}, {40, 40}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal load annotation (
    Placement(transformation(origin={-140,-132},  extent = {{-40, -40}, {40, 40}}), iconTransformation(origin={-140,
            -132},                                                                                                          extent = {{-40, -40}, {40, 40}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal Tsf annotation (
    Placement(transformation(origin={-140,-214},  extent = {{-40, -40}, {40, 40}}), iconTransformation(origin={-140,
            -214},                                                                                                          extent = {{-40, -40}, {40, 40}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal Psf annotation (
    Placement(transformation(origin={-140,-296},   extent = {{-40, -40}, {40, 40}}), iconTransformation(origin={-140,
            -296},                                                                                                            extent = {{-40, -40}, {40, 40}})));
  ScenarioConnector c annotation (
    Placement(transformation(origin = {106, 0}, extent = {{-40, -40}, {40, 40}}), iconTransformation(origin={142,0},    extent={{-40,-40},
            {40,40}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical encP1
    annotation (Placement(transformation(origin={-142,298},extent={{-40,-40},{40,40}}),
    iconTransformation(origin={-142,298},extent={{-40,-40},{40,40}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical encP2
    annotation (Placement(transformation(origin={-110,42}, extent={{-40,-40},{40,
            40}}), iconTransformation(origin={-142,218},extent={{-40,-40},{40,40}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical encP3
    annotation (Placement(transformation(origin={-110,22}, extent={{-40,-40},{40,
            40}}), iconTransformation(origin={-142,138},extent={{-40,-40},{40,40}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical comVanneBache
    annotation (Placement(transformation(origin={-110,2}, extent={{-40,-40},{40,
            40}}), iconTransformation(origin={-142,56}, extent={{-40,-40},{40,40}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal leak annotation (
      Placement(transformation(origin={-140,-455},extent={{-40,-40},{40,40}}),
        iconTransformation(origin={-140,-455},extent={{-40,-40},{40,40}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal comUtil
    annotation (Placement(transformation(origin={-110,-104}, extent={{-40,-40},{40,40}}),
    iconTransformation(origin={-140,-378},extent={{-40,-40},{40,40}})));
equation

c.ouvreBranche1 = ouvreBranche1.signal;
c.ouvreBranche2 = ouvreBranche2.signal;
c.encP1 = encP1.signal;
c.encP2 = encP2.signal;
c.encP3 = encP3.signal;
c.comVanneBache = comVanneBache.signal;
c.load = load.signal;
c.Tsf = Tsf.signal;
c.Psf = Psf.signal;
c.leak = leak.signal;
c.comUtil = comUtil.signal;

annotation (
    Icon(coordinateSystem(extent={{-100,-500},{100,500}}),
         graphics={  Rectangle(extent={{-98,498},{100,-500}}),       Line(origin={-50.35,
              -400},                                                                            points={{-45.65,
              898},{106.35,400},{-49.6464,-100},{-49.6464,-100}},                                                                                                             thickness = 1), Line(origin = {50, 0}, points={{4,0},{
              50,0},{50,0}},                                                                                                                                                                                                        thickness = 1)}),
      Diagram(coordinateSystem(extent={{-100,-500},{100,500}})));
end ToConnector;
