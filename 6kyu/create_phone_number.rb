# Description:
# Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

# Example
# createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
# The returned format must be correct in order to complete this challenge.

# MY SOLUTION

def create_phone_number(numbers)
  #slice into 3s
  a = numbers.each_slice(3).to_a
  #join the last element onto the penultime
  b = a[2]
  c = a[3]
  d = b.concat c
  #remove the last element of the array - non-concatenated last element
  a.pop
  #convert array of arrays into single array and then concatenate into single string
  e = a.flatten!.join
  formatted_number = "(#{e[0..2]}) #{e[3..5]}-#{e[6..9]}"
end
