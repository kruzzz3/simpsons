class OverviewEpisodesController < ApplicationController

  # GET /overview_episodes
  def index
    @episodes = Episode.order("number ASC").all
    @count = @episodes.size
  end

  # GET /overview_episodes/1
  def show
    @episode = Episode.find(params[:id])
  end

  # GET /overview_episodes/1/rand
  def rand
  	rate = params[:rate]
  	if !rate
  		rate = 1
  	end
  	rate = rate.to_f
    episodes = Episode.all.shuffle

    episodes.each do |episode|
    	if episode.rates.average(:value).to_f >= rate
    		@episode = episode
    		break
    	end
    end

  end

end
