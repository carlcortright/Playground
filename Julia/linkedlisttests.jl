#===============================================================================
# Some tests for my new linked list type.
#
# Author: Carl Cortright
# Date: 1/1/2016
#
===============================================================================#
# Clear the workspace to avoid conflicts
workspace()
include("linkedlist.jl")

using linkedlist

ll = DoubleLinkedList{String}()

println("Time to add a bunch of stuff!!!")
append(ll, "Hello world!")
append(ll, "Foo")
append(ll, "Bar")
append(ll, "Making")
append(ll, "a")
append(ll, "dependent")
append(ll, "clause.")

for i in 1:listsize(ll)
  println(access(ll, i))
end

lenOfll = listsize(ll)
println("The length of the list is $lenOfll")

println(remove(ll, 6))
println(remove(ll, 4))
insert(ll, "I", 4)
insert(ll, "am", 5)
insert(ll, "making", 6)
insert(ll, "independent", 8)

for i in 4:listsize(ll)
  print(access(ll, i))
  print(" ")
end
