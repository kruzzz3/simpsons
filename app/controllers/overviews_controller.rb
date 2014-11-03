class OverviewsController < ApplicationController

  # GET /overviews
  def index
    @episodes = Episode.order("number ASC").all
    @count = @episodes.size
  end

  # GET /overviews/1
  def show
    @episode = Episode.find(params[:id])
  end

end
