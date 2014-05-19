class RsvpsController < ApplicationController
  def index
    @rsvps = Rsvp.all
  end


  def new
    @rsvp = Rsvp.new
  end

  def create
    @events = Event.all
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      render 'show'
    else
      render 'new'
    end
  end

  def show
    @rsvp = Rsvp.find_by_id(params[:id])
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:profile_id, :event_id)
  end

end
