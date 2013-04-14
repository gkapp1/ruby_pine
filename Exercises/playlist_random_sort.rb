file_tracks = Dir['/Users/Greg/Documents/Old Hard Drive/Dell/Music/**/*.{mp3,MP3}']

shuffled_songs = []

while file_tracks != []
  n = file_tracks.length
  i = 0
  while i < n
    m = file_tracks.length
    pull_position = rand(m) # Returns random integer in file_tracks 0..m-1
    shuffled_songs.push(file_tracks[pull_position]) # Item pulled out and pushed into shuffled file_tracks
    file_tracks.delete_at(pull_position) # Old element killed in the original (unshuffled) file_tracks
    i = i + 1
  end
end
  
Dir.chdir '/Users/Greg/Desktop'

puts "What do you wanna name this random playlist?"
print "> "
playlist_name = gets.chomp
playlist_name = playlist_name + ".m3u"

File.open playlist_name, 'w' do |f|
  f.puts(shuffled_songs)
end
