class CarsController < ApplicationController

    def index
        render json: "Hello there..."
    end 

    def create
        @car = Car.new(car_params)

        if @car.save
            render json: @car, status: :created, location: @car
        else
            render json: @car.error, status: :unprocessable_entity
        end
    end
end