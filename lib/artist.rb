require 'pry'
class Artist
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
 
    
    def self.all
        @@all
    end

    def songs
        Song.all.find_all {|songs| songs.artist == self}
    end

    def add_song(song_name)
        Song.all.find_all do |index|
            if index == song_name
                song_name.artist = self
            end
        end
    end

    def print_songs
        self.songs.each {|i| puts i.name}
    end

    def self.find_or_create_by_name(musician)
        self.all.find do |musician_name|
            if musician_name.name == musician
                return musician_name
            end
        end
        Artist.new(musician)
     end
end