
require 'pry'

class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = 0 
    @@artist_count = 0
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
# binding.pry
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
        
        

    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        output = {}
        @@genres.each do |genre|
            
            if output[genre].nil?
                
                output[genre] = 1
            else
                output[genre] += 1
            end
        end
        output
    end

    def self.artist_count
        output = {}
        @@artists.each do |artist|
            
            if output[artist].nil?
                
                output[artist] = 1
            else
                output[artist] += 1
            end
        end
        output
    end


end