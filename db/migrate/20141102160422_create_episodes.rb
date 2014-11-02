class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
    	t.belongs_to   :season

    	t.string       :title
     	t.integer      :number	# episode number over all episodes
     	t.integer	   :sort	# episode number over the season
     	t.boolean      :treehouseofhorror
     	t.text		   :lead
     	t.text		   :description

     	t.timestamps
    end
  end
end
