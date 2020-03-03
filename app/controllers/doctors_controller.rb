class DoctorsController < ApplicationController

  def show
    set_doctor 
  end

  private

  def set_doctor
    @doctor = Doctor.find_by(id: params[:id])
  end #set_doctor

end
