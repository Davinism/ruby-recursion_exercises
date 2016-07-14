require 'byebug'

class Array
  def subsets
    result_arr = []
    (self.length - 1).downto(0) do | idx |
      sub_array = self.dup
      sub_array.delete_at(idx)
      result_arr.concat(sub_array.subsets)
    end
    result_arr << self
    result_arr.uniq
  end
end

p [].subsets # => [[]]
p [1].subsets # => [[], [1]]
p [1, 2].subsets # => [[], [1], [2], [1, 2]]
p [1, 2, 3].subsets
