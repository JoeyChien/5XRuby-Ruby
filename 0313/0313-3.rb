#沒有特別設定繼承ㄉ類別都有預設繼承自Object
class Animal
  def initialize
    puts "安妞"
  end
  def eat(food)
    puts "#{food}好好吃"
  end
  def walk
    puts "walk"
  end
end

class Cat < Animal  
  @@count = 0
  def initialize(name,age)
    #要存進去實體變數才有意義
    @name = name
    @age = age
    @@count += 1
  end
  def self.all #給類別用的方法，new也是一個給類別用ㄉ，實體不能用
  end
  def say_my_name
    puts "I am AteeZ #{@name}~"
  end
  def self.total
    @@count
  end
end
class Dog < Animal
  
end


Sannie = Cat.new("Choi San",22)
Yunho = Dog.new
Sannie.eat "點心"
Sannie.say_my_name
puts Cat.total
# Yunho.eat "餅乾"
# Yunho.walk