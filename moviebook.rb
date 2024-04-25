require "csv"
require "pry-byebug"
require_relative "controller"

class Moviebook
  attr_accessor :movies

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @movies = []
    load_csv
  end

  def all
    @movies
  end

  def create(movie)
    @movies << movie
    save_csv
  end

  def destroy(movie_index)
    @movies.delete_at(movie_index)
    save_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: true) do |row|
      new_movie = Movie.new(row["title"], row["director"], row["year"], row["score"])
      create(new_movie)
    end
  end

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
      csv << ["title", "director", "year", "score"]
      @movies.each do |movie|
        csv << [movie.title, movie.director, movie.year, movie.score]
      end
    end
  end
end
