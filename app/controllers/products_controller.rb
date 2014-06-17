class ProductsController < ApplicationController


  def home
  end

  def index
    if params[:tag]
      @companies = Company.tagged_with(params[:tag])
      @events = Event.tagged_with(params[:tag])
      @products = Product.tagged_with(params[:tag])
    else
      @companies = Company.all
      @events = Event.all
      @product = Product.all
    end

  end

  def new
    @company_options = Company.all.map{|p| [ p.name, p.id ] }
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render 'show'
    else
      render 'new'
    end
  end

  def show
     @product = Product.find(params[:id])
     @current_profile = current_user.id
     @review = Review.new
  end

  def edit
     @product = Product.find(params[:id])
  end

  def update
     @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product), notice: "product updated successfully"
    else
      render 'edit', notice: "Invalid entry. Please try again."
    end
  end

  def destroy
    @product = Product.find_by(params[:id])
    @product.destroy
    render 'index'
  end

private

  def product_params
    params.require(:product).permit(:name, :description, :price, :company_id, :avatar, :tag_list, :product_details, :ordering_details)
  end

end
