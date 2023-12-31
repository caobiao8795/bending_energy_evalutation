## Evaluation of surface bending energy from 3D confocal microscopic images

### Package description

This package, corresponding to the paper "______________________________________________________________", provide the algorithm to evaluate surface bending free energy of  meshes reconstructed from 3D confocal microscopic images according to a minimal discrete Helfrich model.
1.  `EvaluationBendingEnergy`, workflow of calculating principal and mean curvature on triangular mesh vertices, calculating surface bending energy density and integration of surface bending free energy.
2.  `IntegralBendingEnergy`, custom function for integration of surface bending free energy on vertices by barycentric tesselllation of triangular areas.

### Dependencies

Matlab packages:
[stlread](https://www.mathworks.com/matlabcentral/fileexchange/22409-stl-file-reader?s_tid=srchtitle) and
[Curvature Estimationl On triangle mesh ](https://www.mathworks.com/matlabcentral/fileexchange/47134-curvature-estimationl-on-triangle-mesh?s_tid=srchtitle). 
Additionally, small correction had been made for function `CalcFaceNormals`, where line15:`e1=FV.vertices(FV.faces(:,1),:)-FV.vertices(FV.faces(:,3),:);` had been changed to `e1=FV.vertices(FV.faces(:,3),:)-FV.vertices(FV.faces(:,1),:);` for correctly calculation of face normals.

### Reference
1.  Original Helfrich bending energy model: [W. Helfrich, Elastic Properties of Lipid Bilayers: Theory and Possible Experiments. 28, 693-703 (1973)](https://doi.org/10.1515/znc-1973-11-1209).
2.  Minimal discrete Helfrich model: [X. Bian, S. Litvinov, P. Koumoutsakos, Bending models of lipid bilayer membranes: Spontaneous curvature and area-difference elasticity. Computer Methods in Applied Mechanics and Engineering 359, 112758 (2020)](https://doi.org/10.1016/j.cma.2019.112758).
3.  Methods of estimating principal curvatures of mesh vertices: [S. Rusinkiewicz, in Symposium on 3D Data Processing, Visualization, and Transmission. (2004)](https://gfx.cs.princeton.edu/pubs/Rusinkiewicz_2004_ECA/index.php).
4.  Matlab package source publication on estimating principal curvatures: [Y. Ben Shabat, A. Fischer, Design of Porous Micro-Structures Using Curvature Analysis for Additive-Manufacturing. Procedia CIRP 36, 279-284 (2015)](https://doi.org/10.1016/j.procir.2015.01.057).

### Citation
If you use this work, consider citing our [publication](null):___________________________________________________________________________
