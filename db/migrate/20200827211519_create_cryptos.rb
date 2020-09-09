class CreateCryptos < ActiveRecord::Migration[6.0]
  def change
    create_table :cryptos do |t|
      t.string :name 
      t.string :ticker 
      t.string :description 
      t.float :amount 
      t.integer :category_id

      t.timestamps
    end
  end
end
