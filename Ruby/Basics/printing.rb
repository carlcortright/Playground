formatter = "%{first} %{second} %{third}"

puts formatter % {first: 1, second: 2, third: 3}
puts formatter % {second: 2, first: 1, third: 3}

puts %q{
Hello world.

This is a multiline puts!
}

