class AddIndicesToModels < ActiveRecord::Migration[7.0]
  def change
    add_index :courses, :name, unique: true
    add_index :drivers, :name, unique: true
    add_index :karts, :name, unique: true
    add_index :gliders, :name, unique: true
  end
end
