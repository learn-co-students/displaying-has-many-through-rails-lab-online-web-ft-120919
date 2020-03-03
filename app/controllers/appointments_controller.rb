class AppointmentsController < ApplicationController

  def index
    raise ActionController::RoutingError.new('Not Found')
  end

  def show
    set_appointment 
  end

  private

  def set_appointment
    @appointment = Appointment.find_by(id: params[:id])
  end #set_appointment
end
