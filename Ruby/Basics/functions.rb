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

puts func3()