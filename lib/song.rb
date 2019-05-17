class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
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
# terate through @@genres array and create a hash
    genre_counter = {}
    @@genres.each do |genre|
      if genre_counter[genre].nil?
        genre_counter[genre] = 0
      end
    genre_counter[genre] += 1
    end
    genre_counter
  end

  def self.artist_count
  artist_counter = {}
    @@artists.each do |artist|
      if artist_counter[artist].nil?
        artist_counter[artist] = 0
      end
    artist_counter[artist] += 1
    end
    artist_counter
  end

# iterate through @@artists array and create a hash

end
