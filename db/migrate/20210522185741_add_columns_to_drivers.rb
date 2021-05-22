class AddColumnsToDrivers < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :favorite_courses_level_3, :text, array: true, default: []
    add_column :drivers, :favorite_courses_level_6, :text, array: true, default: []
    add_column :drivers, :favored_courses, :text, array: true, default: []
  end
end
