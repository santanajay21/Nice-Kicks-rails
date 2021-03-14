class Brands < ActiveRecord::Migration[6.1]
  def change
      create_table :brands do |t|
        t.string :name 
        t.integer:year_founded
      end
  end
end
