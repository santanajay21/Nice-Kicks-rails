class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :sneaker_id 
      t.string :notes 


      t.timestamps
    end
  end
end
