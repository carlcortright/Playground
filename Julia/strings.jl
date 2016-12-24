#===============================================================================
# Exercises and examples from the julia lang string documentation:
# http://docs.julialang.org/en/stable/manual/strings/
#
# Author: Carl Cortright
# Date: 12/23/2016
#
===============================================================================#
println("This is a test of Julia's string features... \n")
# Test a single character string
x = 'x'
println(typeof(x))

xToInt = Int(x)
println(typeof(xToInt))

# Try printing a for-all symbol
println('\u2200')

# String Indexing
println("Testing String Indexing:")
println(x[end])
helloWorld = "Hello world!"
println(helloWorld[1])
println(helloWorld[1:5])
println(helloWorld[7:end])

println("Interpolation: $helloWorld with \$100")
# Triple String Quotes + Common methods
println("Testing Triple Quote Strings:")
tripStr = """
This is a triplequoted string \r\n
"""
println(tripStr)
for c in tripStr
  println(c)
end

# Testing some common methods
println("Testing some common methods:")
println("l;skdjfklafjd" < "laksdjfklasdjf")
println("l;skdjfklafjd" == "laksdjfklasdjf")
println("l;skdjfklafjd" > "laksdjfklasdjf")
println(search(tripStr, "i"))
println(contains(tripStr, "blah"))
println(contains(tripStr, "triple"))
println(join(["hello", "world"], " ,", ", and "))
println(repeat("hi ", 100))

# Regex
println("Testing Regex expressions:")
myRegex = r"."
println(typeof(myRegex))
