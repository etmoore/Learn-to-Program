start_bottles = 5
num_bottles = start_bottles
while num_bottles > 2
  puts num_bottles.to_s + ' bottles of beer on the wall, ' + num_bottles.to_s + ' bottles of beer.'
  num_bottles -= 1
  puts 'Take one down, pass it around, ' + num_bottles.to_s + ' bottles of beer on the wall.'
end
puts '2 bottles of beer on the wall, 2 bottles of beer,'
puts 'Take one down, pass it around, one bottle of beer on the wall!'
puts 'One bottle of beer on the wall, one bottle of beer,'
puts 'Take one down, pass it around 0 bottles of beer on the wall'