class Artist 
  attr_reader :name 
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song.artist = self 
  end 
  
  def songs 
    Songs.all.select do |song|
      song.artist == self 
    end 
  end 
  
  def genres 
    Songs.all.collect do |song|
      song.genre
    end 
 end 
end 