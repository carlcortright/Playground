# While loop syntax

i = 0 
numbers = []

while i < 6
    puts "Value of i is #{i}"
    numbers.push(i)
    i += 1
end

print numbers 

puts numbers[5]
