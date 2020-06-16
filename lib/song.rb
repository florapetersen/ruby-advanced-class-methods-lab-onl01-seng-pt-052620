require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
    self
  end

#Build a class constructor Song.create that initializes a song and saves
#it to the @@all class variable either literally or through the class method Song.all.
#This method should return the song instance that was initialized and saved.

  def self.create
    #you don't need to set the song instance to a variable here
    #unless you want to do something with that variable right away
    Song.new.save
  end

  def self.new_by_name(name)
    #song.create creates new instance and saves it
    #if we just did song.new that would create the new instance,
    #but wouldn't save it
    song = Song.new
    #gives the song instance a name, sets to name argument
    song.name = name
    #returns instance of Song
    song
  end

  def self.create_by_name(name)
    song = Song.create
    song.name = name
    song
  end
end
