def bsearch(arr, target)
  return nil if arr.empty?
  return nil if arr.length == 1 && arr[0] != target
  midpoint = arr.length / 2
  midpoint_value = arr[midpoint]
  return midpoint if midpoint_value == target

  if midpoint_value > target
    midpoint = bsearch(arr[0...midpoint], target)
  else
    last_return = bsearch(arr[midpoint+1..-1], target)
    midpoint = last_return == nil ? nil : midpoint += last_return + 1
  end
  midpoint
end

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil
