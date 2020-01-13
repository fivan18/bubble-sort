module BubbleSort
  def bubble_sort(arr)
    return_arr = []
    return return_arr if !(arr.is_a? Array)

    arr.each_with_index { |item, index| return_arr[index] = item }
    return return_arr if arr.length() == 1

    j = return_arr.length() - 1
    while j >= 1
      i = 1
      while i <= j
        return_arr[i],return_arr[i-1] = return_arr[i-1],return_arr[i] if 
          return_arr[i] < return_arr[i-1]

        i = i + 1
      end
      j = j - 1
    end
    return return_arr
  end

  def bubble_sort_by(arr)
    return_arr = []
    return return_arr if !(arr.is_a? Array)

    arr.each_with_index { |item, index| return_arr[index] = item }
    return return_arr if arr.length() == 1

    j = return_arr.length() - 1
    while j >= 1
      i = 1
      while i <= j
        return_arr[i],return_arr[i-1] = return_arr[i-1],return_arr[i] if 
          yield(return_arr[i-1],return_arr[i]) > 0

        i = i + 1
      end
      j = j - 1
    end
    return return_arr
  end
end
