class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to events_path
    else
      render :edit
    end
  end

  def destroy
    Event.find(params[:id]).destroy
    redirect_to events_path
  end

  def add_relevence
    @event = Event.find(params[:id])
    @event.relevence += 1
    @event.save
    redirect_to event_path(@event)
  end

  def sub_relevence
    @event = Event.find(params[:id])
    @event.relevence -= 1
    @event.save
    redirect_to event_path(@event)
  end

  private

  def event_params
    params.require(:event).permit(:message, :relevence)
  end
end
