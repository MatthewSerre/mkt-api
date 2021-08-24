# frozen_string_literal: true

class AddKartColumnsToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :top_shelf_karts_base, :text, array: true, default: []
    add_column :courses, :top_shelf_karts_level_3, :text, array: true, default: []
    add_column :courses, :top_shelf_karts_level_6, :text, array: true, default: []
    add_column :courses, :mid_shelf_karts, :text, array: true, default: []
  end
end
