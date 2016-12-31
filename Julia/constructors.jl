#===============================================================================
# Practice with constructors of composite types or objects.
#
# Author: Carl Cortright
# Date: 12/30/2016
#
===============================================================================#
# This is the type we will construct
type Foo
  bar
  baz
end

# Outer constructors create new instances by calling inner constructors
Foo(x) = Foo(x,x)
Foo() = Foo(0)

# Testing our new constructor
food = Foo()

# Inner constructors allow us to recurse and provide invariants
type OrderedPair
  x::Real
  y::Real

  # Note: the new keyword is locally defined and creates a new instance
  OrderedPair(x, y) = x > y ? error("out of order") : new(x,y)
end

# Seeing if the new constructor works as a longer function
type OrderedPair
  x::Real
  y::Real

  function OrderedPair(x,y)
    if x > y
      error("out of order")
    else
      new(x,y)
    end
  end
end

# Note: once an inner constructor is defined Julia assumes you've defined all the constructors you need
type Foo
  bar
  baz

  Foo(bar, baz) = new(bar, baz)
end

# The new function can be called with less parameters than itself to allow for self-referal
type SelfReferalials
  obj::SelfReferalials

  SelfReferalials() = (x = new(); x.obj = x)
end

x = SelfReferalials()
is(x,x)
is(x,x.obj)
is(x, x.obj.obj.obj)

# Parametric types have new constructors for each type they implement
type Point{T <: Real}
  x::T
  y::T
end

# We can also redefine outer constructors to dispatch on unusual arguments
Point(x::Int64, y::Float64) = Point(convert(x, Float64), y)
