require 'pry'
require 'nokogiri'
require 'open-uri'
class Scraper
  
  def get_page
    Nokogiri::HTML(open("https://www.amctheatres.com/"))
  end
  
  def self.movie_list
    url = Nokogiri::HTML(open("https://www.amctheatres.com/"))
    a = url.css("body").css("div").css("div.poster-carousel-wrapper.MoviePosters.is-standalone").css("div").css("div").css("div").css("div")
    b = []
    binding.pry
    a.each do |x|
      b << x.css("h3").text
    end
    b
  end

end
Scraper.movie_list
