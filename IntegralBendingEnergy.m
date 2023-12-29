function [Integral_bending_energy] = IntegralBendingEnergy(mesh, bending_energy_density)
% Integral_bending_energy performs integration of  bending energy density
% over the whole mesh surface. Bending energy density of every vertice is
% multipled by surrounding area tessellated by barycentric division and
% then sumed up to get overall bending energy of the mesh surface.
% Input: 
%   mesh - mesh struct data containing vertices and faces
%   bending_energy_density - calculated bending energy density array
% Output:
%   Intergra_bending_energy - Integrated overall surface bending energy
% Author:Biao Cao  Date:2023-12-27

    vertices = mesh.vertices;
    faces = mesh.faces;
    %% allocation of zero array
    triangle_energy = zeros(length(faces),1);
    for i = 1:length(faces)
        %% get tirangle vertices coordinates
        P1 = vertices(faces(i,1),:);
        P2 = vertices(faces(i,2),:);
        P3 = vertices(faces(i,3),:);
        %% calculate triangle area
        triangle_area = 1/2*norm(cross(P2-P1,P3-P1));
        %% calculate the contribution of bending energy of selected triangle
        face_be_1 = bending_energy_density(faces(i,1),1)*triangle_area*1/3;
        face_be_2 = bending_energy_density(faces(i,2),1)*triangle_area*1/3;
        face_be_3 = bending_energy_density(faces(i,3),1)*triangle_area*1/3;
        triangle_energy(i,1) =  face_be_1 + face_be_2 + face_be_3;
    end
    %% sum up contribution from all triangles to get overall surface bending energy
    Integral_bending_energy = sum(triangle_energy);
end