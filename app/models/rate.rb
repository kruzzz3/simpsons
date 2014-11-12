class Rate < ActiveRecord::Base
	belongs_to :episodes

	#****************************************************************************************************
	# Validation

	validates_presence_of :episode_id, :message => "Bitte eine Episode angeben"
	validates_numericality_of :episode_id, :message => "Episodennummer muss eine Zahl sein"

	validates_presence_of :value, :message => "Bitte einen Wert angeben"
	validates_numericality_of :value, :message => "Wert muss eine Zahl sein"

	validates_presence_of :author, :message => "Bitte einen Autor angeben"

end
