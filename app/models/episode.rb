class Episode < ActiveRecord::Base
	belongs_to :season
	has_many :rates, dependent: :destroy

	#****************************************************************************************************
	# Validation

	validates_presence_of :season_id, :message => "Bitte eine Staffel angeben"
	validates_numericality_of :season_id, :message => "Staffelnummer muss eine Zahl sein"

	validates_presence_of :title, :message => "Bitte einen Titel angeben"

	validates_presence_of :number, :message => "Bitte die Nummer der Folge angeben"
	validates_numericality_of :number, :message => "Nummer muss eine Zahl sein"
	validates_uniqueness_of :number, :message => "Nummer bereits vorhanden"

end
