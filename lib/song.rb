class Song
    attr_accessor :name, :artist

    @@all = []

    def self.all
        @@all
    end
    
    def initialize(name, artist = nil)
        @name = name
        @artist = artist
        self.class.all << self
    end

    def self.new_by_filename(filename)
        artist_name = filename.split(" - ")[0]
        temp_artist = Artist.find_or_create_by_name(artist_name)
        song = filename.split(" - ")[1]
        Song.new(song, temp_artist)
    end

    def artist_name=(artist)

        a = Artist.all.find {|art| art.name == artist} 
        if a != nil
            self.artist = a
        else
            a = Artist.new(artist)
            self.artist = a
        end
    end


 

end