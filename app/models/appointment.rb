class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def display_time
        self.appointment_datetime.to_formatted_s(:long).split(" ").insert(3, "at").join(" ")
    end
end
