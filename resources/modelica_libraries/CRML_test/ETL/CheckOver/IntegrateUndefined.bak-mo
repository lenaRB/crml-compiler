within CRML_test.ETL.CheckOver;
block IntegrateUndefined
  import CRML.ETL.Types.Boolean4;

protected
  Boolean4 x(start=Boolean4.undefined, fixed=true);
  Boolean4 d;
  Boolean4 c;
  Boolean4 v;
  Boolean timePeriod(start=false, fixed=true) = tl.timePeriod;
  Boolean not_timePeriod(start=true, fixed=true) = not tl.timePeriod;
  Boolean sync1(start=false, fixed=true);
  Boolean sync2(start=false, fixed=true);

public
  CRML.ETL.Connectors.Boolean4Input u(start=Boolean4.false4, fixed=true)
    annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
  CRML.ETL.Connectors.Boolean4Output y
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  CRML.ETL.Connectors.TimeLocatorInput tl
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
public
  CRML.ETL.Connectors.Boolean4Input a
    annotation (Placement(transformation(extent={{-120,70},{-100,90}})));
                                      // Not taken into account in this version (set to undefined by default)
equation

  /* Compute the decision event d */
  d = CRML.Blocks.Logical4.or4(Boolean4.true4, CRML.ETL.Types.cvBooleanToBoolean4(edge(
    not_timePeriod)));

  /* Determine whether the change of the condition u happens at the same instant as the start of the time period tl */
  sync1 = u <> pre(u) and edge(timePeriod);

  /* Determine whether the change of the condition u happens at the same instant as the end of the time period tl */
  sync2 = u <> pre(u) and edge(not_timePeriod);

  /* Compute the condition c from the condition u within the bounds of the time period tl */
  c = if (tl.isLeftBoundaryIncluded and edge(sync1)) or (not tl.isRightBoundaryIncluded and edge(sync2)) then pre(u) else u;

  /* Compute the integral of c over the time period tl, taking into account the fact
     that the same time thread tl may accomodate several non-overlapping time periods */
  v = if timePeriod or edge(not_timePeriod) then
    CRML.ETL.Evaluator.TemporalOperators.mul4(d, c) else Boolean4.undefined;
  x = if edge(timePeriod) then CRML.Blocks.Logical4.and4(pre(x), v) else
    CRML.ETL.Evaluator.TemporalOperators.add4(pre(x), v);

  /* The output y is the value of the integral of c until the current time */
  y = x;

    annotation (Placement(transformation(extent={{100,-90},{120,-70}})),
              Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                                         Rectangle(
          extent={{-100,100},{100,-100}},
          fillColor={255,213,170},
          lineThickness=5,
          fillPattern=FillPattern.Solid,
          borderPattern=BorderPattern.Raised,
          lineColor={0,0,0}), Text(
          extent={{-76,54},{74,-50}},
          lineColor={0,0,0},
          fontName="Symbol",
          textString="")}),                                   Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end IntegrateUndefined;
