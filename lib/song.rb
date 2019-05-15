require 'pry'

class Song

  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    @@genres.each_with_object(Hash.new(0)) do |genres, count|
      count[genres] += 1
    end
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) do |artist, count|
      count[artist] += 1
    end
  end
end
