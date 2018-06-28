class Song 
  attr_accessor :name,:artist,:genre 
  
  @@count = 0
  @@artists = []
  @@names = []
  @@genres = []
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@artists << artist
    @@genres << genre
    @@names << name
    
    @@count += 1 
  end
  
  
end