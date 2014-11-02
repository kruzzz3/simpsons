class SeasonsController < ApplicationController

  # GET /seasons
  def index
    @seasons = Season.all
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
      redirect_to @season, notice: 'Staffel erfogreich erstellt'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /seasons/1
  def update
    @season = Season.find(params[:id])
    @season.number = params[:season][:number]

    if @season.save
      redirect_to @season, notice: 'Staffel erfogreich bearbeitet'
    else
      render action: 'edit'
    end
  end

  # DELETE /seasons/1
  def destroy
    @season = Season.find(params[:id])
    @season.destroy
    redirect_to seasons_url, notice: 'Staffel erfolgreich gelöscht'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_season
      @season = Season.find(params[:id])
    end
end
