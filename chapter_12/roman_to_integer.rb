def roman_to_integer roman
  # Create an object to hold the roman numeral values
  digit_vals = {
    'i' => 1,
    'v' => 5,
    'x' => 10,
    'l' => 50,
    'c' => 100,
    'd' => 500,
    'm' => 1000
  }

  # Create variables to hold the total value, the previous value
  # and an index
  total = 0
  prev = 0
  index = roman.length - 1

  # Loop through the string, starting from the end
  while index >= 0
    # Get the current/index character
    c = roman[index].chr.downcase
    # Get the value of the character
    val = digit_vals[c]
    # Decrement the value of index.
    index -= 1
    # Check to make sure there's a value. If not, return.
    if !val
      puts 'Not a valid roman numeral!'
      return
    end
    # Check if the value is less than the previous value.
    if val < prev
      # If less, then multiply the value by -1
      val *= -1
    # Else, set the value of prev to the current value
    else
      prev = val
    end
    # Add the value to the total
    total += val
  end
  # return the total
  total
end

puts roman_to_integer 'mcmxcix'
puts roman_to_integer 'CCCLXV'