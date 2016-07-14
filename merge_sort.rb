def merge_sort(arr)
  return arr if arr.length == 1

  midpoint = arr.length / 2
  sub_arr1 = arr[0...midpoint]
  sub_arr2 = arr[midpoint..-1]
  merge_helper(merge_sort(sub_arr1), merge_sort(sub_arr2))
end

def merge_helper(arr1, arr2)
  results_arr = []
  until arr1.empty? && arr2.empty?
    if arr1.empty?
      results_arr << arr2.shift
    elsif arr2.empty?
      results_arr << arr1.shift
    else
      if arr1[0] < arr2[0]
        results_arr << arr1.shift
      else
        results_arr << arr2.shift
      end
    end
  end
  results_arr
end


p merge_sort([38, 37])
p merge_sort([38, 27, 43, 3])
p merge_sort([38, 27, 43, 3, 9, 82, 10])
