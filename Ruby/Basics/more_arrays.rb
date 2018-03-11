# Some more practice with operations on arrays

ten_things =  "Apples oranges pears pickles rasins grapes"

stuff = ten_things.split(" ")
more_stuff = ["guitar", "tuba", "tv", "book", "shirt", "bottle"]

while stuff.length < 10
  stuff.push(more_stuff.pop())
end

put_it_together = stuff.join(" ")
puts put_it_together