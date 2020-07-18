require 'pry'
class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name=(musician)
        Artist.all.find do |artist|
            if artist.name == musician
                return self.artist = artist
            end
        end
        self.artist=(Artist.new(musician))
    end

    def self.new_by_filename(filename)
        new_file = filename.split(/[-]/).map(&:strip)
        new_song = Song.new(new_file[1])
        new_song.artist_name = new_file[0]
        new_song
    end
end