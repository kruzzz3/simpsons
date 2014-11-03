class SeasonsController < ApplicationController

  before_filter :authenticate 

  # GET /seasons
  def index
    @seasons = Season.order("number ASC").all
    @count = @seasons.size
  end

  # GET /seasons/1
  def show
    @season = Season.find(params[:id])
  end

  # GET /seasons/new
  def new
    @season = Season.new
  end

  # GET /seasons/1/edit
  def edit
    @season = Season.find(params[:id])
  end

  # POST /seasons
  def create
    @season = Season.new
    @season.number = params[:season][:number]

    if @season.save
      redirect_to '/admin/seasons/' + @season.id.to_s, notice: 'Staffel erfogreich erstellt'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /seasons/1
  def update
    @season = Season.find(params[:id])
    @season.number = params[:season][:number]

    if @season.save
      redirect_to '/admin/seasons/' + @season.id.to_s, notice: 'Staffel erfogreich bearbeitet'
    else
      render action: 'edit'
    end
  end

end
