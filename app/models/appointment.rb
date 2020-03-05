class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def datetime(string)
        readable_datetime = []
        datetime_array = string.rpartition("T")
        datetime_array.delete_at(1)
        date = datetime_array[0].split("-")
        year = date[0]
        month = date[1]
        day = date[2]
        time = datetime_array[1].split(":")
        time.pop
        time.pop
        hour = time[0]
        minutes = time[1]
        appointment_time = Time.new(year.to_i, month.to_i, day.to_i, hour.to_i, minutes.to_i)
        if appointment_time.month == 1
            readable_datetime << "January"
        elsif appointment_time.month == 2
            readable_datetime << "Febuary"
        elsif appointment_time.month == 3
            readable_datetime << "March"
        elsif appointment_time.month == 4
            readable_datetime << "April"
        elsif appointment_time.month == 5
            readable_datetime << "May"
        elsif appointment_time.month == 6
            readable_datetime << "June"
        elsif appointment_time.month == 7
            readable_datetime << "July"
        elsif appointment_time.month == 8
            readable_datetime << "August"
        elsif appointment_time.month == 9
            readable_datetime << "September"
        elsif appointment_time.month == 10
            readable_datetime << "October"
        elsif appointment_time.month == 11
            readable_datetime << "November"
        else 
        end
        readable_datetime << "#{appointment_time.day}," 
        readable_datetime << appointment_time.year 
        readable_datetime << "at"
        readable_datetime << "#{appointment_time.hour}:#{convert_min_to_readable(appointment_time)}"
        readable_datetime.join(" ")

    end

    def convert_hour_to_readable(military_time)
        time = military_time - 12
        if time.even?
            time
        else
            time * -1
        end

    end

    def convert_min_to_readable(time)
        minutes = time.min
        if minutes == 0 
            minutes = "00"
        elsif minutes == 0..9 
            "0#{minutes}"
        else
            minutes
        end
    end


end
