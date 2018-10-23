# Create arrays of zeros()
x = zeros(3,3)
# println(x)

# Edit an element
#x[1][2] = 1 # Doesn't work.
x[1,2] = 1

# Prints the array after the edit and each row of the matrix.
#println("After the edit:\n", x[1,:], "\n", x[2,:], "\n", x[3,:])

# Or alternatively:
display(x)
println() # Inserts a newline character.
