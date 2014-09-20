# Write a program that asks the user to type
# as many words as they want (pressing enter after
# each word) until they press enter on an empty line.
# Then, repeat the words back to the user in alphabetical
# order.  HINT: Use sort!

words = []
puts "A word?"
entry = gets.chomp
while (entry.length != 0)
  words.push entry
  puts "another?"
  entry = gets.chomp
end
if (words.length == 0)
  puts "Well... you didn't give me much to work with."
else
  puts words.sort
end

