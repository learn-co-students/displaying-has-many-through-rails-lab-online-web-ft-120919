class DoctorsController < ApplicationController
    def show
        @doctor = Doctor.find_by(params[:id])
        @appointments = @doctor.appointments
        #@time = @appointment.datetime(@appointment.appointment_datetime) 

        #binding.pry
    end
end
