class ChangeNameForBrand < ActiveRecord::Migration[6.1]
  def change
    rename_column :sneakers, :brand, :brand_id
  end
end
