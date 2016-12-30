#===============================================================================
# Practice using julia's type system along with dynamic, polymophic properties
# allowing julia to have its cool multiple dispatch system for specific types
#
# Author: Carl Cortright
# Date: 12/28/2016
#
===============================================================================#

# Note: Julia uses a type graph to determine inheritance

(1+2)::Int64

# In a variable declaration, it is liked typed c or java
function foo()
  x::Int8 = 100
  x
end
typeof(foo())

# This will always return a 64-bit float
function Sinc(x)::Float64
  if x == 0
    return 1
  end
  return sin(pi * x)/(pi * x)
end
Sinc(2)

# A type that is a subtype of real numbers
abstract subreal <: Real

# Note: when no subtype is given, an abstract type inherits from any, like object in java

# Playing with bitstypes
bitstype 128 genome
# Julia's type system is normative, meaning types of the same size are not interchangable

# Composite types - the equivalent to structs in c
type kungfoo
  bar
  baz::Int64
  qux::Float64
end

# A default constructor is generated when foo is created
myFoo = kungfoo("Hello world", 1, 1.1234)
typeof(myFoo)

# Fields of immutable types can't be changed
immutable complexnum
  real::Float64
  imag::Float64
end

# Unions can be used to specify a union of types
IntorString = Union{Int, AbstractString}

# Parameterized types can be used to create whole new classes of types
type point{T}
  x::T
  y::T
end

# This method can only be applied to subtypes
function norm1(p::point{Real})
  sqrt(p.x^2 + p.y^2)
end

# This is the right way to do it, so that we can apply to subtypes
function norm2{T<:Real}(p::point{T})
  sqrt(p.x^2 + p.y^2)
end

a = point{Float64}(1.0, 0.0)
typeof(a)

abstract Pointy{T}

type Pointer{T} <: Pointy{T}
  x::T
  y::T
end

Pointer{Float64} <: Pointy{Float64}

#
# DiagPoints only exist on the diagonal line y=x
#
type DiagPoint{T} <: Pointy{T}
  x::T
end

function CalcY{T <: Real}(p::DiagPoint{T})::Pointer{T}
  x = p.x
  y = x
  return Pointer(x, y)
end

# Typealiases can also be useful
typealias counter UInt

# There are also lots of functions that operate on types
supertype(Float16)
supertype(AbstractFloat)
supertype(Real)
supertype(Number)
# Finally got to Any...

# You can also put plain values in for types
myMatrix = Array{Float64, 2}

# This will allow you to dispatch on true/false (thinking indicator functions...)
immutable Val{T}
end
firstlast(::Type{Val{true}}) = "first"
firstlast(::Type{Val{false}}) = "last"
firstlast(Val{true})
firstlast(Val{false})

# Nullable objects are a way to interact with objects that could not exist
x1 = Nullable{Int64}()
isnull(x1)
# Throws a NullException
get(x1)
