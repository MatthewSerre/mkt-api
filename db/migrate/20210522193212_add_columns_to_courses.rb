# frozen_string_literal: true

class AddColumnsToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :top_shelf_drivers_base, :text, array: true, default: []
    add_column :courses, :top_shelf_drivers_level_3, :text, array: true, default: []
    add_column :courses, :top_shelf_drivers_level_6, :text, array: true, default: []
    add_column :courses, :mid_shelf_drivers, :text, array: true, default: []
  end
end
