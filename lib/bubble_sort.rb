# frozen_string_literal: true

module BubbleSort
  def bubble_sort(arr)
    return_arr = []
    return return_arr if arr.class != Array

    arr.each_with_index { |item, index| return_arr[index] = item }
    return return_arr if arr.length == 1

    j = return_arr.length - 1
    while j >= 1
      i = 1
      while i <= j
        if return_arr[i] < return_arr[i - 1]
          temp = return_arr[i]
          return_arr[i] = return_arr[i - 1]
          return_arr[i - 1] = temp
        end
        i += 1
      end
      j -= 1
    end
    return_arr
  end

  def bubble_sort_by(arr)
    return_arr = []
    return return_arr if arr.class != Array

    arr.each_with_index { |item, index| return_arr[index] = item }
    return return_arr if arr.length == 1

    j = return_arr.length - 1
    while j >= 1
      i = 1
      while i <= j
        if yield(return_arr[i - 1], return_arr[i]).positive?
          temp = return_arr[i]
          return_arr[i] = return_arr[i - 1]
          return_arr[i - 1] = temp
        end
        i += 1
      end
      j -= 1
    end
    return_arr
  end
end
