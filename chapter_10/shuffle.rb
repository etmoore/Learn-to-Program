def shuffle arr
  shuf = []

  # loop through arr
  while arr.length > 0
    # grab a random item from arr, delete it (returns the deleted value)
    random_position = rand(arr.length)
    random_object = arr.delete_at(random_position)
    # and push it into shuf
    shuf.push random_object
  end

  puts shuf
end

shuffle ['aardvark', 'cat', 'dog', 'fish', 'zebra']
shuffle [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]