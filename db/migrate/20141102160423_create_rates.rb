class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
    	t.belongs_to :episodes

    	t.decimal	:value # 1-10
     	t.integer	:author

     	t.timestamps
    end
  end
end
