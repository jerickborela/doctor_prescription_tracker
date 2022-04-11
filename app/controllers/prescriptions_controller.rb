class PrescriptionsController < ApplicationController
    def index
        @prescriptions = Prescription.all

    end

    def show
        @prescription = Prescription.find(params[:id])
    end

    def new
        @prescription = Prescription.new
        @doctor = Doctor.new
        @prescription.medicines.build
    end

    def create
        @prescription = Prescription.new(params.require(:prescription).permit(:date_issued))

        if @prescription.save
            redirect_to @prescription
        else
            render :new
        end
    end

    def edit
        @prescription = Prescription.find(params[:id])
    end

    def update
        @prescription = Prescription.find(params[:id])
        if @prescription.update(params.require(:prescription).permit(:name))
            redirect_to @prescription
        else
            render :edit
        end
    end

    def destroy
        @prescription = Prescription.find(params[:id])
        @prescription.destroy
        redirect_to prescriptions_path
    end
end
