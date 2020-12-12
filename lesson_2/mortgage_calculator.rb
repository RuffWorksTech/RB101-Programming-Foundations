=begin
This program asks a user to give 3 pieces of information:
1. The loan amount
2. The Annual Percentage Rate (APR)
3. The loan duration

It will use this information to calculate and output a monthly payment.
=end
require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')

def prompt(message)
  puts "=> #{MESSAGES[message]}"
end

def number?(input)
  integer?(input) || float?(input)
end

def integer?(num)
  num.to_i.to_s == num && num.to_i > 0
end

def float?(num)
  num.to_f.to_s == num && num.to_i > 0
end

def yrs_to_mths(years)
  years * 12
end

def mthly_rate(rate)
  rate / 0.12
end

def mthly_pmt_calc(loan_amt, apr, loan_yrs)
  loan_amt * (mthly_rate(apr) / (1 - (1 + mthly_rate(apr))**(-yrs_to_mths(loan_yrs))))
end

loop do
  prompt('welcome')
  info_needed = <<-MSG
  To calculate your monthly payment, you will need to enter 3 bits of information:
    1. The loan amount
    2. The Annual Percentage Rate (APR)
    3. The loan duration

  Let's get started!

  MSG
  puts "=> #{info_needed}"

loan_amt = ''
  loop do
    prompt('loan_amt')
    loan_amt = gets.chomp
    break if integer?(loan_amt)
    prompt('invalid_number')
  end

apr = ''
  loop do
    prompt('apr')
    apr = gets.chomp
    break if number?(apr)
    prompt('invalid_number')
  end

loan_duration = ''
  loop do
    prompt('loan_duration')
    loan_duration = gets.chomp
    break if integer?(loan_duration)
    prompt('invalid_number')
  end

  result = mthly_pmt_calc(loan_amt.to_i, apr.to_f, loan_duration.to_i)

  puts "Your monthly payment is: $#{result.round(2)}"

  prompt('another_calc?')
  answer = gets.chomp.downcase

  break unless answer.start_with?('y')
end