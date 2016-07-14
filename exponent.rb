def exp_1(base, exponent)
  return 1 if exponent == 0
  base * exp_1(base, exponent - 1)
end

def exp_2(base, exponent)
  return 1 if exponent == 0
  return base if exponent == 1
  if exponent % 2 == 0
    square = exp_2(base, exponent / 2)
    square * square
  else
    square = exp_2(base, (exponent - 1)/ 2)
    base * square * square
  end
end
