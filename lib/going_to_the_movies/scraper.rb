
class Scraper
  
  def self.movie_list
    url = Nokogiri::HTML(open("https://www.imdb.com/movies-in-theaters/"))
    a = url.css("body").css("div#wrapper").css("div#root").css("div#pagecontent").css("div#content-2-wide").css("div#main").css("div").css("div")
    b = a.css("h4").text
    c = b.split(")")
    c.each do |x|
      x[-6..-1] = ""
      x[0] = ""
    end
    c
  end
  
  def self.movie_genres
    url = Nokogiri::HTML(open("https://www.imdb.com/movies-in-theaters/"))
    a = url.css("body").css("div#wrapper").css("div#root").css("div#pagecontent").css("div#content-2-wide").css("div#main").css("div").css("div")
    b = []
    a.css("p").each do |x|
      b << x.css("span").text
    end
    b.pop
    b
  end
  
  def self.movie_span
    url = Nokogiri::HTML(open("https://www.imdb.com/movies-in-theaters/"))
    a = url.css("body").css("div#wrapper").css("div#root").css("div#pagecontent").css("div#content-2-wide").css("div#main").css("div").css("div")
    b = a.css("p").css("time").text
    c = b.split(" min")
    c 
  end
  
end