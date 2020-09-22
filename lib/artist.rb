class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end 
  
  def songs 
    Song.all.select{|s| s.artist == self}
  end 
end 
