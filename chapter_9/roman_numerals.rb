# Write a method that when passed an integer between
# 1 and 3000 returns a string containing the proper
# old-school Roman numeral.

def old_roman_numeral number

  # if (number.is_a? Numeric == false)
  #   puts 'Please provide a numeric value.'
  #   number = gets.chomp
  # end

  numeral_array = []

  if number / 1000 > 0
    thousands = 'M' * (number / 1000)
    numeral_array.push thousands
    number = number % 1000
  end
  if number / 500 > 0
    five_hundreds = 'D' * (number / 500)
    numeral_array.push five_hundreds
    number = number % 500
  end
  if number / 100 > 0
    hundreds = 'C' * (number / 100)
    numeral_array.push hundreds
    number = number % 100
  end
  if number / 50 > 0
    fifties = 'L' * (number / 50)
    numeral_array.push fifties
    number = number % 50
  end
  if number / 10 > 0
    tens = 'X' * (number / 10)
    numeral_array.push tens
    number = number % 10
  end
  if number / 5 > 0
    fives = 'V' * (number / 5)
    numeral_array.push fives
    number = number % 5
  end
  if number / 1 > 0
    ones = 'I' * (number / 1)
    numeral_array.push ones
    number = number % 1
  end

  numeral_string = numeral_array.join
  puts numeral_string
end

puts 'Please provide a number between 1 and 3000'
number = gets.chomp.to_i
old_roman_numeral number
