class ReviewsController < ApplicationController


  def index
    @reviews = Review.all
  end


  def new
    @company_options = Company.all.map{|p| [ p.name, p.id ] }
    @product_options = Product.all.map{|p| [ p.name, p.id ] }
    @restaurant_options = Restaurant.all.map{|p| [ p.name, p.id ] }
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
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:title, :content, :rating, :profile_id, :company_id, :product_id, :restaurant_id)
  end

end
