require 'pry'
class MergeSort
def sort(array)
  if array.length == 1
    return array
  else
    first_half = array[0..(array.length/2-1)]
    second_half = array[(array.length/2)..-1 ]
    sort_ordered(sort(first_half),sort(second_half))
  end
end

def sort_ordered(first,second)
  sorted_array = []
  current = nil
  until first.empty? || second.empty? do
  if first[0] < second[0] 
    current = first.shift
    sorted_array << current
  elsif second[0] < first[0]
    current = second.shift
    sorted_array << current
  end
  end
  if first.empty?
    sorted_array << second
  else
    sorted_array << first
  end
  ##Shoving nil values after if statement???
  return sorted_array.flatten
end
end

sorter = MergeSort.new
p sorter.sort(["b", "c", "d", "a"])
