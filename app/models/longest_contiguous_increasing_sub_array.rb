def find_longest_increasing_sub_array(array)
  max_length = 1
  pair = []
  i = 0
  while(i < array.length)
    p "oute i =========#{i}"
    is_skippable = false
    j = (i + max_length-1)
    while(j >= i)
      puts "==========j == #{j}"
      puts array[j]
      if array[j] >= array[j+1]
        i = j+1
        is_skippable = true
        break
      end
      j -= 1
    end

    unless is_skippable
      i += max_length-1
      while( i+1 < array.length && array[i] < array[i+1])
        p "i ================ #{i}"
        i += 1
        max_length += 1
      end
      pair = [i-max_length+1, i]
    end
  end
  pair
end
