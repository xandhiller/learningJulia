using MeshCat
using RigidBodyDynamics
using MeshCatMechanisms

vis = Visualizer()

open(vis)

urdf = joinpath(dirname(pathof(MeshCatMechanisms)), "..", "test", "urdf", "Acrobot.urdf")
robot = parse_urdf(Float64, urdf)
delete!(vis)
mvis = MechanismVisualizer(robot, URDFVisuals(urdf), vis)
set_configuration!(mvis, [0.0, 0.0])

state = MechanismState(robot, randn(2), randn(2))
t, q, v = simulate(state, 10.0);

setanimation!(mvis, t, q)
