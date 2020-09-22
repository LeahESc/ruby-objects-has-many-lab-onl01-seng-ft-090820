class Song 
  attr_accessor :title, :artist 
  
  @@all = [] 
  
  def initialize(title, artist) 
    @title = title
    @artist = artist
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def add_song_by_name(title)
    song = self.new
    song.title = title
    @title = title 
    @@all << song 
  end
  
end 