class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def date_time
    a = self.appointment_datetime
    
    a.strftime("%B %d, %Y at %H:%M")
  end

  def patient_name
    patient.name
  end

  def doctor_name
      doctor.name
  end
end
