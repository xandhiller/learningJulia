using Plots
plotly()

x = LinRange(0,10,100)
display(x)
f(x) = x*x

# Broadcast f over all elements of x.
y = f.(x)

# plot(x,y, label="line")
scatter(x,y,label="points")
# fn = "tester.png"
# savefig(fn)
# display(fig)
