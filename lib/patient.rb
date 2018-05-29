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
  
  def doctors
    Appointment.all.select{|app| app.patient == self}
  end 
  
  def patients 
    Appointment.all.collect do |app|
      if app.patient == self 
        app.doctor
      end 
    end 
  end
end 