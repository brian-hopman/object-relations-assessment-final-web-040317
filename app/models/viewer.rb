require 'pry'
class Viewer
  attr_accessor :first_name, :last_name, :rating

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
      @@all
  end

  def self.find_by_name(name)
    @@all.find do |vwr_name|
      vwr_name.full_name == name
    end
  end

  def create_rating(rating, viewer)
    Rating.new(rating, self)
  end
end

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
