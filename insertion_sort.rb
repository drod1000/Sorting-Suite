class InsertionSort
  def sort(array)
  sorted_array = []
  array_length = array.length
  counter = 0
  array_length.times do
    current = array.shift
    counter += 1 
    counter.times do |i|
      if sorted_array[0] == nil
        sorted_array[i] = current
      end
      if sorted_array[i] == nil
        sorted_array[i] = current
        break
      end
      if current < sorted_array[i]
        sorted_array.insert(i,current)
        break
      end
    end
  end
  print sorted_array
end
sorter = InsertionSort.new
sorter.sort(["d","b","a","c"])
end