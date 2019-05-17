require 'pry'
class Song 
  
  @@count = 0 #set this variable equal to 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count +=1 #increment the value of this variable by 1 (and make sure the number
                #is right next to the equal sign cause += 1 will NOT work)
    @@genres << genre
    @@artists << artist 
  end 
  
  def self.count #class method 
    @@count      #class variable 
  end 
 
def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
 
def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
  
end