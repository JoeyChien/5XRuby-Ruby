
list = [1,2,3,4]

#way1
result = []
for i in list
  result << i*2
end
p result

# way2-map
p list.map { |x| ( x * 2 ) -1 }


#list = [1,2,3,4,5,6]
#只留陣列ㄉ[5,6]

#way1
result = []
for i in list
  if i > 4
  result << i
end

#way2-filter
p list.filter { |x| x > 4 }


#reduce
p (1..100).reduce { | total, ho | total = total + ho }