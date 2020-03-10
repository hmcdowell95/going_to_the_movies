class Movies
  
  attr_accessor :name
  
  def self.create_from_array
    a = Scraper.movie_list
    a.each do |x|
      Movies.new(x)
    end
  end
  
  def initialize(name)
    @name = name
  end
  
  
end
