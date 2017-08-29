class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
    	t.string :name
    	t.string :category
    	t.string :description
    	t.string :delivery
    	t.string :location
    	t.string :pricebase
    	t.integer :price
    	t.integer :deposit
    	t.datetime :period
      t.timestamps
    end
  end
end
