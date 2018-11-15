# Notes on the Julia Programming Language

## Numeric Literals and Primitives
*This was mentioned wrt integer and floating point data types*
**Literals**: The things that are printed to you when you access the memory location that holds that data.
**Primitives**: The way the data is stored in memory.  

## Imaginary numbers
If you want to produce imaginary numbers you must use the `im` suffix.
E.g. `1 + 2(sqrt(-1)) = 1 + 2im`

## Including variables in string output
The `println()` function can use variables by including them with the `$` prefix. See `ex0.jl`

## You can also interpolate strings.
Using the asterisk `*` you can glue strings together. See `ex1.jl`

## Tuples, arrays and dictionaries
**Dictionaries**: are unordered and can be edited.
**Array**: are ordered and can be edited.
**Tuples**: are odered and not editable once declared.

## Assignment with dictionaries
Assignment of a key-value pair in Julia is done with a `=>`, see `ex2.jl`

## Dictionaries can delete elements
See the `pop!` function in `ex2.jl`

## Indexing
Indexing begins at one. The first element in an array is **not** the zeroth element. It is the *first* element.

## An array with multiple data types
It will be considered an array of type `any`.

## Creating random arrays
The `rand` function can be used to generate arbitrarily sized arrays of random numbers between 0-1.

## while-loops
Structured like so:
```
while *condition*
  *body of the loop*
end
```

## for-loops
Structured like so:
```
for *var* in *loop iterable*
  *body of the loop*
end
```
Note that the `in` can be replaced with `=` or `$\in$`

## Adding packages:
You must first indicate to Julia that you are using a module.
`julia> using Pkg`
`julia> Pkg.add("thing")`

## Nested for-loops and *array comprehension*
This is best demonstrated by an example, see `ex5.jl`

## `real()` and `imag()`
```
julia> im
im

julia> 3*im
0 + 3im

julia> im^2
-1 + 0im

julia> real(im)
false

julia> real(im^2)
-1

julia> imag(2+1im)
1
```

## Ternary Operators
`a ? b : c`

`a` = a condition

`b` = what is done if `a` is *true*.

`c` = what is done if `a` is *false*.

Best seen in an example, see `ex6.jl`

## Logical *and*
Is symbolised by `&&`

## Short circuit evaluation
You can evaluate something in such a way that only a part is executed if one condition is false, e.g. if

## Assigning functions

### Formal
```
function sayhi(name)
  println("Hi, $name. It's great to see you!")
end
```

### Single line
```
sayhi(name) = println("Hi $name, it's great to see you.")
```

### Anonymous or *lambda* (mapping) functions
```
sayhi = name -> println("Hi $name, it's great to see you.")
```

## Duck-Typing
Julia works with a *'ducktyping'* methodology.

*"If it quacks like a duck and looks like a duck, it's a duck."*

## Mutable and non-mutable functions
Mutable functions (functions that edit their inputs) are by convention denoted with a bang (exclamation mark) `!`

E.g.
```
v = [1,2,3,5,4]
sort(v)
sort!(v)
```

Here, the `sort(v)` will return a sorted copy of `v`

## Broadcasting


## Plots

## Multiple Dispatch
Multiple dispatch is a feature of Julia that uses the types of multiple inputs to a function to determine which method should be called.

E.g. a summing operator will be a different operation on primitives depending on whether it is adding two floats or two integers.

## Transpose Versus the Conjugate Transpose
The standard transpose operator `'` will take the conjugate transpose.
```
A = [1, 2+3im, 4im]

A' = [1; 2-3im; -4im]

conj(A') = []
```
# `conj()` is the conjugate operator

```
julia> z = 3 + 4im
3 + 4im

julia> conj(z)
3 - 4im
```

## Types
**Polymorphism**: The ability to write code that works on multiple data types.

Julia is dynamic, but can also be sped up by indicating that certain variables are of a certain type.

Allows method dispatch via the types of function arguments, this is deeply integrated with the language.


## `quote`
Makes a group of expression to evaluate. Usefulness is not yet clear when compared with the `:( println("Some expression!"))` way of passing expressions. 



<!--
## Materials To Acquire
* Local Julia Documentation
* Local Plotly for Julia documentation
* Local gr documentation

## To Investigate
* Why it takes so long to generate a graph with the script.
* Running from the REPL(read-eval-print loop) works quite quickly? Because of loading of packages?
* More unicode character operations.
*  

## To Install
* Julia DiffEq
* Julia Robotics Toolbox
  * Specifically, meshcat.
  -->
