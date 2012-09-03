class AddCoverToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :cover_id, :integer
  end
end
