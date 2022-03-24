class MedicinesController < ApplicationController
    def index
        @medicines = Medicine.all
    end

    def show
        @medicine = Medicine.find(params[:id])
    end

    def new
        @medicine = Medicine.new
    end

    def create
        @medicine = Medicine.new(params.require(:medicine).permit(:name,:price))

        if @medicine.save
            redirect_to @medicine
        else
            render :new
        end
    end

    def edit
        @medicine = Medicine.find(params[:id])
    end

    def update
        @medicine = Medicine.find(params[:id])
        if @medicine.update(params.require(:medicine).permit(:name,:price))
            redirect_to @medicine
        else
            render :edit
        end
    end

    def destroy
        @medicine = Medicine.find(params[:id])
        @medicine.destroy
        redirect_to medicines_path
    end
end
