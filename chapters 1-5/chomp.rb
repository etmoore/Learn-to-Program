puts 'This is what happens without chomp:'
puts 'Hello there, and what\'s your name?'
name = gets
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'

puts 'This is what happens with chomp:'
puts 'Hello there, and what\'s your name?'
name = gets.chomp('an')  # removes any Enter characters at the end of the line.
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'
