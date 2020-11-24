def my_collect(array)
  i = 0
  list = []
  while i < array.length
    list << yield(array[i])
    i += 1
  end
  list
end

my_collect(array) do |i|
  if i.include?(" ")
    i.split(" ").first
  else
    i.upcase
  end
end
