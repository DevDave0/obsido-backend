class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :comment 
      t.string :title
      t.integer :user_id 
      t.integer :message_board_id

      t.timestamps
    end
  end
end
