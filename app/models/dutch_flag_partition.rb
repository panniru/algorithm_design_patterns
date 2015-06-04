## Dutch flag partition is at given array index, all the smaller elements than pivor should arranged first followed by equals and equals followed by larger.

def dutch_flag_partition(array, index)
  pivot = array[index]
  smaller = 0
  equal = 0
  larger = array.length-1
  while(equal <= larger)
    if(array[equal] < pivot)
      swap(array[smaller], array[equal]) do |a, b|
        array[smaller] = a
        array[equal] = b
      end
      smaller += 1
      equal += 1
    elsif(array[equal] == pivot)
      equal += 1
    else
      swap(array[equal], array[larger]) do |a, b|
        array[larger] = b
        array[equal] = a
      end
      larger -= 1
    end
  end
  array
end

def swap(a, b)
  a = a^b
  b = a^b
  a = a^b
  yield(a, b) if block_given?
end
