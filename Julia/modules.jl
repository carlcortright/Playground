#===============================================================================
# Practice using julia modules
#
# Author: Carl Cortright
# Date: 12/31/2016
#
===============================================================================#
# This will precompile the module the first time that it is run
__precompile__()
# __precompile__(false) will cause the module to never be recursively recompliled


module mymodule

export x, y

x() = "x"
p() = "y"
y = p

end

# Modules are mostly independent from files
module mod

include("methods.jl")

using mymodule

println(x())

end

# If we don't want to use base or the default eval, we can use the baremodule
baremodule default

using Base

eval(x) = Core.eval(Mod, x)
eval(m, x) = Core.eval(m,x)

end

# The init function is used when we have code that must be run at runtime
module mymod

function __init__()
  println("In mymod init function")
  # Usually something like a ccall would go here
end

end
