class Song




  attr_accessor :name , :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists.push(@artist)
    @@genres.push(@genre)

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
     genre_count = {}
     @@genres.each { |individual_genre|
        if genre_count[individual_genre]
          # if - checks if the genre is equal to each other, if
           # it is then the count increases to one
            genre_count[individual_genre] +=1
          else
            # else the count is only one
            genre_count[individual_genre] = 1
          end
     }
     # returns the count of the genres
     genre_count
  end

  def self.count
    @@count
  end


#below this code works for the most part,
#dont know what to do in order to create a histogram
  self.artist_count
  artist_count  = {}
  @@artists.each { |individual_artist|
    if artist_count[individual_artist]
        artist_count[individual_artist] +=1
      else
        artist_count[individual_artist] = 1
      end
  }
  artist_count
  #suppose to create a histogram with the data? 
  (bins, freqs) = artist_count.histogram

  end




end
