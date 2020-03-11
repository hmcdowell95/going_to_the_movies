class CLI 
  
  def call
    puts "Welcome to Going to the Movies!"
    input = nil 
    while input != 'exit'
      puts "To see movies that are in threatres this week and now, enter 'movies'"
      puts "To exit. type 'exit'"
      input = gets.strip.downcase
      if input == 'movies'
        show_movies
        puts "To see more info on a movie, type the number next to it"
        movie_details
      end
    end
  end

  def movie_details
    num = gets.strip.to_i
    a = Movies.all
    if num < a.size && num > 0 || num == a.size
    b = a[num - 1]
    puts "#{b.name}. its genres include #{b.genres} and its runtime is #{b.runtime} minutes"
    end
  end


  def show_movies
    count = 1
    Movies.all.each do |x|
      puts "#{count}. #{x.name}"
      count += 1
    end
  end
  
end