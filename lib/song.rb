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
 
 
 def self.genre_count #returns a hash of genres and the number of songs
  genre_count = {} #returns a hash 
  self.all.map do |song|
    song.genre.count 
  end 
end 
  
  # def self.genres #class method that returns an array of all genres of the existin songs
  #   @@genres.unique 
  # end 
  
  # def self.artists #class method that returns an array of all artists of the existin songs 
  #                 #with only UNIQUE artists
  #   @@artists.unique 
  
  # end 

end