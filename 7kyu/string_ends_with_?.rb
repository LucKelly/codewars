# Description:
# Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).

# Examples:

# solution('abc', 'bc') // returns true
# solution('abc', 'd') // returns false

# MY SOLUTION

def solution(str, ending)
  # convert into arrays and reverse order
  str_arr = str.chars.reverse()
  ending_arr = ending.chars.reverse()
  # check if ending_arr element same as str_arr element
  ending_arr.each_with_index do |letter,index|
    return false unless letter == str_arr[index]
  end
  # else implicit return true
  true
end
