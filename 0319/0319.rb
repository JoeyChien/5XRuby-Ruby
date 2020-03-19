module Flyable
  def fly
    puts "I belivi....I can fly"
  end
end

class Cat
  include Flyable
end

class Dog
end


kitty = Cat.new
kitty.fly