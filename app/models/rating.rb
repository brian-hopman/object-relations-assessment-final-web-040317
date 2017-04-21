class Rating
  attr_accessor :score, :movie, :viewer

  @@all = []

  def initialize(score, viewer, movie)
    @score = score
    @viewer = viewer
    @movie = movie
    @@all << self
    @ratings = []
  end

  def self.all
    @@all
  end

  def viewer(rating)
    @@all.find do |viewer|
      viewer.score = rating
    end
  end


end
