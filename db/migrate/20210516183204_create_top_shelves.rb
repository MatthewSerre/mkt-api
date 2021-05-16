class CreateTopShelves < ActiveRecord::Migration[6.1]
  def change
    create_table :top_shelves do |t|
      t.belongs_to :course
      t.belongs_to :driver
      t.boolean :is_level_3, default: false
      t.boolean :is_level_6, default: false
      t.timestamps
    end
  end
end
