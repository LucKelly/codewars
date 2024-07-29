# Description:
# Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

# Example:
# Input: 42145 Output: 54421

# MY SOLUTION:

def descending_order(n)
  # convert input to array, sort in reverse order
  a = n.digits.sort.reverse
  # convert array back to desired output format
  a.join.to_i
end
