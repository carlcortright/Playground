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
myRegex = r".w"
println(typeof(myRegex))
println(ismatch(myRegex, "hello world"))
println(ismatch(myRegex, "no umbo"))

# Match anything that would be a Julia comment
commentr = r"^\s*(?:#|$)"
testline = "# hello"
m = match(commentr, testline)
if m === nothing
  println("\"$testline\" is not a comment")
else
  println("\"$testline\" is a comment")
  println("Offest is " * string(m.offset))
end

# Playing with byte array literals
barr = b"hello world"
println(barr[1])
println(barr)

# Identifying version numbers
if v"0.2" <= VERSION <= v"0.8"
  println("We have an acceptable Julia version!")
end

println("Our Julia version is " * string(VERSION))
