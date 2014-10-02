def make_playlist music_path
  puts 'What would you like to call this playlist?'
  playlist_name = gets.chomp

  # Move to the music directory
  Dir.chdir music_path
  # Find the music to include in the playlist
  music_files = Dir['**/*.{MP3,mp3}'].join("\n")

  # Write the paths to the playlist file
  filename = playlist_name + '.m3u'
  File.open filename, 'w' do |f|
    f.write(music_files)
  end
end

my_music_path = '/Users/evan/Desktop/music_for_playlist'
make_playlist my_music_path