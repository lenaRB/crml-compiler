within CRML_test.Utilities;
connector TimeLocatorConnector =
                           CRML.ETL.Types.TimeLocator
  "'Time locator' as acausal connector"                                      annotation (
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
          100}}), graphics={Rectangle(
        extent={{-100,100},{100,-100}},
        lineColor={0,0,0},
        fillColor={28,108,200},
        fillPattern=FillPattern.Forward)}), Diagram(graphics={
                            Rectangle(
        extent={{-100,100},{100,-100}},
        lineColor={0,0,0},
        fillColor={28,108,200},
        fillPattern=FillPattern.Forward)}));
