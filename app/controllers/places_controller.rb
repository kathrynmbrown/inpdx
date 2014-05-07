class PlacesController < ApplicationController

  def home
    @q = Place.search(params[:q])
    @places = @q.result
  end  

  def index
    @places = Place.all
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
    params.require(:place).permit(:name, :description, :address, :phone, :category)
  end
end
