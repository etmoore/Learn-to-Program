$shuffle_setting = true
my_music_path = '/Users/evan/Desktop/music_for_playlist'

def shuffle arr
  shuf = []

  # loop through arr
  while arr.length > 0
    # grab a random item from arr
    random_position = rand(arr.length)
    # delete it (returns the deleted value)
    random_object = arr.delete_at(random_position)
    # and push it into shuf
    shuf.push random_object
  end

  shuf
end

def make_playlist music_path
  puts 'What would you like to call this playlist?'
  playlist_name = gets.chomp

  # Move to the music directory
  Dir.chdir music_path
  # Find the music to include in the playlist
  music_files_arr = Dir['**/*.{MP3,mp3}']
  # Shuffle the music
  if $shuffle_setting == true
    music_files_arr = shuffle music_files_arr
  end
  # Turn the music_files array into a string,
  # separated by \n
  music_files_str = music_files_arr.join("\n")
  # Write the paths to the playlist file
  filename = playlist_name + '.m3u'
  File.open filename, 'w' do |f|
    f.write(music_files_str)
  end
end

make_playlist my_music_path