require 'pry'

#Deliverables
#keep track of songs 
#keep track of artists
#keep track of genres 
#keep track of genre count 
#keep track of artist count 


class Song 
  
attr_accessor :name, :artist, :genre

@@count = 0 


def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre 
  @@count += 1 
end
  
# binding.pry
   
end 