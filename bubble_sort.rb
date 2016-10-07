require 'pry'

class BubbleSort
    def sort(array)
        array_length = array.length
        binding.pry
        (array_length-1).times do
            binding.pry
            (array_length-1).times do |j|
                binding.pry
                if array[j] > array[j+1]
                binding.pry
                array[j], array[j+1] = array[j+1], array[j]
                end
            end
        end
        print array
    end
end      
sorter = BubbleSort.new
sorter.sort(["d","b","a","c"])