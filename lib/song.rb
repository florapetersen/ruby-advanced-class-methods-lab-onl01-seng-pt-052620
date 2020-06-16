class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def Song.create
    Song.all
    name
  end

  def Song.all(name)
    @name = name
    @@all << @name
  end
end
