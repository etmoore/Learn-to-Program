=begin
Whatever you say to Grandma, she responds with
HUH?! SPEAK UP, SONNY!
unless you shout it in all caps. If you shout,
she can hear you and yells back
NO, NOT SINCE 1938!
make it a random year between 1930 and 1950
=end

=begin
Extended:
Grandma will pretend not to hear you unless
you shout 'BYE' three times
=end

puts 'Hey there, sweetie. What\'s on your mind?'
statement = gets.chomp
bye_count = 0
while bye_count < 2
  if statement == 'BYE'
    bye_count += 1
    puts 'Sorry... didn\'t hear that'
    statement = gets.chomp
  elsif statement != statement.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
    statement = gets.chomp
    bye_count = 0
  else
    puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s
    statement = gets.chomp
    bye_count = 0
  end
end
puts 'Oh, alright. Come by tomorrow!'

