#===============================================================================
# Some practice using various julia interfaces
#
# Author: Carl Cortright
# Date: 12/31/2016
#
===============================================================================#
# A simple exampe of an interable squares object with finite length
immutable squares
  count::Int
end

Base.start(::squares) = 1
Base.next(S::squares, state) = (state*state, state+1)
Base.done(S::squares, state) = state > S.count
Base.eltype(::Type{squares}) = Int
Base.length(S::squares) = S.count

# We can now iterate over a squares object in a for loop
s = squares(100)
for i in s
  println(i)
end

println(25 in squares(10))

# We can also define the getindex() function
function Base.getindex(S::squares, i::Int)
  1 <= i <= S.count || throw(BoundsError(S, i))
  return i*i
end

s = squares(1000000)
println(s[982031])
# If we want to support the end syntax
Base.endof(S::squares) = length(s)
endval = s[end]
println("s[end] = $endval")

# We can also define as an abstract array to make things faster
immutable SquaresVector <: AbstractArray{Int, 1}
  count::Int
end
# Note {Int, 1} defines eltype and ndims
Base.length(S::SquaresVector) = (S.count,)
Base.linearindexing{T <: SquaresVector}(::Type{T}) = Base.LinearFast()
Base.getindex(S::SquaresVector, i::Int) = i*i
