## Evaluation of surface bending energy from 3D confocal microscopic images

### Package description

This package, corresponding to the paper "A Regenerative Capsule Constructed by ahnak+ Macrophages Guides Silent Muscle Repair", provides the algorithm for evaluating surface bending free energy of  meshes reconstructed from 3D confocal microscopic images based on a minimal discrete Helfrich model.
1.  `EvaluationBendingEnergy`, workflow involving calculating principal and mean curvature on triangular mesh vertices, computing surface bending energy density, and integrating surface bending free energy.
2.  `IntegralBendingEnergy`, custom function for integrating surface bending free energy on vertices using barycentric tesselllation of triangular areas.

### System requirments
This package requires only a standard computer with enough RAM to support the in-memory operations.
This package was tested on Matlab_2022b.

### Installation guide
Open the MATLAB source file directly in MATLAB (version 2022b or later).

### Dependencies

Matlab packages:
[stlread](https://www.mathworks.com/matlabcentral/fileexchange/22409-stl-file-reader?s_tid=srchtitle) and
[Curvature Estimationl On triangle mesh ](https://www.mathworks.com/matlabcentral/fileexchange/47134-curvature-estimationl-on-triangle-mesh?s_tid=srchtitle). 
Additionally, small correction had been made for function `CalcFaceNormals` in package [Curvature Estimationl On triangle mesh ](https://www.mathworks.com/matlabcentral/fileexchange/47134-curvature-estimationl-on-triangle-mesh?s_tid=srchtitle), where line14:`e0=FV.vertices(FV.faces(:,3),:)-FV.vertices(FV.faces(:,2),:);` had been changed to `e0=FV.vertices(FV.faces(:,2),:)-FV.vertices(FV.faces(:,3),:);` for correctly calculation of face normals in our case.

### References
1.  Original Helfrich bending energy model: [W. Helfrich, Elastic Properties of Lipid Bilayers: Theory and Possible Experiments. 28, 693-703 (1973)](https://doi.org/10.1515/znc-1973-11-1209).
2.  Minimal discrete Helfrich model: [X. Bian, S. Litvinov, P. Koumoutsakos, Bending models of lipid bilayer membranes: Spontaneous curvature and area-difference elasticity. Computer Methods in Applied Mechanics and Engineering 359, 112758 (2020)](https://doi.org/10.1016/j.cma.2019.112758).
3.  Methods of estimating principal curvatures of mesh vertices: [S. Rusinkiewicz, in Symposium on 3D Data Processing, Visualization, and Transmission. (2004)](https://gfx.cs.princeton.edu/pubs/Rusinkiewicz_2004_ECA/index.php).
4.  Matlab package source publication on estimating principal curvatures: [Y. Ben Shabat, A. Fischer, Design of Porous Micro-Structures Using Curvature Analysis for Additive-Manufacturing. Procedia CIRP 36, 279-284 (2015)](https://doi.org/10.1016/j.procir.2015.01.057).
