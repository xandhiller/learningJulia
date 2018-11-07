using MeshCat
using MeshCatMechanisms
using RigidBodyDynamics
using GeometryTypes
using MeshIO
using FileIO

# Scale factor
fac = 0.01

# Scales the vertices of a mesh (ms) by factor (factor)
function scale!(ms, factor)
  s = length(ms.vertices);
  for x ∈ 1:s
    # Element-wise multiplication
    ms.vertices[x] = factor .* ms.vertices[x];
  end
end

# Init
mesh = load("/home/polluticorn/GitHub/learningJulia/objectPractice/heart.stl")
vis = Visualizer();
open(vis)

# Call function
scale!(mesh, fac);

# Plot
setobject!(vis, mesh);

# Infinite loop to stop local server closing. 
while(true)
  readline()
end

