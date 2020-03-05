class PatientsController < ApplicationController

    def index
        @patients = Patient.all 
        #binding.pry
    end

    def show
        @patient = Patient.find_by(id: 2)
        @appointments = @patient.appointments
        #binding.pry
    end


end
