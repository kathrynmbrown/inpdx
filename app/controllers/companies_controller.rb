class CompaniesController < ApplicationController

  def home
  end

  def index
    if params[:tag]
      @companies = Company.tagged_with(params[:tag])
      @events = Event.tagged_with(params[:tag])
    else
      @companies = Company.all
      @events = Event.all
    end

  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      render 'show'
    else
      render 'new'
    end
  end

  def show
     @company = Company.find(params[:id])
     @current_profile = current_user.id
     @review = Review.new
  end

  def edit
     @company = Company.find(params[:id])
  end

  def update
     @company = Company.find(params[:id])
    if @company.update(company_params)
      redirect_to company_path(@company), notice: "company updated successfully"
    else
      render 'edit', notice: "Invalid entry. Please try again."
    end
  end

  def destroy
    @company = Company.find_by(params[:id])
    @company.destroy
    render 'index'
  end

private
  def company_params
    params.require(:company).permit(:name, :description, :address, :phone, :tag_list, :longitude, :latitude, :avatar)
  end
end
