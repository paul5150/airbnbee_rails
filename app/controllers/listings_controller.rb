class ListingsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def new
    @location = Location.find(params[:location_id])
    @listing = @location.listings.new
  end

  def create
    @location = Location.find(params[:location_id])
    @listing = @location.listings.new(listing_params)
    if @listing.save
      redirect_to location_path(@listing.location)
    else
      render :new
    end
  end

  def edit
    @location = Location.find(params[:location_id])
    @listing = @location.listings.find(params[:id])
  end

  def update
    @location= Location.find(params[:location_id])
    @listing = @location.listings.find(params[:id])
    if @listing.update(listing_params)
      flash[:notice] = "Listing has been edited successfully, slumlord!"
      redirect_to location_path(@listing.location)
    else
      render :edit
    end
  end

  def destroy
    @location = Location.find(params[:location_id])
    @listing = @location.listings.find(params[:id])
    @listing.destroy
    flash[:notice] = "Boom! Never happened."
    redirect_to location_path(@listing.location)
  end

  private
  def listing_params
    params.require(:listing).permit(:rooms, :price, :image)
  end
end
