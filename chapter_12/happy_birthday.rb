# Asks the user when they were born, and then "SPANK!"s them
# for each year they've been alive.

puts 'What year were you born in? (yyyy)'
b_year = gets.chomp.to_i

puts 'What month were you born in? (mm)'
b_month = gets.chomp.to_i

puts 'What day were you born on? (dd)'
b_day = gets.chomp.to_i

age = 1
now = Time.new()
while Time.local(b_year + age, b_month, b_day) < now
  puts 'SPANK!'
  age += 1
end