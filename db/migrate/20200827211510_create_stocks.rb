class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :name 
      t.string :ticker 
      t.string :type 
      t.integer :price 
      t.string :description 
      t.integer :amount

      t.timestamps
    end
  end
end
