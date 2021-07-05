class MP3Importer
    attr_accessor :path, :filename

    def initialize(path)
        @path = path
        @filename = []
    end

    def files
        Dir.entries(path).each {|filenames| @filename << filenames }
        @filename.delete_if {|x| x.end_with?(".mp3") == false}
    end



    def import
        self.files.each {|filename| Song.new_by_filename(filename)}
        # self.filename.each {|filename| Song.new_by_filename(filename)}
        
        # i = 0
        # while i < self.filename.length
        #     Song.new_by_filename(filename[i])
        # i += 1
        # end
    end

end