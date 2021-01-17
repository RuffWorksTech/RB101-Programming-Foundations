=begin
The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on.

Sequences like this translate naturally as "recursive" methods. A recursive method is one in which the method calls itself.

sum is a recursive method that computes the sum of all integers between 1 and n.

Recursive methods have three primary qualities:

1. They call themselves at least once.
2. They have a condition that stops the recursion (n == 1 above).
3. They use the result returned by themselves.

In the code above, sum calls itself once; it uses a condition of n == 1 to stop recursing; and, n + sum(n - 1) uses the return value of the recursive call to compute a new return value.

Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.
=end


# Input:
# - A single integers

# Output:
# - The fibonacci number of that integer (integer)

# Rules:
# - Method must be recursive

# ALGORITHM:
# - 



def fibonacci_basic(n)
  arr = [1, 1]
  return 1 if n == 1
  until arr.size == n
    arr << arr[-1] + arr[-2]
  end
  arr.last
end


def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) #== 1
p fibonacci(2) #== 1
p fibonacci(3) #== 2
p fibonacci(5) #== 5
p fibonacci(12) #== 144
p fibonacci(20) #== 6765