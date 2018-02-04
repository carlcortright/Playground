# Some basic functions to call on a file

fname = ARGV.first

# Reads the entire file to console
def read_all(f)
    puts f.read
end

# Goes to the beginning of the file
def rewind(f)
    f.seek(0)
end

# Prints a line from the file
def print_a_line(line_count, f)
    puts "#{line_count}, #{f.gets.chomp}"
end

f = open(fname)

read_all(f)
rewind(f)
print_a_line(1, f)