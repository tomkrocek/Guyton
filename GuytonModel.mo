within ;
package GuytonModel
  model test
    Physiolibrary.Chemical.Components.Substance Z(solute_start=0.5)
      annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
    Physiolibrary.Chemical.Components.Substance Y(solute_start=0.1)
      annotation (Placement(transformation(extent={{40,0},{60,20}})));
    Physiolibrary.Chemical.Components.Stream Stream(useSolutionFlowInput=true,
        SolutionFlow=1.6666666666667e-05)
      annotation (Placement(transformation(extent={{-20,0},{0,20}})));
    Physiolibrary.Blocks.Math.Min min(nin=2)
      annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
  equation
    connect(Z.q_out, Stream.q_in) annotation (Line(
        points={{-70,10},{-20,10}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Stream.q_out, Y.q_out) annotation (Line(
        points={{0,10},{50,10}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(min.y, Stream.solutionFlow) annotation (Line(
        points={{-19,50},{-10,50},{-10,17}},
        color={0,0,127},
        smooth=Smooth.None));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}),      graphics));
  end test;
  annotation (uses(Physiolibrary(version="2.3.1alpha"), Modelica(version=
            "3.2.1")));
end GuytonModel;
