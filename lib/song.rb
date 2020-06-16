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
    #creates new instance of Song class and sets it to song
    #shovels song onto @@all
    #returns song
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(name)
    #takes in song name as argument
    #self refers to Song class
    #self.new is new instance of Song class
    #sets new instance of Song class to song
    song = Song.new
    #gives the song instance a name, sets to name argument
    song.name = name
    #returns instance of Song
    song
  end
end
