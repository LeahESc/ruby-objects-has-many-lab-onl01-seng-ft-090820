class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def songs 
    Song.all.select{|s| s.artist == self}
  end 
  
  def add_song(song_obj)
    @songs << song_obj
    song_obj.artist = self
  end 
  
  def add_song_by_name(title)
    song = Song.new(title)
    song.title = title 
    @songs << song 
    song.artist.name = self.name
    song
  end 
    
end 
