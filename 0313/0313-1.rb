def say_hi 
  puts "hi..."
  #原型 yield (3)
  #yield 3
  result = yield 1, 2
  puts "bye"
  puts result
end

# 跟樓下一樣 
# say_hi { |x, y| puts "block" }
say_hi { |x, y|  x * y }

#hi可以印出來，表示times裡面有偷偷yield
#5.times { puts "hi" }

def hi 
  puts "hi..."
  #有block再yield
  if block_given?
    yield 1, 2
  end
  puts "bye"
end

hi