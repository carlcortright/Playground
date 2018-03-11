# Classes, modules and objects

# This is a module - contains functions and variables 
module MyModule
  def MyModule.run 
    puts "running!"
  end

  FRUIT = "is delish"
end

puts MyModule::FRUIT

class MyClass
  def initialize
    @fruit = "yum"
  end

  attr_reader :fruit

  def apple
    puts "This is a specific type of fruit"
  end
end

c1 = MyClass.new()
c1.apple