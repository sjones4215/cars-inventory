class CarsController < ApplicationController

    def index
        @car = Car.all
        render json: @car
    end 

    def show 
        render json: @car
    end
    
    
    def create
        @car = Car.new(car_params)

        if @car.save
            render json: @car, status: :created, location: @car
        else
            render json: @car.errors, status: :unprocessable_entity
        end
    end

    def update
        if car.update(car_params)
            render json: @car
        else
            render json: @car.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @car.destroy
    end

    private

    def set_car
        @car = Car.find(params[:id])
    end

    def car_params
        params.require(:shoe).permit(:year, :make, :model, :price, :color, :mileage)
    end
end