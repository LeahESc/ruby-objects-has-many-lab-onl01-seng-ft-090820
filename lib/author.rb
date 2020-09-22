class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def posts 
    Posts.all.select{|p| p.author == self} 
  end
end 