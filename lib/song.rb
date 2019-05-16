require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << self.artist
    @@genres << self.genre
    @@count +=1
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
    genres_hash = {}
    @@genres.each do |genre_index|
      genres_hash[genre_index]
      if genres_hash[genre_index] == nil
        genres_hash[genre_index] = 1
      else genres_hash[genre_index] +=1
      end
    end
      genres_hash
    end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist_index|
      artist_hash[artist_index]
      if artist_hash[artist_index] == nil
        artist_hash[artist_index] = 1
      else artist_hash[artist_index] +=1
      end
    end
    artist_hash
    end
  end
