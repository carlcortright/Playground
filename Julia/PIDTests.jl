#===============================================================================
# Test suite for PIDLib
#
# Author: Carl Cortright
# Date: 1/2/2017
#
===============================================================================#
workspace()
include("PID.jl")

using Base.Test
using PIDLib
using PyPlot

controller = PID(0.1, 0.9, 0.0, 70)
process(t) = 2.0t + 60

plantVal = process(0)
plantVals = Array(Float64, 25)
for i in 1:25
  plantVal = process(i) - Update(controller, plantVal)
  plantVals[i] = plantVal
  println(plantVal)
end

# Plot the results
x = linspace(0,1,25)
plot(x, plantVals)
