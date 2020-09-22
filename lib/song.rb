class Song 
  attr_accessor :title, :artist 
  
  @@all = [] 
  
  def initialize(title) 
    @title = title
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  # def add_by_name(title)
  #   song = self.new
  #   song.title = title
  # end
  
end 