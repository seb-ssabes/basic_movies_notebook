class Movie
  attr_accessor :title, :director, :year, :score

  def initialize(title, director, year, score)
    @title = title
    @director = director
    @year = year
    @score = score
  end
end

# movie1 = Movie.new("Fight Club", "David Fincher", "1999", "8.8")
# p movie1
# p movie1.director
