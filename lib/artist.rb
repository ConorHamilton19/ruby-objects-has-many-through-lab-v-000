class Artist 
  attr_accessor :name
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_song(song_name, genre)
    Song.new(song_name, genre)
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