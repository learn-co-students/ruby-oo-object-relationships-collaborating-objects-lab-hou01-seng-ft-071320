require 'pry'
class MP3Importer
    attr_accessor :file
    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        @file = Dir::entries(@path)
        @file.shift(2)
        @file
    end

    def import 
        self.files.each do |index|
            Song.new_by_filename(index)
        end
    end
end