using MeshCat
using RigidBodyDynamics
using MeshCatMechanisms
using GeometryTypes

vis = Visualizer()

open(vis)

# urdf = joinpath(dirname(pathof(MeshCatMechanisms)), "..", "test", "urdf", "Acrobot.urdf")
# robot = parse_urdf(Float64, urdf)
delete!(vis)
obj = HyperSphere(Point3f0(0), 1f0)
mvis = MechanismVisualizer(obj, vis)
set_configuration!(mvis, [0.0, 0.0])

state = MechanismState(robot, randn(2), randn(2))
t, q, v = simulate(state, 10.0);

setanimation!(mvis, t, q)
