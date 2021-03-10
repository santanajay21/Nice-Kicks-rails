class CreateSneakers < ActiveRecord::Migration[6.1]
  def change
    create_table :sneakers do |t|
      t.string :brand
      t.string :color
      t.string :condition
      t.float :price

      t.timestamps
    end
  end
end
