class GardensController < ApplicationController
    def index
        @gardens = Garden.all
    end

    def show
        @garden = Garden.find(params[:id])
        @plants = @garden.plants

        @plant = Plant.new
    end
end
