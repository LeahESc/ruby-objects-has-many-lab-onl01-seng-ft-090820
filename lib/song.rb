class Song 
  attr_accessor :name, :artist 
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  # def add_song_by_name(title)
  #   song = self.new
  #   song.title = title
  #   @title = title 
  #   @@all << song
  #   song.artist = Artist 
  # end
  
end 