#===============================================================================
# Practice with the julia function syntax and construction.
#
# Author: Carl Cortright
# Date: 12/26/2016
===============================================================================#

# Function that completes one operation, adding x and y
function f(x, y)
  x+y
end

println(f(1,2))

# In assignment form
f(x, y) = x + y

# f can be passed around like a value, it refers to the function object
g = f
println(g(200, 21))

# Oh, and this is awesome
∑(x, y, z) = x + y + z
println(∑(1,2,3))

# Example of where return is useful
function hypotCustom(x, y)
  a = abs(x)
  b = abs(y)
  if x > y
    r = y/x
    return x * sqrt(1 + r^2)
  elseif y === 0
    return 0
  else
    r = x/y
    return y * sqrt(1 + r^2)
  end
end

if hypotCustom(3,2) === sqrt(13)
  println("got it")
else
  println(hypotCustom(3,2))
end

# Using the + operator as a function
println(+(1,2,3))
# Oooh, and you can pass operators
h = +
println(h(1,2,3))

# Playing with multiple return values
function foo(x, y)
  return x+y, x*y
end

# Creating functions with a variable number of arguments
function variableArgs(a,b,x...)
  return (a,b,x)
end

# Optional arguments
function optional(debug=true)
  if debug === true
    println("Debug is on")
  end
end
optional()
optional(false)

#
# In this case, c is optional and can be specified using a keyword
#
function keywordSum(a, b; c=0)
  return a+b+c
end
println(keywordSum(1,2; c=8))
