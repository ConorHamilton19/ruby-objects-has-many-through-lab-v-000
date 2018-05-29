class Appointment 
  attr_reader :name, :date, :doctor
  @@all = []
  
  def initialize(date, patient, doctor)
    @name = name 
    @doctor = doctor
    @date = date
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
end 