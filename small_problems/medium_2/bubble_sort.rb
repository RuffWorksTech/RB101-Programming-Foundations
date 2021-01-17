=begin
Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. In this exercise, you will write a method that does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

We can stop iterating the first time we make a pass through the array without making any swaps; at that point, the entire Array is sorted.

For further information, including pseudo-code that demonstrates the algorithm as well as a minor optimization technique, see the Bubble Sort wikipedia page.

Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.
=end

# Input:
# - An single array consisting of only integers or only strings

# Output:
# - The original array sorted

# Rules:
# - The array must be sorted using the bubble sorting method
#     - Two consecutive elements are compared. If the second is greater than the first, the two are swapped.

# ALGORITHM:
# - Loop until the array == array.sort
#     - Iterate through array with indices
#         - If second element is less than first element, swapped

def bubble_sort!(arr)
  until arr == arr.sort
    arr.each_index do |i|
      break if arr[i + 1] == nil
      if arr[i + 1] < arr[i]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
  end
  arr
end



array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array2 = [6, 2, 7, 1, 4]
p bubble_sort!(array2)
p array2 == [1, 2, 4, 6, 7]

array3 = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array3)
p array3 == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)