require 'pry'

class Song

  @@all_songs = []
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
    @@all_songs << self
    @@genres << genre
    @@artists << artist
  end

def self.all
  @@all_songs
end

  def self.count #class method
    @@count      #class variable
  end


  def self.genres
    @@genres.uniq
  end

 def self.genre_count #returns a hash of genres and the number of genres
   genre_count = {} #returns a hash
   @@genres.each do |genre|

     if genre_count[genre].nil?
       genre_count[genre] = 0
     end
     genre_count[genre] += 1
   end
   genre_count
 end

  def self.artists
    @@artists.uniq
  end

 def self.artist_count #returns a hash of genres and the number of genres
   artist_count = {} #returns a hash
   @@artists.each do |artist|
     if artist_count[artist].nil?
       artist_count[artist] = 0
     end
     artist_count[artist] += 1
   end
   artist_count
 end
#binding.pry 
 end
 