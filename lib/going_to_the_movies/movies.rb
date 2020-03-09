class Movies
  
  attr_accessor :name, :movie_link
  
  def self.create_from_array
    a = Scraper.movie_list
    b = Scraper.movie_links
    a.each do |x|
      Movies.new(x, b[0])
      b.shift
    end
  end
  
  def initialize(name, movie_link)
    @name = name
    @movie_link = movie_link
  end
  
  
end
