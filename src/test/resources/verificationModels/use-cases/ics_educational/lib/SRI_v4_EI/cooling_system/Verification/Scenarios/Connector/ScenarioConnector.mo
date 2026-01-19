within cooling_system.Verification.Scenarios.Connector;
connector ScenarioConnector

  Boolean ouvreBranche1(start=true);
  Boolean ouvreBranche2(start=true);
  Boolean encP1(start=true);
  Boolean encP2(start=true);
  Boolean encP3(start=true);
  Boolean comVanneBache(start=false);
  Real load(start=25E6);
  Real leak(start=0.0);
  Real comUtil(start=0.36);
  Real Tsf(start=285);
  Real Psf(start=3E5);
  annotation (
    Icon(graphics={  Rectangle(fillColor = {38, 162, 105}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}})}));

end ScenarioConnector;
