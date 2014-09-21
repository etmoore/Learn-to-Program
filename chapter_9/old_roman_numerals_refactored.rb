# Author's Solution

def old_roman_numeral num
  raise 'Must use positive integer' if num <= 0

  roman = ''

  roman << 'M' * (num / 1000)
  roman << 'D' * (num % 1000 / 500)
  roman << 'C' * (num % 500 / 100)
  roman << 'L' * (num % 100 / 50)
  roman << 'X' * (num % 50 / 10)
  roman << 'V' * (num % 10 / 5)
  roman << 'I' * (num % 5 / 1)

  roman
end

puts 'Please provide a number between 1 and 9000'
number = gets.chomp.to_i
puts old_roman_numeral number
