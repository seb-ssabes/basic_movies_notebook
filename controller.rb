require_relative "movie"
require_relative "view"
require relative "moviebook"

class Controller
  attr_reader :moviebook
  def initialize(moviebook)
    @moviebook = moviebook
    @view = View.new
  end

  def list
    movies = @moviebook.all
    @view.display_list(movies)
  end

  def add
    title = @view.ask_for_movie_title
    director = @view.ask_for_movie_director
    year = @view.ask_for_movie_year
    score = @view.ask_for_movie_score
    movie = Movie.new(title, director, year, score)
    @moviebook.create(movie)
  end

  def remove
    index = @view.ask_for_movie_to_delete - 1
    @moviebook.destroy(index)
  end
end
