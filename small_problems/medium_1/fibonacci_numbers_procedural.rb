=begin
In the previous exercise, we developed a recursive solution to calculating the nth Fibonacci number. In a language that is not optimized for recursion, some (not all) recursive methods can be extremely slow and require massive quantities of memory and/or stack space.

Ruby does a reasonably good job of handling recursion, but it isn't designed for heavy recursion; as a result, the Fibonacci solution is only useful up to about fibonacci(40). With higher values of nth, the recursive solution is impractical. (Our tail recursive solution did much better, but even that failed at around fibonacci(8200).)

Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

Rewrite your recursive fibonacci method so that it computes its results without recursion.
=end

# Input:
# - A single integer

# Output:
# - The fibonacci number of the given integer

# Rules:
# - The method should computer the number without recursion

# ALGORITHM:
# - Use fibonacci calculator from previous exercise
#     - Create array with [1, 1]
#     - Loop the number of times as the given input
#         - Add a new element to the array that is the last element plus the second-to-last element
#         - Continue until the given number is used
    
def fibonacci(n)
  arr = [1, 1]
  3.upto(n) {  arr << arr.last + arr[-2] }
  arr.last
end


p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501