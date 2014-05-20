class TagsController < ApplicationController

  def home
    @tags = Tag.all
    @places = Place.all
    @organizations = Organization.all
    @events = Event.by_month("April", field: :event_date)
  end

  def index
    @tags = Tag.all
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
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      render 'show'
    else
      render 'new'
    end
  end

  def show
     @tag = Tag.find_by_id(params[:id])
  end

  def edit
     @tag = Tag.find(params[:id])
  end

  def update
     @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      redirect_to tag_path(@tag), notice: "tag updated successfully"
    else
      render 'edit', notice: "Invalid entry. Please try again."
    end
  end

  def destroy
    @tag = Tag.find_by(params[:id])
    @tag.destroy
    render 'index'
  end

private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
