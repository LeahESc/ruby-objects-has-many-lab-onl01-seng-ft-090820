class Artist 
  attr_accessor :artist_name 
  
  def initialize(artist_name)
    @artist_name = artist_name 
    @songs = []
  end 
  
  def songs 
    Song.all.select{|s| s.artist == self}
  end 
  
  def add_song(song_obj)
    @songs << song_obj
    song_obj.artist = self
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.name = name 
    song.artist = self
    @songs << song 
  end 
    
end 
