class Season < ActiveRecord::Base
	has_many :episodes, dependent: :destroy

	#****************************************************************************************************
	# Validation

	validates_presence_of :number, :message => "Bitte eine Staffelnummer angeben"
	validates_numericality_of :number, :message => "Staffelnummer muss eine Zahl sein"
	validates_uniqueness_of :number, :message => "Staffelnummer bereits vorhanden"
end
