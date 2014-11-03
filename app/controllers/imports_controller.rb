class ImportsController < ApplicationController

  before_filter :authenticate 

  # GET /imports/new
  def new
    @season = Season.new
  end

  # POST /imports
  def create
    csv = params[:imports][:csv]

    episodes = csv.split("\n")

    episodes.each do |episode|
      #Staffel;Folge;Sort;Titel;Beschreibung;TreehouseofHorror;
      data = episode.split(";")

      create_season(data[0].to_i)
      create_epiode(data)

    end

    redirect_to '/admin/imports/new', notice: 'Import erfolgreich erstellt' + episodes.size.to_s
  end

  def create_season(number)
    season = Season.find_by_number(number)
    if !season
      season = Season.new
      season.number = number
      season.save
    end
  end

  def create_epiode(data)
    episode = Episode.find_by_number(data[1].to_i)
    if !episode
      episode = Episode.new
    end
    season = Season.find_by_number(data[0].to_i)

    episode.season_id = season.id
    episode.title = data[3].to_s
    episode.number = data[1].to_i
    episode.sort = data[2].to_i
    
    treehouseofhorror = false
    if data[5].to_s.length > 1
      treehouseofhorror = true
    end
    episode.treehouseofhorror = treehouseofhorror
    episode.lead = data[4].to_s
    episode.save
  end

end
