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
    genre_hash = {}
    @@genres.each do |genre|
      genre_hash[genre] = @@genre.count{|g| g == genre}
    end
  end
      
  
  
end