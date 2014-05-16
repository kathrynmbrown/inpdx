class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @place_options = Place.all.map{|p| [ p.name, p.id ] }
    @organization_options = Organization.all.map{|o| [ o.name, o.id ] }
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
    params.require(:event).permit(:name, :description, :contact, :tag_list, :long_description, :event_date, :start_time, :end_time, :organization_id, :place_id )
  end
end
