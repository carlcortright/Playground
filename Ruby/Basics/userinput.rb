# Some practice using use input

print "What's your name? "
name = gets.chomp

puts "Hello #{name}!"

print "Enter a number! "
num = gets.chomp.to_f

puts "You entered #{num}"
puts "#{num} / 10 = #{num / 10}"