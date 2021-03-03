=begin
----------------------------PROMPT----------------------------------
You are given an array of integers. Take that array and find an index n where the sum of the integers to the left of n is equal to the sum of the integers to the right of n.

-----------------------------INPUT----------------------------------
Array of integers (can be positive or negative)

----------------------------OUTPUT----------------------------------
Index at which the sums of all previous elements and all following elements are equal

-----------------------------RULES----------------------------------
Explicit:
- If there is no index that would make this happen return -1
- If the array is empty, return 0

Implicit:

-------------------------DATA STRUCTURES----------------------------


----------------------------ALGORITHM-------------------------------
Initialize left and right arrays
Iterate through integer array keeping track of the index
    - Iterate through array again keeping track of the index
        - If the current index of the nested iteration is less than the current index of the outer iteration, put it into the left array
        - Otherwise put it into the right array
        - Clear the left and right arrays
    - Return the index if the left and the right array's sums are the same
Return -1 if all iterations above were performed and no index was returned

=end

def find_even_index(arr)
  return 0 if arr.empty?
  left, right = [], []
  
  arr.each_with_index do |_, idx|
    arr.each_with_index do |num, idx2|
      left << num if idx2 < idx
      right << num if idx2 > idx
    end
    
    return idx if left.sum == right.sum
    left.clear
    right.clear
  end
  
  -1
end

p find_even_index([]) == 0
p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6