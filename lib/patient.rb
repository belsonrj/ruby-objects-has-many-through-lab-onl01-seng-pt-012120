class Patient

  attr_reader :name, :appointment, :doctor

  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
<<<<<<< HEAD
    Appointment.all.select {|appointment| appointment.patient == self}
=======
    @appointments
>>>>>>> ddabdbe8425f607831da298fbbc9dbed3c209f99
  end

  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end
  
  def self.all 
    @@all
  end
end