class ReviewsController < ApplicationController


  def index
    @reviews = Review.all
  end


  def new
    @place_options = Place.all.map{|p| [ p.name, p.id ] }
    @current_profile = current_user.id
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to :back
    else
      render 'new'
    end
  end

  def show
    @review = Review.find_by_id(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:title, :content, :rating, :profile_id, :place_id)
  end

end
