# Author's solution to the recursive sort problem

# wrapper method
def sort arr
  rec_sort arr, []
end

# recursive sort method
def rec_sort unsorted , sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  # find the smallest (alphabetical) word
  unsorted.each do |test_object|
    if test_object < smallest
      still_unsorted.push smallest
      smallest = test_object
    else
      still_unsorted.push test_object
    end
  end

  # Now, "smallest" points to the smallest word
  # that "unsorted" contained,
  # all the rest of it is in "still_unsorted"
  sorted.push smallest

  rec_sort still_unsorted, sorted
end

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

puts sort array_of_words

