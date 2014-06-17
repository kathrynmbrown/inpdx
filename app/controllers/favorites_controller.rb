class FavoritesController < ApplicationController
  before_filter :load_favoriteable

  def index
    @favorites = @favoriteable.favorites
  end

  def new
    @favorite = @favoriteable.favorites.new
  end

  def create
    @favorite = @favoriteable.favorites.new(favorite_params)
    if @favorite.save
      redirect_to @favoriteable
    else
      render :new
    end
  end

private
  def favorite_params
    params.require(:favorite).permit(:name, :user_id)
  end

  def load_favoriteable
    resource, id = request.path.split('/')[1, 2]
    @favoriteable = resource.singularize.classify.constantize.find(id)
  end
end
