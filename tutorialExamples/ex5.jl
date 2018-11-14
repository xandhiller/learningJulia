# Nested for loops and array comprehension

n,m = 3,3

# Let's give the command prompt some context.
println("n is: $n and m is: $m.\n",
        "This will produce a $n x $m matrix.")


function g(x,y)
    x + y
end

# Don't forget to initialise the array!
A = zeros(m, n)

for i ∈ 1:m
    for j ∈ 1:n
        # Replace the element in the ith column and jth row with a value
        #  as determined by g(x,y)
        A[i,j] = g(i,j)
    end
end

# Nicely print the array
display(A)
# display(A, "\n") # This doesn't work.
println() # And a new line, for prettiness.

println("Looking at indexing in Julia:\n\nTake an array, B:\n")
B = [1 2 3; 4 5 6; 7 8 9;]
display(B)
println()

println("\nB[1] is: \n")
display(B[1])

println("\nB[end] is: \n")
display(B[end])

println("\nB[3] is: \n")
display(B[3])

println("\nB[3,3] is: \n")
display(B[3,3])

println("\nB[2,2] is: \n")
display(B[2,2])

println("\nB[1,1] is: \n")
display(B[1,1])
