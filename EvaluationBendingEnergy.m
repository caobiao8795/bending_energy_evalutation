%% read mesh file
mesh = stlread('MO_one_2.stl');
%% remove duplicated vertices
meshobject = surfaceMesh(mesh.vertices,mesh.faces);
removeDefects(meshobject,"duplicate-vertices")
%% construct a MESH data as struct datatype
MESH.faces = meshobject.Faces;
MESH.vertices = meshobject.Vertices;
%% calcualte principal cruvatures using GetCurvature function from  "Curvature Estimationl On triangle mesh" by Itzik Ben Shabat 
getderivatives=0;
PrincipalCurvature = GetCurvatures(MESH,getderivatives);
%% calculate mean curvature and surface bending energy density of all vertices
MeanCurvature=((PrincipalCurvature(1,:) + PrincipalCurvature(2,:))/2)';
BendingEnergyDensity = 2*12*power(MeanCurvature,2);
%% integral surface bennding energy over surface area by barycentric tessellation of triangles (custom function--IntegralBendingEnergy)
Integral_bending_energy = IntegralBendingEnergy(MESH, BendingEnergyDensity);
