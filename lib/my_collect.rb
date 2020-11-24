def my_collect(array)
  i = 0
  list = []
  while i < array.length
    list << yield(array[i])
    i += 1
  end
  list
end

my_collect(array) do |item|
  if item.include?(" ")
    item.scan(/^\w+/)
