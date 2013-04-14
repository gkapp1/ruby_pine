song_tracks = Dir['/Users/Greg/Documents/Old Hard Drive/Dell/Music/**/*.{mp3,MP3}']

puts song_tracks # Sweet - just ran this and we got some songs!

Dir.chdir '/Users/Greg/Desktop'

puts "What do you wanna name this playlist?"
print "> "
playlist_name = gets.chomp
playlist_name = playlist_name + ".m3u"


File.open playlist_name, 'w' do |f|
  f.puts(song_tracks)
end

# Okay so this worked! It plays in iTunes but takes a minute. 
# Note that this is totally unsorted...the next playlist should be random!