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
  # attr_reader :name
  # attr_writer :name
  # 一個類別方法 attr_accessor(:name) > 讀跟寫ㄉ方法一起設定
  attr_accessor :name
  def initialize(name,age)
    @name = name
    @age = age
    @@count += 1
  end
  def say_my_name
    puts "I am AteeZ #{@name}~"
  end
  def self.total
    @@count
  end
  private #私有方法，無法直接存取，直到class的end結束，除非中間撞到public之類ㄉ
  def gossip 
    puts "偷偷說"
  end
  #getter
  # def name
  #   @name
  # end
  #上面相當於attr_reader :name
  #setter
  # 
  #上面相當於attr_writer :name
end
class Dog < Animal
  
end


Sannie = Cat.new("Choi San",22)
Yunho = Dog.new
Sannie.eat "點心"
Sannie.say_my_name
puts Cat.total
puts Sannie.name
Sannie.name = "San"
puts Sannie.name