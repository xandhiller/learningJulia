# Showing off ternary operators

i = 5

j = 10

function f(x,y)
    return (x>y) ? println("$x is greater!") : println("$y is greater!")
end

f(i,j)
