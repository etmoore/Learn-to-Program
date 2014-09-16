# get the start year and the end year
puts 'Please provide a starting year'
start_year = gets.chomp.to_i
puts 'Please provide an ending year'
end_year = gets.chomp.to_i

index_year = start_year
puts '------LEAP YEARS------'
while index_year <= end_year
  if index_year % 4 == 0 && (index_year % 100 != 0 || index_year % 400 == 0)
    puts index_year
  end
  index_year += 1
end
