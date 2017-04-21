class Movie
  attr_accessor :title, :score

  @@all = []

  def initialize(title)

    @title = title
    @@all << self
  end

  def all
    @@all
  end

  def self.find_by_title(title)
    @@all.find do |trgt_title|
      trgt_title.title == title
    end
  end

  def ratings(title)
    Rating.all.collect do |target|
      if target.movie = title
        target.score
      end
    end
  end

  def viewers(title)
    Rating.all.collect do |target|
      if target.movie = title
        target.score
      end
    end

  end


end
