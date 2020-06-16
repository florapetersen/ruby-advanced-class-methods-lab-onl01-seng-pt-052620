class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def Song.create(name)
    @name = name
    Song.all
    name
  end

  def Song.all
    @@all << name
  end
end
