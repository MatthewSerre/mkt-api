class DropMidShelves < ActiveRecord::Migration[6.1]
  def change
    drop_table :mid_shelves
  end
end
