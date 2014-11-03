class Author < ActiveRecord::Base

	#****************************************************************************************************
	# Validation

	validates_presence_of :name, :message => "Bitte einen Namen angeben"
	validates_uniqueness_of :name, :message => "Name bereits vorhanden"

end
