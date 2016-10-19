# O(n)

# Explanations
# The guiding principle behind each is that the implementation of this algorithm is designed for effienciency and growth. Each line was intended to take constant time, not something larger
#   1) defining sum_greatest_subarray & sum_current_subarray are critical to the speed of the function as the size of each array they represent grows. For smaller arrays, it could be deleted
#   2) adding one number to either sum_greatest_subarray & sum_current_subarray is significantly faster as the size of each array grows. For smaller arrays, you could simply sum each.
# Why keep track of both a current and a greatest subarray?
#   3) The only way to know what subarray is the largest while also keeping open the possibility for adding a new number that creates a new, largest array, is to keep track of both.
#      For example: think through the example array [3,-1,-1,3] vs [3,-1,-1,1]

def maximal_contiguous_subarray(array)
  greatest_subarray = []
  sum_greatest_subarray = 0
  current_subarray = []
  sum_current_subarray = 0

  array.each do |number|
    if sum_current_subarray + number > 0
      current_subarray << number
      sum_current_subarray += number
      if sum_current_subarray > sum_greatest_subarray
        greatest_subarray = current_subarray.dup
        sum_greatest_subarray = sum_current_subarray.dup
      end
    else
      current_subarray = []
      sum_current_subarray = 0
    end
  end
  
  "#{greatest_subarray} --- #{sum_greatest_subarray}"
end

p maximal_contiguous_subarray([3,-1,-1,3])
p maximal_contiguous_subarray([3,-1,-1, -1, -10])
p maximal_contiguous_subarray([-2, -3, 4, -1, -2, 1, 5, -3])