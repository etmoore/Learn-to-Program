# The well-known quicksort algorithm

def quick_sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  less   = arr.select{|x| x <  middle}
  more   = arr.select{|x| x >= middle}

  sort(less) + [middle] + sort(more)
end

# Get a list of words to sort from the user
def array_of_words
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
  end
  words
end

puts quick_sort array_of_words