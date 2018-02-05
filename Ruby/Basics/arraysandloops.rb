# Practice with arrays and loops

count = [1,2,3,4,5]
fruits = ["apples", "oranges", "pears", "bananas"]
change = [1, "penny", 2, "nickle", 3, "dime", 4, "quarter"] # Interesting, mixed types

count.each do |c|
    puts c
end

for fruit in fruits
    puts fruit
end

change.each { |i| puts "I got #{i}" }

# Building lists
elems = []
# Range syntax
(1..5).each do |i|
    elems.push(i)
end

puts elems

