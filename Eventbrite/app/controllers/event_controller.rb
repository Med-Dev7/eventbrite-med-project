class EventController < ApplicationController
  def index
    @events = Event.all
    # <p class="card-text"><%= @users_event.first_name %></p>
  end

  def new
  end

  def create
  end

  def show
    @event = Event.all.find(params[:id])
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
