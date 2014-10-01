# DOES NOT WORK YET
# gets caught in an infinite loop...

def sort_array array_of_words
  unsorted_array = array_of_words
  sorted_array = []

  if unsorted_array.length <= 0
    return sorted_array
  end

  while unsorted_array.length > 0
    smallest = unsorted_array.pop
    still_unsorted = []

    unsorted_array.each do |compared_word|
      if compared_word < smallest
        still_unsorted.push smallest
        smallest = compared_word
      else
        still_unsorted.push compared_word
      end
    end

    sorted_array.push smallest
    unsorted_array.concat(still_unsorted)
  end

  sorted_array
end

# print sort_array []
puts sort_array ['dog', 'cat', 'aardvark', 'fish', 'bear', 'zebra']

