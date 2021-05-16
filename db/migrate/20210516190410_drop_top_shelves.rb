class DropTopShelves < ActiveRecord::Migration[6.1]
  def change
    drop_table :top_shelves
  end
end
