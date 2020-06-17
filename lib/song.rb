require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self unless self.class.all.include?(self)
    self
  end

  def self.create
    #you don't need to set the song instance to a variable here
    #unless you want to do something with that variable right away
    self.new.save
  end

  def self.new_by_name(name)
    #use self instead of Song, in case you were using this with a different class
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new_by_name(name).save
  end

  def self.find_by_name(name)
    #call self.all method to return @@all Array
    self.all.find {|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical
    self.all.sort_by {|song| song.name}
  end

  def self.new_from_filename(filename)
    artist_name, name = filename.chomp(".mp3").split(" - ")
    song = self.new_by_name(name)
    song.artist_name = artist_name
    song.name = name
    return song
  end

  def self.create_from_filename(filename)
    self.new_from_filename.save
  end

end
