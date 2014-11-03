module ApplicationHelper

	def self.get_description_from_boolean(boolean)
		if boolean
			return "Ja"
		end
		return "Nein"
	end

	def self.get_number(season, episode)
		season = "0" + season.to_s if season < 10
		episode = "0" + episode.to_s if episode < 10

		return "S" + season.to_s + "E" + episode.to_s
	end
end
