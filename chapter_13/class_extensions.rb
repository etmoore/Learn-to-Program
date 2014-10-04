class Array
  def shuffle
    shuf = []
    # loop through self
    while self.length > 0
      # grab a random item from self
      random_position = rand(self.length)
      # delete it (returns the deleted value)
      random_object = self.delete_at(random_position)
      # and push it into shuf
      shuf.push random_object
    end
    shuf
  end
end

puts [1, 2, 3, 4, 5].shuffle
puts ['aardvark', 'cat', 'dog', 'eagle', 'fish'].shuffle

class Integer
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative numbers!'
    end

    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end

  def to_roman

    thousands = (self / 1000)
    hundreds =  (self % 1000 / 100)
    tens =      (self % 100 / 10)
    ones =      (self % 10)

    roman = 'M' * thousands

    if hundreds == 9
      roman << 'CM'
    elsif hundreds == 4
      roman << 'CD'
    else
      roman << 'D' * (self % 1000 / 500)
      roman << 'C' * (self % 500 / 100)
    end

    if tens == 9
      roman << 'XC'
    elsif tens == 4
      roman << 'XL'
    else
      roman << 'L' * (self % 100 / 50)
      roman << 'X' * (self % 50 / 10)
    end

    if ones == 9
      roman << 'IX'
    elsif ones == 4
      roman << 'IV'
    else
      roman << 'V' * (self % 10 / 5)
      roman << 'I' * (self % 5 / 1)
    end

    roman
  end
end

puts 5.factorial
puts 13.factorial

puts 1999.to_roman
puts 2014.to_roman