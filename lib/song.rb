require 'pry'
require_relative 'artist'
require_relative 'mp3_importer'
class Song
attr_accessor :name,:artist, :song
attr_reader :artist_name
@@all = []
    def initialize(song_name)
        @name = song_name
        @artist
        Song.all << self
    end
    def self.all
        @@all
    end
    def self.new_by_filename(filename)

        song_name = filename.split(" - ")[1]
        song = self.new(song_name)
        song_artist = filename.split(" - ")[0]
        song.artist = Artist.find_or_create_by_name(song_artist)
        song
    end

    def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
    end


end
