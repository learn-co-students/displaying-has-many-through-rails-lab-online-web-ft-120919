class AppointmentsController < ApplicationController

    def show
        @doctor = Doctor.find_by(params[:id])
        @patient = Patient.find_by(params[:id])
        @appointment = Appointment.find_by(params[:id])
        @time = @appointment.datetime(@appointment.appointment_datetime) 
    end

end
