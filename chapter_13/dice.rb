class Die
  def initialize
    roll
    @sides = 6
  end

  def roll
    @number_showing = 1 + rand(@sides)
  end

  def showing
    @number_showing
  end

  def sides
    @sides
  end

  def cheat
    puts 'So sneaky! What would you like to set the die to?'
    input = gets.chomp.to_i
    until input >= 1 && input <= @sides
      puts "Nice try. Pick a number from 1-#{@sides}."
      input = gets.chomp.to_i
    end
    @number_showing = input
  end

  def set_sides
    puts 'How many sides should the die have?'
    input = gets.chomp.to_i
    until input >= 2
      puts 'Physically impossible. Choose a number greater than or equal to 2.'
      input = gets.chomp.to_i
    end
    @sides = input
  end
end

puts Die.new.cheat