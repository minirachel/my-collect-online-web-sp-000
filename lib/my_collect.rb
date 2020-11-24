def my_collect(array)
  i = 0
  list = []
  while i < array.length
    list << yield(array[i])
    i += 1
  end
  list
end

my_collect(array).each do |item|
  if item.include?(" ")
    item.scan(/^\w+/)
  else
    item.upcase
  end
end
