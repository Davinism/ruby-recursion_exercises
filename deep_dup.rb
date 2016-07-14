def deep_dup(arr)
  if arr.flatten == arr
      return arr.map { |el| el.dup }
  end

  new_arr = []
  arr.each do | el |
    if el.is_a?(Array)
      new_arr << deep_dup(el)
    else
      new_arr << el.dup
    end
  end
  new_arr
end

robot_parts = [
  ["nuts", "bolts", "washers"],
  ["capacitors", "resistors", "inductors"]
]

if __FILE__ == $PROGRAM_NAME
  robot_parts_dup = deep_dup(robot_parts)
  robot_parts[1] << 'LEDs'
  p robot_parts_dup[1]
  p robot_parts[1] != robot_parts_dup[1]
end
