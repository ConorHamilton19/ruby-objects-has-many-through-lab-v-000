class Patient 
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(date, doctor)
    Appointment.new(self, date, doctor)
  end
  
  def appointments
    Appointment.all.select{|app| app.patient == self}
  end 
  
  def doctors 
    Appointment.all.collect do |app|
      app.doctor
  end
end 