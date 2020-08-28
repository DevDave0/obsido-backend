class CreateCryptos < ActiveRecord::Migration[6.0]
  def change
    create_table :cryptos do |t|
      t.string :name 
      t.string :ticker 
      t.integer :price 
      t.integer :max_supply 
      t.string :description 
      t.integer :amount 

      t.timestamps
    end
  end
end
