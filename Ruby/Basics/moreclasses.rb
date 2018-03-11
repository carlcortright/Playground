class Animal
  def initialize(name, type)
    @name = name
    @type = type
  end

  attr_reader :name
  attr_reader :type
end

class Dog < Animal
  def initialize(name, type, size)
    super(name, type)
    @size = size
  end

  attr_reader :size 
end

mydog = Dog.new("Conor", "Lab", "Medium")
puts mydog.name
puts mydog.type
puts mydog.size