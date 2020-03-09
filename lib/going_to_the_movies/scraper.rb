require 'pry'
require 'nokogiri'
require 'open-uri'
class Scraper
  
  def get_page
    Nokogiri::HTML(open("https://www.amctheatres.com/"))
  end
  
  @@links = []
  
  def self.movie_list
    binding.pry
    url = Nokogiri::HTML(open("https://www.amctheatres.com/"))
    a = url.css("div[tabindex='-1']")
    b = []
    a.each do |x|
      b << x.css("h3").text
      @@links << x.css("a")[0]['href']
    end
    b
  end
  
  def self.movie_links
    @@links
  end

end
Scraper.movie_list
