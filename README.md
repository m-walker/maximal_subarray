# maximal_subarray


# Explanations
# The guiding principle behind each is that the implementation of this algorithm is designed for effienciency and growth. Each line was intended to take constant time, not something larger
#   1) defining sum_greatest_subarray & sum_current_subarray are critical to the speed of the function as the size of each array they represent grows. For smaller arrays, it could be deleted
#   2) adding one number to either sum_greatest_subarray & sum_current_subarray is significantly faster as the size of each array grows. For smaller arrays, you could simply sum each.
# Why keep track of both a current and a greatest subarray?
#   3) The only way to know what subarray is the largest while also keeping open the possibility for adding a new number that creates a new, largest array, is to keep track of both.
#      For example: think through the example array [3,-1,-1,3] vs [3,-1,-1,1]
