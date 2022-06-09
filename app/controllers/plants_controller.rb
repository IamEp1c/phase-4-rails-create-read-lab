class PlantsController < ApplicationController
   
def index 
    plants = Plant.all 
    render json: plants
  end

  def show 
    plant = Plant.find_by(id: params[:id])
    render json: plant
    # if plant
    #   render json: plant
    # else
    #   render json: { error: "Plant not found" }, status: :not_found
    # end
  end

  def create 
    plant = Plant.create(plant_params)
    render json: plant, status: 201
  end

  private 

  def plant_params
    params.permit(:name, :image, :price)
  end


  # def create
  #   bird = Bird.create(name: params[:name], species: params[:species])
  #   render json: bird, status: :created
  # end
end