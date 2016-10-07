require 'pry'
class MergeSort
def sort(array)
  if array.length == 1
    ##binding.pry
    return array
    ##binding.pry
  else
    first_half = array[0..(array.length/2-1)]
    second_half = array[(array.length/2)..-1 ]
    ##binding.pry
    sort_ordered(sort(first_half),sort(second_half))
    ##binding.pr
  end
end

def sort_ordered(first,second)
  sorted_array = []
  current = nil
  until first.length == 0 || second.length == 0 do
  ##binding.pry
  if first[0] < second[0] 
    current = first.shift
    sorted_array.push(current)
  elsif second[0] < first[0]
    current = second.shift
    sorted_array.push(current)
  end
  end
  if first.empty? == false
    sorted_array << first
  else
    sorted_array << second
  end
  ##Shoving nil values after if statement???
  return sorted_array.flatten
end
end

sorter = MergeSort.new
p sorter.sort(["a", "b", "c", "d"])
