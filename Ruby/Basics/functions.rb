# Some basic functions

def func1(*args)
    arg1, arg2 = args
    puts "arg1 = #{arg1} and arg2 = #{arg2}"
end

def func2(arg1, arg2)
    puts "arg1 = #{arg1} and arg2 = #{arg2}"
end

def func3()
    return 4
end

puts func3

# Intentionally misleading
def minus(a, b)
    return a - b
end

var1 = 10
var2 = 30

puts minus(var1 + 4,var2 - 9)