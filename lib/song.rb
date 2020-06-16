require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
    binding.pry
  end

  def Song.create(name)
    @name = name
    @@all << @name
  end
end
