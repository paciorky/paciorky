class RenameItemColumnInAsset < ActiveRecord::Migration
  def up
    rename_column :assets, :item_id, :product_id
  end

  def down
    rename_column :assets, :product_id, :item_id
  end
end
