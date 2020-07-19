require 'pry'
require_relative 'song'
require_relative 'artist'
class MP3Importer
    attr_reader :path
    attr_accessor :file

    def initialize(file_path)
        @path = file_path
    end

    def files
        @file = Dir.entries(@path)
        @file.shift(2)
        @file
    end

    def import
      self.files.each{|index| Song.new_by_filename(index)}
    end
  
  end