class CreateCryptos < ActiveRecord::Migration[6.0]
  def change
    create_table :cryptos do |t|
      t.string :name 
      t.string :ticker 
      t.integer :price 
      t.string :description 
      t.integer :amount 
      t.integer :category_id

      t.timestamps
    end
  end
end
