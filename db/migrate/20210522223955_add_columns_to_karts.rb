class AddColumnsToKarts < ActiveRecord::Migration[6.1]
  def change
    add_column :karts, :date_added, :datetime
    add_column :karts, :debut_tour, :string
  end
end
