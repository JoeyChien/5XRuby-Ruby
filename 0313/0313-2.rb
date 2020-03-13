def my_select(list)
  result =[]
  for i in list
    if yield (i)  
      result << i
    end
  end
  return result
end

p my_select([1,2,3,4,5]) { |i| i.odd? }