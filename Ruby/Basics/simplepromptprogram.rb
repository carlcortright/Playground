first_name = ARGV.first
prompt = "> "

puts "Hi #{first_name}"
puts "I'm going to ask you a few questions..."
puts "What's your last name?"
print prompt
last_name = $stdin.gets.chomp

puts "Hi #{first_name} #{last_name}"