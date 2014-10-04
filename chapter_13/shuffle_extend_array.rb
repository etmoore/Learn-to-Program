class Array
  def shuffle
    shuf = []
    # loop through self
    while self.length > 0
      # grab a random item from self
      random_position = rand(self.length)
      # delete it (returns the deleted value)
      random_object = self.delete_at(random_position)
      # and push it into shuf
      shuf.push random_object
    end
    shuf
  end
end

puts [1, 2, 3, 4, 5].shuffle
puts ['aardvark', 'cat', 'dog', 'eagle', 'fish'].shuffle