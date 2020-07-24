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

    def self.new_by_filename(file_name)
        song = self.new(file_name)
        song.name = file_name.split("-")[1].strip!
        song.artist = Artist.new(file_name)
        song.artist.name = file_name.split("-")[0].strip!
        song
    end
    
    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
      end


end
