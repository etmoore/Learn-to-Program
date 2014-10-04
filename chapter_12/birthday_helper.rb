# read in birth dates from a text file
birth_dates = {}
filename = 'birthdays.txt'
File.read(filename).each_line do |line|
  line = line.chomp
  first_comma = 0
  while line[first_comma].chr != ',' && first_comma < line.length
    first_comma += 1
  end

  # parse the birthdays, store them in an object with names as keys
  name = line[0..(first_comma - 1)]
  date = line[-12..-1]

  birth_dates[name] = date
end

# ask user for a name
puts "Whose birthday are you looking for?"
special_boy_or_girl = gets.chomp

# reply with the person's next birthday and how old that person will be
date = birth_dates[special_boy_or_girl]

if date == nil
  puts "Ooooh, I don't know that one."
else
  puts date[0..5]
end