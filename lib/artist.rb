class Artist
    
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
         self.class.all << self
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        array = Song.all.reject {|song| song.artist.nil?}
        array.select {|song| song.artist == self}
    end

    def self.find_or_create_by_name(name)
       a = Song.all.reject {|song| song.artist.nil?} 
       b = a.find {|song| song.artist.name == name}
        if b == [] || b == nil
            Artist.new(name)
        else
            b.artist
        end
    end

    def print_songs
        Song.all.find_all {|songs| songs.artist == self}.map {|songs| puts songs.name}
    end

end
