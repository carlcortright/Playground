# Some more function stuff
first, second = ARGV

def one(i, j)
  if i > j
    return two(i)
  elsif i < j
    return two(j)
  else
    return three(i,j)
  end
end

def two(a)
  puts "this doesn't do anything special"
end

def three(i, j)
  puts "#{i} + #{j} (concat) = #{i+j}"
end

one(first, second)