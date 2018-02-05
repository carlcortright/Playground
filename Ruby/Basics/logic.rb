# Playing with logical flows

# This is stupid (:
if "hello" == "world"
    puts "no way"
end

if 1 == 1
    puts true
else
    puts false
end

a = false
b = true

if a == b
    puts "a == b is true"
elsif a || b 
    puts "a || b is true"
else
    puts "both are false"
end