class SearchsController < ApplicationController

  # GET /searchs
  def index
  	if params[:searchs]
	  	@value_min = params[:searchs][:value_min].to_f
	    @value_max = params[:searchs][:value_max].to_f
	else
		@value_min = 1.0
		@value_max = 10.0
	end

    temp_episodes = Episode.order("number ASC").all

    @episodes = Array.new
    temp_episodes.each do |episode|
    	if episode.rates.average(:value).to_f >= @value_min && episode.rates.average(:value).to_f <= @value_max
    		 @episodes << episode
    	end
    end

    @count = @episodes.size
  end

end
