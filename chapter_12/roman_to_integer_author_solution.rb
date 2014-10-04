# author's solution, from page 189
# "HOW YOU COULD DO IT"

def roman_to_integer roman

  # Create an object to hold the roman numeral values for easy lookup
  digit_vals = {
    'i' => 1,
    'v' => 5,
    'x' => 10,
    'l' => 50,
    'c' => 100,
    'd' => 500,
    'm' => 1000
  }

  # Create total to hold the total integer value of the roman integer
  total = 0
  # prev will hold the previous letter's value, for determining if the current value
  # should be subtracted or not
  prev = 0
  # index keeps track of which letter we're currently working with
  index = roman.length - 1

  while index >= 0
    character = roman[index].chr.downcase # gets the charcter of the index value
    index -= 1
    val = digit_vals[character] # gets the value of the character from digit_vals

    # If val is nil, return
    if !val
      puts 'This is not a valid roman numeral!'
      return
    end

    # If the current letter's val is less than the previous letter's val, subtract the current
    # value from the total
    if val < prev
      val = val * -1
    else
      prev = val
    end

    # Add the current value to the total
    total = total + val
  end

  total
end

puts (roman_to_integer('mcmxcix'))
puts (roman_to_integer('CCCLXV'))

# "HOW I WOULD DO IT"

def roman_to_integer_elegant roman
  digit_vals = {
     'i' => 1,
     'v' => 5,
     'x' => 10,
     'l' => 50,
     'c' => 100,
     'd' => 500,
     'm' => 1000
   }

  total = 0
  prev = 0

  roman.reversse.each_char do |c_or_C|
    c = c_or_C.downcase
    val = digit_vals[c]

    if !val
      puts 'This is not a valid Roman numeral!'
      return
    end

    if val < prev
      val *=
    else
    end
  end

end