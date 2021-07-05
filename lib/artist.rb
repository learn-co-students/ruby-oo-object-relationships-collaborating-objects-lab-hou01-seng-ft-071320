require 'pry'
require_relative 'song'
require_relative 'mp3_importer'
class Artist
    attr_accessor :name, :artist, :song
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def add_song(song_name)
        song_name.artist = self
        self.songs
    end

    def all_songs
    end

    def songs
        Song.all.find_all do |song| song.artist == self
        end
    end

    def self.find_or_create_by_name(artist_name)
        @@all.each do |index|
            if index.name == artist_name
                return index
            end
        end
        self.new(artist_name)
    end

    def print_songs
        songs.each{|index| puts index.name}
    end
end
