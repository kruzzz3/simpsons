class EpisodesController < ApplicationController

  before_filter :authenticate 

  # GET /episodes
  def index
    @episodes = Episode.order("number ASC").all
    @count = @episodes.size
  end

  # GET /episodes/1
  def show
    @episode = Episode.find(params[:id])
  end

  # GET /episodes/new
  def new
    @episode = Episode.new
  end

  # GET /episodes/1/edit
  def edit
    @episode = Episode.find(params[:id])
  end

  # POST /episodes
  def create
    @episode = Episode.new
    @episode.season_id = params[:episode][:season_id]
    @episode.title = params[:episode][:title]
    @episode.number = params[:episode][:number]
    @episode.sort = params[:episode][:sort]
    @episode.treehouseofhorror = params[:episode][:treehouseofhorror]
    @episode.lead = params[:episode][:lead]
    @episode.description = params[:episode][:description]

    if @episode.save
      redirect_to '/admin/episodes/' + @episode.id.to_s, notice: 'Folge erfogreich erstellt'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /episodes/1
  def update
    @episode = Episode.find(params[:id])
    @episode.season_id = params[:episode][:season_id]
    @episode.title = params[:episode][:title]
    @episode.number = params[:episode][:number]
    @episode.sort = params[:episode][:sort]
    @episode.treehouseofhorror = params[:episode][:treehouseofhorror]
    @episode.lead = params[:episode][:lead]
    @episode.description = params[:episode][:description]

    if @episode.save
      redirect_to '/admin/episodes/' + @episode.id.to_s, notice: 'Folge erfogreich erstellt'
    else
      render action: 'edit'
    end
  end

end
