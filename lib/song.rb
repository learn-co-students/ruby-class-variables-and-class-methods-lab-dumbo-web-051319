require "pry"


class Song

  attr_accessor :name, :artist, :genre
  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@all << self
    @@count += 1
  end

  def self.count
    return @@count
  end
  def self.artists
    return @@artists.uniq
  end
  def self.genres
    return @@genres.uniq
  end
  # def self.all
  #   return @@all.uniq
  # end

  # def all_uniq
  #   @all = []
  #   @@all.each do |song|
  #     if !@all.include?(song)
  #       @all << song
  #     end
  #   end
  #   return @all
  # end

  def self.artist_count
    # binding.pry
    count_hsh = Hash.new(0)
    songs = {}
    @@all.each {|song| songs[song.name] = song.artist}
    songs.each do |song, artist|
      # binding.pry
      count_hsh[songs[song]] += 1
    end
    # binding.pry
    # artist_songs = {}
    # artists.each {|artist| artist_songs[artist] = []}
    # @@all.each {|song| artist_songs[song.artist] << song.name}
    # artist_songs.each do |artist, songs|
    #   binding.pry
    #   songs.uniq
    # end
    # binding.pry
    # artists.each {|artist| count_hsh[artist] = 0}
    # count_hsh.each do |artist, counter|
    #   @@all.each do |song|
    #     #binding.pry
    #     if artist == song.artist
    #         count_hsh[artist] += 1
    #     end
    #   end
    # end
    # # binding.pry
    return count_hsh
  end

  def self.genre_count
    count_hsh = Hash.new(0)
    genres = {}
    @@all.each {|song| genres[song.name] = song.genre}
    # binding.pry
    genres.each do |song, genre|
      # binding.pry
      count_hsh[genres[song]] += 1
    end
    return count_hsh
  end

end
