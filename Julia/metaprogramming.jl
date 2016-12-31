#===============================================================================
# Julia has a powerful metaprogramming interface similar to lisp
#
# Author: Carl Cortright
# Date: 12/31/2016
#
===============================================================================#

# Every single program starts as a string and then is parsed
prog = "1+1"
ex1 = parse(prog)
typeof(ex1)

# Expressions have a head and args
ex1.head
ex1.args

# Every expression in julia is represented as a data structure
dump(ex1)

# The : denotes a symbol
:foo
typeof(:foo)

# More generally
:foo == Symbol("foo")
# or
:kungfoo == Symbol("kung", "foo")

# it is possible to execute an instruction using eval
eval(ex1)

# Using Expr you can create functions that return more Expr's
function math_expr(op, a, b)
  expr = Expr(:call, op, a, b)
  return expr
end

someMath = math_expr(:+, 1, math_expr(:*, 4, 5))
eval(someMath)

# Macros in julia are compiled expressions
macro hello()
  return :(println("hello"))
end

@hello
