class CreateSubCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_categories do |t|
      t.string :name 
      t.integer :price 
      t.string :description 
      t.integer :amount 

      t.timestamps
    end
  end
end
