class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def human_readable_date
        "#{self.datetime.month} #{self.datetime.day}, #{self.datetime.year}"
    end
end
