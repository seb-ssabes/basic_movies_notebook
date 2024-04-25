class View
  def display_list
    movies.each_with_index do |movie, index|
      puts "#{index + 1} - #{movie.title} - Director: #{movie.director} - Year: #{movie.year} - Score: #{movie.score}"
    end
  end

  def ask_for_movie_title
    puts "What movie would you like to add?"
    gets.chomp
  end

  def ask_for_movie_director
    puts "Director?"
    gets.chomp
  end

  def ask_for_movie_year
    puts "Release year?"
    gets.chomp
  end

  def ask_for_movie_score
    puts "Imdb score?"
    gets.chomp
  end

  def ask_for_movie_to_delete
    puts "What movie would you like to delete?"
    gets.chomp.to_i
  end
end
