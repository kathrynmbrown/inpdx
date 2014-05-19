class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      render 'show'
    else
      render 'new'
    end
  end

  def show
     @organization = Organization.find_by_id(params[:id])
  end

  def edit
     @organization = Organization.find(params[:id])
  end

  def update
     @organization = Organization.find(params[:id])
    if @organization.update(organization_params)
      redirect_to organization_path(@organization), notice: "organization updated successfully"
    else
      render 'edit', notice: "Invalid entry. Please try again."
    end
  end

  def destroy
    @organization = Organization.find_by(params[:id])
    @organization.destroy
    render 'index'
  end

private
  def organization_params
    params.require(:organization).permit(:name, :description, :contact, :tag_list, :avatar, :background_image)
  end
end
