class ChangeDataTypeForBrand < ActiveRecord::Migration[6.1]
  def change
    change_column :sneakers ,:brand ,:integer
  end
end
