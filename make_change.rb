def greedy_make_change(amount, coin_denoms)
  return [amount] if coin_denoms.include?(amount) # Base

  coin_denoms.sort.reverse!
  change = []
  biggest_coin = coin_denoms.select { | coin | coin < amount}.max
  change << biggest_coin
  amount -= biggest_coin
  change.concat(greedy_make_change(amount, coin_denoms))
end

# p greedy_make_change(39, [25, 10, 5, 1])
# p greedy_make_change(14, [10, 7, 1])

def make_better_change(amount, coin_denoms)
  return [amount] if coin_denoms.include?(amount)
  return [] if amount <= 0

  coin_denoms.sort.reverse!
  all_possible_arr = []

  coin_denoms.each do |value|
    change_arr = []
    change_arr << value
    change_arr.concat(make_better_change(amount - value, coin_denoms))
    all_possible_arr << change_arr if change_arr.inject(:+) == amount
  end

  all_possible_arr.min_by { |arr| arr.length }

end

p make_better_change(39, [25, 10, 5, 1])
p make_better_change(14, [10, 7, 1])
