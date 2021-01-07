=begin
Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'
Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.
=end

# Input:
# - Three integers

# Output:
# - A string of a single letter

# Rules:
# - The output string is a letter grade driven from the average of the three input integers

# EXAMPLES:
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"

# ALGORITHM:
# - Store average of scores into a variable
# - 
# - Run check if score falls in one of the above ranges for a letter grade
#     - Return respective letter grade if average evaluates to true

def get_grade(score1, score2, score3)
  scores = [score1, score2, score3]
  mean = scores.sum / scores.size
  case mean
  when (90..100) then 'A'
  when (80...90) then 'B'
  when (70...80) then 'C'
  when (60...70) then 'D'
  else                'F'
  end
end


p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(80, 80, 80)