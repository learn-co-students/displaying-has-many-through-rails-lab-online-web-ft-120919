class DoctorsController < ApplicationController

    def show
        @doctor = Doctor.find(params[:id])
        # @date = @doctor.appointments.appointment_datetime.strftime("%B %d, %Y")
        # @time = @doctor.appointments.appointment_datetime.strftime("%H:%M")
    end

end
