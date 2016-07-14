def range(start_range, end_range)
  return [] if end_range < start_range
  return [start_range] if start_range == end_range
  [start_range].concat(range(start_range + 1, end_range))
end

def range_iter(start_range, end_range)
  return [] if end_range < start_range
  results_arr = []
  (start_range..end_range).to_a
end
