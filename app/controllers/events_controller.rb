class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render 'show'
    else
      render 'new'
    end
  end

  def show
     @event = Event.find_by_id(params[:id])
  end

  def edit
     @event = Event.find(params[:id])
  end

  def update
     @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event), notice: "event updated successfully"
    else
      render 'edit', notice: "Invalid entry. Please try again."
    end
  end

  def destroy
    @event = Event.find_by(params[:id])
    @event.destroy
    render 'index'
  end

private
  def event_params
    params.require(:event).permit(:name, :description, :contact, :tag_list, :address, :latitude, :longitude, :long_description, :event_date, :start_time, :end_time)
  end
end
