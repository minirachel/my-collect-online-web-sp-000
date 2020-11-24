def my_collect(array)
counter = 0

  my_collect(array) do |item|
    counter += 1
end

