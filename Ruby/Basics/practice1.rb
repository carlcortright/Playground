puts "this is some practice"

# Doing some looping because these are weird

elems = ["hi", "my", "name", "is", "carl"]

elems.each do |e| 
  print e + " "
end

for e in elems
  puts e
end

# build a really big list
big_list = []

(0..100000).each do |i|
  puts i
end