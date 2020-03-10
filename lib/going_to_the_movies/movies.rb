class Movies
  
  attr_accessor :name, :genres, :runtime
  
  def self.create_from_array
    a = Scraper.movie_list
    b = Scraper.movie_genres
    c = Scraper.movie_span
    a.each do |x|
      y = Movies.new(x, b[0], c[0])
      b.shift
      c.shift
    end
  end
  
  def initialize(name, genres, runtime)
    @name = name
    @genres = genres
    @runtime = runtime
    @@all << self
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
end