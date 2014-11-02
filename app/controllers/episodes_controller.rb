class EpisodesController < ApplicationController

  before_filter :authenticate 

  # GET /episodes
  def index
    @episodes = Episode.all
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
    if params[:episode][:season_id] == 1 or params[:episode][:season_id] == "1"
      a = 1
      while(a < 100)
        @episode = Episode.new
        @episode.season_id = 1
        @episode.title = "Titel " + a.to_s
        @episode.number = a
        @episode.treehouseofhorror = false
        @episode.save
        a = a + 1
      end
      redirect_to '/admin'
    else
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
