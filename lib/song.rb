require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0       #class variable to keep track of the number of new songs that are created from the Song class
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist
    @@count += 1              #increment whenever  a new song is created
  end
#  binding.pry

  def self.count              #define a class method .count that returns the total number of songs created
    @@count
  end


  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq!
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


    # genre_count = Hash.new(0)
    # @@genres.each do |genre_name|
    #   genre_count[genre_name] += 1
    # genre_count
    # end
    # genres.each_with_object ([]) do |genre_name, num_song|
    #   genre_name[:genres].genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |song|
      if artist_count[song]
        artist_count[song] += 1
      else
        artist_count[song] = 1
      end
    end
    artist_count
    # artist.each do |artist_name, num_song|
    #   artist_name[:artist].artist_count
    end
  end
