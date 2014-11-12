class RatesController < ApplicationController

  before_filter :authenticate 

  # GET /rates
  def index
    @episodes = Episode.order("number ASC").all
    @count = @episodes.size
  end

  # GET /rates/new
  def new
    @rate = Rate.new
    @episode = Episode.find(params[:id])
  end

  # POST /authors
  def create
    @episode = Episode.find(params[:rate][:episode_id])
    @rate = Rate.new
    @rate.episode_id = params[:rate][:episode_id].to_i
    @rate.author = params[:rate][:author]
    @rate.value = params[:rate][:value]

    if @rate.save
      redirect_to '/rates/', notice: 'Folge erfogreich bewertet'
    else
      render action: 'new', :id => params[:rate][:episode_id].to_s
    end
  end

end
