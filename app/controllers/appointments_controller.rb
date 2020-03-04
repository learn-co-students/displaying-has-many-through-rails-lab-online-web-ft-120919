class AppointmentsController < ApplicationController

    def show
        @appointment = Appointment.find(params[:id])
        @date = @appointment.appointment_datetime.strftime("%B %d, %Y")
        @time = @appointment.appointment_datetime.strftime("%H:%M")
    end

end
