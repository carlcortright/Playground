#===============================================================================
# Methods are how functions are implemented over certain types. These are some
# exercises to understand their behavior
#
# Author: Carl Cortright
# Date: 12/30/2016
#
===============================================================================#

#
# Defines the function f for the specific method with argument types of Float64
#
function f(x::Float64, y::Float64)
  return 2x + y
end

#
# Now we define it over more general arguments
#
function f(x::Number, y::Number)
  return 2x - y
end

# Note: the first declaration creates the function declaration, adding creates methods
methods(f)
methods(+)
methods(println)

# it is important to define methods that clear up any ambiguity
g(x::Float64, y) = x + y
g(x, y::Float64) = x - y
g(x::Float64, y::Float64) = x*y

# Parametric functions allow us to define over many types without the catchall
sametype{T}(x::T, y::T) = true
sametype(x,y) = false

sametype("hello", 2)

# Vararg functions can also be parameterized
function bar(a, b, x::Vararg{Any, 2})
  return [a,b,x[1],x[2]]
end

bar(1,2,3,4)

# Functors are functions that are specified by type and not name
type polynomial{R}
  coeffs::Vector{R}
end
function (p::polynomial)(x)
  v = p.coeffs[end]
  for i in (length(p.coeffs)-1):-1:1
    v = v*x + p.coeffs[i]
  end
  return v
end

p = polynomial([1,2,3,4,5,100,10000])
p(10)
p(1)
p(101)

# empty functions can be used to separate interfaces and definitions
function emptyfunction
end
