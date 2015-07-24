class LocationsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def new
    @location = Location.new
    @user
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

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update(location_params)
      redirect_to locations_path
    else
      render :edit
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
