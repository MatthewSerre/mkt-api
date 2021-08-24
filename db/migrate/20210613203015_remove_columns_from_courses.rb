# frozen_string_literal: true

class RemoveColumnsFromCourses < ActiveRecord::Migration[6.1]
  def change
    remove_column :courses, :top_shelf_drivers_base
    remove_column :courses, :top_shelf_drivers_level_3
    remove_column :courses, :top_shelf_drivers_level_6
    remove_column :courses, :top_shelf_karts_base
    remove_column :courses, :top_shelf_karts_level_3
    remove_column :courses, :top_shelf_karts_level_6
    remove_column :courses, :mid_shelf_drivers
    remove_column :courses, :mid_shelf_karts
  end
end
