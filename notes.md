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
