def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  # if there's nothing in unsorted_array, then return the sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end

  # create an empty array to hold words that have yet to be sorted
  still_unsorted = []

  # grab a word from unsorted_array and assign it to smallest
  smallest = unsorted_array.pop

  # loop through the rest of the words in unsorted_array
  unsorted_array.each do |test_object|
    # compare the test_object to smallest
    # if the test_object is smaller...
    if test_object < smallest
      # push smallest back into the unsorted array...
      still_unsorted.push smallest
      # assign the test_object to smallest
      smallest = test_object
    else
      still_unsorted.push test_object
    end
  end
  # Now, we have the smallest object in smallest
  # Push the smallest object into the sorted_array
  sorted_array.push smallest

  # Repeat the process
  recursive_sort still_unsorted, sorted_array
end

puts sort ['dogs', 'cats', 'fish', 'mice', 'hogs', 'cows', 'birds']
puts sort [1, 2, 3, 5, 4]
puts sort [1, 1, 1, 1, 1]  # testing duplication
puts sort ['dogs', 'dogs', 'fish', 'fish']