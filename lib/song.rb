require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists =[]

  def initialize(name,artist,genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre  = genre
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash={}
    @@genres.each do |genre|
      genre_hash[genre]
      # binding.pry
      if genre_hash[genre] == nil
        genre_hash[genre] = 1
      else
        genre_hash[genre] += 1
      end
    end
      genre_hash
  end

  def self.artist_count
    artist_hash={}
    @@artists.each do |artist|
      artist_hash[artist]
      # binding.pry
      if artist_hash[artist] == nil
        artist_hash[artist] = 1
      else
        artist_hash[artist] += 1
      end
    end
      artist_hash
  end
end
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
my_mistake = Song.new("My Mistake", "Vampire Weekend", "alternative")
