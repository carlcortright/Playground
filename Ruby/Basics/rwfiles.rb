# Some exampes of both reading and writing files
filename = ARGV.first

puts "Reading from #{filename}"

# Open the file
f = open(filename, 'w')

# Truncate the file :( 
f.truncate(0)

f.write("This is a new line \n")
f.write("hello!\n")
f.write("goodbye!\n")

f.close