def fibonacci(n)
  return nil if n < 0
  return [1] if n == 0
  return [1, 1] if n == 1

  prev_fib_seq = fibonacci(n-1)
  prev_fib_seq << prev_fib_seq[-1] + prev_fib_seq[-2]
end
