# FIXME: Doesn't distinguish between capital and lowercase letters...
# shouldn't capitalized words come before lowercase?

def dictionary_sort arr
  recursive_dictionary_sort arr, []
end

def recursive_dictionary_sort unsorted_array, sorted_array

  if unsorted_array.length <= 0
    return sorted_array
  end

  smallest = unsorted_array.pop
  still_unsorted = []

  unsorted_array.each do |test_object|
    if test_object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = test_object
    else
      still_unsorted.push test_object
    end
  end

  sorted_array.push smallest

  recursive_dictionary_sort still_unsorted, sorted_array
end

puts dictionary_sort ['store', 'walked', 'A', 'boy', 'Quickly']
puts dictionary_sort ['dog', 'Dog', 'cat', 'Cat', 'Aardvark', 'aardvark']