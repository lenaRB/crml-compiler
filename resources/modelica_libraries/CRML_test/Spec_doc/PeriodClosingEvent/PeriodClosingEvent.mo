within CRML_test.Spec_doc.PeriodClosingEvent;
partial model PeriodClosingEvent
  CRML.ETL.Connectors.TimeLocatorOutput[N] P
    annotation (Placement(transformation(extent={{-120,10},{-100,-10}})));
protected
    parameter Integer N=CRML.ETL.Types.nMaxOverlap;
public
  Utilities.BooleanConnector e
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  CRML.TimeLocators.Attributes.PeriodsEnd   periodsStart
    annotation (Placement(transformation(extent={{-6,-4},{2,4}})));
equation

  connect(P, periodsStart.tl) annotation (Line(points={{-110,0},{-56,0},{-56,4},
          {-2,4}}, color={0,0,255}));
  connect(periodsStart.y, e)
    annotation (Line(points={{2.4,0},{110,0}}, color={217,67,180}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end PeriodClosingEvent;
