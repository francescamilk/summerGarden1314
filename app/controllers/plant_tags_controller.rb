class PlantTagsController < ApplicationController
    def new
        @plant     = Plant.find(params[:plant_id])
        @plant_tag = PlantTag.new
    end

    def create
        @plant     = Plant.find(params[:plant_id])
        @plant_tag = PlantTag.new(pt_params)
        @plant_tag.plant = @plant

        if @plant_tag.save
            redirect_to garden_path(@plant.garden) 
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def pt_params
        params.require(:plant_tag).permit(:tag_id)
    end
end
