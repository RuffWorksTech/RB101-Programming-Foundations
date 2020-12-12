# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')


def prompt(message)
  puts "=> #{MESSAGES[message]}"
end

def number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def operation_to_message(op)
  output =  case op
            when '1' then 'Adding'
            when '2' then 'Subtracting'
            when '3' then 'Multiplying'
            when '4' then 'Dividing'
            end
  
  output
end

prompt('welcome')
name = ''

loop do
  name = gets.chomp
  if name.empty?
    prompt('valid_name')
  else
    break
  end
end

puts "=> Hi #{name}!"

loop do
  number1 = ''
  loop do
    prompt('first_number')
    number1 = gets.chomp

    if number? number1
      break
    else
      prompt('valid_number')
    end
  end

  number2 = ''
  loop do
    prompt('second_number')
    number2 = gets.chomp

    if number? number2
      break
    else
      prompt('valid_number')
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  puts "=> #{operator_prompt}"

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include? operator
      break
    else
      prompt('valid_operator')
    end
  end

  puts "=> #{operation_to_message(operator)} the two numbers..."

  result =  case operator
            when '1' then number1.to_i + number2.to_i
            when '2' then number1.to_i - number2.to_i
            when '3' then number1.to_i * number2.to_i
            when '4' then number1.to_f / number2.to_f
            end

  puts "=> The result is: #{result}"

  prompt('another_cacluation')
  answer = gets.chomp

  break unless answer.downcase.start_with? 'y'
end

prompt('thank_you')