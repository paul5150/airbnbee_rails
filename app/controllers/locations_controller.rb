class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def index
    @locations = Location.all

  end

  def show
    @location = Location.find(params[:id])

  end

  def create
    @location = Location.new(location_params)
    if @location.save
      flash[:notice] = "Your location has been added"
      redirect_to locations_path
    else
      render :new
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end

  private
  def location_params
    params.require(:location).permit(:city)
  end
end
