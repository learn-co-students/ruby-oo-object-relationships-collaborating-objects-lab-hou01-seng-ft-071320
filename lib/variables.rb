require 'pry'

require_relative './artist'
require_relative './song'
require_relative './mp3_importer.rb'


# elton = Artist.new("Elton John")
# yoursong = Song.new("Your Song")
# yoursong.artist_name = ("Elton John")

# artist = Artist.new('Michael Jackson')
# dirty_diana = Song.new("Dirty Diana")
# billie_jean = Song.new("Billie Jean")
# piano_man = Song.new("Piano Man")
# dirty_diana.artist = artist
# billie_jean.artist = artist
# artist = Artist.new('Michael Jackson')
# song_one = Song.new("Rock With You")
# song_two = Song.new("Smooth Criminal")
# smells_like_teen_spirit = Song.new("Smells Like Teen Spirit")
# artist.add_song(song_one)
# artist.add_song(song_two)


# artist_1 = Artist.find_or_create_by_name("Michael Jackson")
# artist_2 = Artist.find_or_create_by_name("Michael Jackson")
# artist_1 = Artist.find_or_create_by_name("Drake")

# artist = Artist.new('Michael Jackson')
# dirty_diana = Song.new("Dirty Diana")
# billie_jean = Song.new("Billie Jean")
# piano_man = Song.new("Piano Man")
# artist.add_song(dirty_diana)
# artist.add_song(billie_jean)

test_music_path = "./spec/fixtures/mp3s"
music_importer = MP3Importer.new(test_music_path)
music_importer.files
music_importer.import

# Song.new_by_filename("Real Estate - It's Real - hip-hop.mp3")

binding.pry


