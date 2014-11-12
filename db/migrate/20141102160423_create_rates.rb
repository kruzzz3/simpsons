class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
    	t.belongs_to :episode

    	t.decimal	:value # 1-10
     	t.integer	:author

     	t.timestamps
    end
  end
end
