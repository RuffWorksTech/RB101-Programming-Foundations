=begin
----------------------------PROMPT----------------------------------
Write a method that finds the maximum sum of a consecutive subsequence in an array of integers:
  
Input: [-1, 1, -3, 4, -1, 2, 1, -5, -4]
Output: 6: [4, -1, 2, 1]
  
Easy case is when the array is made up of only positive numbers and the maximum sum is the sum of the whole array. If the array is made up of only negative numbers, return 0 instead.

An empty array is considered to have zero greatest sum. 
  
-----------------------------INPUT----------------------------------
- Single array of consisting of positive and negative integers

----------------------------OUTPUT----------------------------------
- Single integer, the largest sum of a sub-array within the array

-----------------------------RULES----------------------------------
Explicit:
- If all integers are positive, return the sum of the entire array
- If an array consists of only negative numbers or is empty, return 0

Implicit:
- Empty arrays are valid

-------------------------DATA STRUCTURES----------------------------
Array

----------------------------ALGORITHM-------------------------------
Initialize largest sum variable
Iterate through input array
  - Initialize an empty sub-array variable
  - Loop the same number as the size of the array
      - Assign sum to largest sum variable if it is greater than it
Return largest sum variable
=end

def max_sequence(arr)
  largest_sum = 0
  return 0 if arr.empty? || arr.all? { |n| n < 0 }
  
  arr.each do |num|
    sub_arr = []
    (arr.find_index(num)).upto(arr.size - 1) do |n|
      sub_arr << arr[n]
      largest_sum = sub_arr.sum if sub_arr.sum > largest_sum
    end
  end
  largest_sum
end

p max_sequence([]) == 0
p max_sequence([1, 2, 3, 4]) == 10
p max_sequence([-1, 1, -3, 4, -1, 2, 1, -5, -4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12