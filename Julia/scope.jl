#===============================================================================
# Variable scope in julia
#
# Author: Carl Cortright
# Date: 12/28/2016
===============================================================================#

module bar
x = 1
f(x) = x
end

import bar
# Now we can use the variable x
println(bar.x)
for i in 1:10
  local i # This forces i in to local scope
  println(i)
end
println(i)

# In a soft local scope, all variables are inherited from the parent scope
y = 2
for i in 1:7
  println(y)
end

# In hard local scopes, like functions and macros, an explicit global is needed
function hardLocal()
  global y = 7
end

hardLocal()
println(y)

# Nested functions can modify their parent functions local variables
function hello()
  x = 10
  function world()
    x = 20
  end
  world()
  println(x)
end
hello()

# Let blocks allocate new memory every time they run
let y = 10
  println(y)
end
println(y)

# we can also define constants
const somenum = 0.1234567891
