class AddPositionToKarts < ActiveRecord::Migration[6.1]
  def change
    add_column :karts, :position, :integer
  end
end
