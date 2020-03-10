class CLI 
  
  def call
    puts "Welcome to Going to the Movies!"
    puts "To see movies that are in threatres now enter 'movies'"
    input = gets.strip
    if input == 'movies'
      show_movies
    end 
  end
