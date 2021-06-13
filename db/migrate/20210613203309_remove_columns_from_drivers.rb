class RemoveColumnsFromDrivers < ActiveRecord::Migration[6.1]
  def change
    remove_column :drivers, :favorite_courses_base
    remove_column :drivers, :favorite_courses_level_3
    remove_column :drivers, :favorite_courses_level_6
    remove_column :drivers, :favored_courses
  end
end
