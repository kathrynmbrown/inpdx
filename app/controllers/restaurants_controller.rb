class RestaurantsController < ApplicationController

  def home
  end

  def index
    if params[:tag]
      @restaurants = Restaurant.tagged_with(params[:tag])
    else
      @restaurants = Restaurant.all
    end

  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      render 'show'
    else
      render 'new'
    end
  end

  def show
     @restaurant = Restaurant.find(params[:id])
     @current_profile = current_user.id
     @review = Review.new
     @favoriteable = @restaurant
     @favorites = @favoriteable.favorites
     @favorite = Favorite.new
  end

  def edit
     @restaurant = Restaurant.find(params[:id])
  end

  def update
     @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant), notice: "restaurant updated successfully"
    else
      render 'edit', notice: "Invalid entry. Please try again."
    end
  end

  def destroy
    @restaurant = Restaurant.find_by(params[:id])
    @restaurant.destroy
    render 'index'
  end

private
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :phone, :tag_list, :longitude, :latitude, :avatar, :website, :hours)
  end
end
