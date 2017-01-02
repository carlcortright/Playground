#===============================================================================
# Practice implementing a classic data structure in Julia
#
# Author: Carl Cortright
# Date: 1/1/2017
#
===============================================================================#

module linkedlist

#
# Each node in the linked list represents some data
#
type Node{T}
  next::Node{T}
  prev::Node{T}
  data::T

  Node() = (self = new(); self.next = self; self.prev = self)
end

#
# The main linked list object
#
type DoubleLinkedList{T}
  head::Node{T}
  tail::Node{T}
  size::Int

  function DoubleLinkedList()
    head = Node{T}()
    tail = head
    head.next = tail
    new(head, tail, 0)
  end
end

#
# Adds a node with data to the end of the list
#
function append{T}(list::DoubleLinkedList{T}, data::T)::Node{T}
  newNode = Node{T}()
  newNode.data = data
  newNode.prev = list.tail
  newNode.next = list.head
  list.head.prev = newNode
  list.tail.next = newNode
  list.tail = newNode
  list.size += 1
  return newNode
end

#
# Adds a node with data at position
#
function insert{T}(list::DoubleLinkedList{T}, data::T, position::Int)::Node{T}
  if position > list.size
    error("Attempting to access position $position which is out of range.")
  end
  current = list.head
  for i in 1:position
    current = current.next
  end
  insertNode = Node{T}()
  insertNode.data = data
  insertNode.prev = current.prev
  insertNode.next = current
  current.prev.next = insertNode
  current.prev = insertNode
  list.size += 1
end

#
# Removes the node at position
#
function remove{T}(list::DoubleLinkedList{T}, position::Int)::T
  if position > list.size
    error("Attempting to access position $position which is out of range.")
  end
  current = list.head
  for i in 1:position
    current = current.next
  end
  data = current.data
  current.prev.next = current.next
  current.next.prev = current.prev
  list.size -= 1
  return data
end

#
# Gets the data from the node at position
#
function get{T}(list::DoubleLinkedList{T}, position::Int)::T
  if position > list.size
    error("Attempting to access position $position which is out of range.")
  end
  current = list.head
  for i in 1:position
    current = current.next
  end
  return current.data
end

function length{T}(list::DoubleLinkedList{T})
  return list.size
end

end  # module LinkedList
