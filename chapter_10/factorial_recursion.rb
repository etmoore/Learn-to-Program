# from Learn to Program by Chris Pine
# page 84

def factorial num
  if num < 0
    return 'You can\'t take the factorial of a negative number'
  end

  if num <= 1
    1
  else
    num * factorial(num - 1)
  end
end

puts 'Please provide a positive integer.'
input = gets.chomp.to_i
puts factorial input