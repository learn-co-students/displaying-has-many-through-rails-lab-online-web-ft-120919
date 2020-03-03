class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def time
    self.appointment_datetime ? self.appointment_datetime.strftime('%B %-d, %Y at %H:%M') : nil
  end
end
