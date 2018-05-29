class Genre 
  attr_reader :name 
  @@all = []
  
  def self.all 
    @all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_song(name, artist)
    song = Song.new(name, artist, self)
    song.genre = self 
  end 
  
  def songs 
    Songs.all.select do |song|
      song.genre == self 
    end 
  end 
  
  def genres 
    Songs.all.collect do |song|
      song.artist 
    end 
  end
end 