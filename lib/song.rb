require 'pry'

class Song 
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre  

  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
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
    g_hash = {}
    g_check = @@genres.uniq
    g_check.each do |genre|
      g_hash[genre] = @@genres.count(genre)
    end 
    g_hash
  end 
  
  def self.artist_count 
    a_hash = {}
    a_check = @@artists.uniq
    a_check.each do |artist|
      a_hash[artist] = @@artists.count(artist)
    end 
    a_hash
  end 
end 