class CreateMidShelves < ActiveRecord::Migration[6.1]
  def change
    create_table :mid_shelves do |t|
      t.belongs_to :course
      t.belongs_to :driver
      t.timestamps
    end
  end
end
