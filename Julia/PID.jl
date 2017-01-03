#===============================================================================
# PID controller written in pure Julia.
#
# Author: Carl Cortright
# Date: 1/1/2017
#
===============================================================================#

module PIDLib

export PID, Update

type PID
  P::Float64
  I::Float64
  D::Float64
  setpoint::Float64
  errors::AbstractArray{Float64, 1}
  epochs::Int64

  PID(P, I, D, setpoint) = new(P, I, D, setpoint, zeros(Float64, 10000), 1)
end

#
# Updates the PID mechanism and
#
function Update(pid::PID, value::Float64)::Float64
  error = value - pid.setpoint
  pid.errors[pid.epochs + 1] = error
  pid.epochs += 1
  return (pid.P * error) + (pid.I * RiemannSum(pid)) + (pid.D * Derivative(pid))
end

#
# Takes the "integral" over the errors from 0 to t
#
function RiemannSum(pid::PID)
  sum = 0.0
  for i in 1:length(pid.errors)
    sum += pid.errors[i]
  end
  return sum
end

#
# Takes the current Derivative of the errors
#
function Derivative(pid::PID)
  return pid.errors[end] - pid.errors[end - 1]
end

end  # module pid
