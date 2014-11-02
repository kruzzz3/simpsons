module ApplicationHelper

	def self.get_description_from_boolean(boolean)
		if boolean
			return "Ja"
		end
		return "Nein"
	end
end
