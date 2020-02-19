class MedicinesController < ApplicationController

    def index
        medicines = Medicine.all

        render json: medicines
    end 
end 