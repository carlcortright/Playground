#===============================================================================
# Some practice using Julia control flow structures
#
# Author: Carl Cortright
# Date: 12/27/2016
#
===============================================================================#

# Compound expressions
z = begin a=1; b=2; a+b end
x = (a=1; b=2; a+b)

# Conditionals
x=2
y=3
if x < y
  println("x is less than y")
end

# Note: Variables introducted in if statements will stay in scope after execution

#
# Tests a basic if-statement
#
function controlTest(x,y)
  # Note: julia returns the return value of the last executed statement from an if
  z = if x < y
    println("x is less than y")
  elseif x > y
    println("y is greater than x")
  else
    println("x equals y")
  end
  println(z)
end
controlTest(2,1)

# Note: Julia only takes true or false as arguments to conditional statements
# Note: Julia has short-circuit evaluation for && and ||

# While loops
i = 1
while i<=5
  println(i)
  i += 1
end

# For loops
# 1:5 is a range
for i = 1:5
  println(i)
end

for i in range(1,5)
  println(i)
end

# A cool way to write that ^
for i ∈ range(1,5)
  println(i)
end

# Testing a break statement
while i < 20
  if i === 10
    break
  end
  i += 1
end
println(i)


for i = 1:10
   if i % 3 != 0
    #  continue moves us to the next iteration
     continue
   end
   println(i)
 end

# Julia will nest loops over multiple ranges
for i=1:2, j=2:8
  println("i=$i j=$j")
end

# Playing with exceptions
type weirderror <: Exception end
