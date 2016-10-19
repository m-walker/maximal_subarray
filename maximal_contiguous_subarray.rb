# O(n)
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
