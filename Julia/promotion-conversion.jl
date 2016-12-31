#===============================================================================
# Promotion and conversion in Julia is no-automatic and uses multiple dispatch
#
# Author: Carl Cortright
# Date:12/31/2016
#
===============================================================================#
import Base.convert
import Base.promote_rule

# The convert function takes a type and object as arguments
convert(Float64, 20)

# Defining new convert functions is easy
convert(::Type{Bool}, x::Real) = x == 0 ? false : x==1 ? true : error("Must provide 1 or 0")
convert(Bool, 1)

# Promotion is desiged to convert to a "greater" type, mostly used on numerics
promote(1,2.5)

# Instead of permuting all promote declarations, we just create promote rules
promote_rule(::Type{Float32}, ::Type{Int16}) = Float64
