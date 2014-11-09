time = Time.new.strftime("%m-%d-%Y-%H%M%S")
playlist = File.new("#{time}.m3u", "w")

# this Dir needs to be changed based on OS and user preferences
# currently set up for Mac OS
songs = Dir["/Users/chriscerami/Documents/Music/**/*.{mp3,MP3}"]
songs.shuffle!

length = 100
songs.each do |song|
  if length > 0
    playlist.puts(song)
    length -= 1
  end
end

puts "Playlist #{time}.m3u was successfully created."
