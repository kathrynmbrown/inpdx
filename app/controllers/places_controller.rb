class PlacesController < ApplicationController

  def home
  end

  def index
    if params[:tag]
      @places = Place.tagged_with(params[:tag])
      @organizations = Organization.tagged_with(params[:tag])
      @events = Event.tagged_with(params[:tag])
    else
      @places = Place.all
      @organizations = Organization.all
      @events = Event.all
    end

  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      render 'show'
    else
      render 'new'
    end
  end

  def show
     @place = Place.find_by_id(params[:id])
  end

  def edit
     @place = Place.find(params[:id])
  end

  def update
     @place = Place.find(params[:id])
    if @place.update(place_params)
      redirect_to place_path(@place), notice: "place updated successfully"
    else
      render 'edit', notice: "Invalid entry. Please try again."
    end
  end

  def destroy
    @place = Place.find_by(params[:id])
    @place.destroy
    render 'index'
  end

private
  def place_params
    params.require(:place).permit(:name, :description, :address, :phone, :tag_list, :longitude, :latitude, :avatar, :background_image)
  end
end
