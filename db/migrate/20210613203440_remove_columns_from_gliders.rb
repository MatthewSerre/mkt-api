# frozen_string_literal: true

class RemoveColumnsFromGliders < ActiveRecord::Migration[6.1]
  def change
    remove_column :gliders, :favorite_courses_base
    remove_column :gliders, :favorite_courses_level_3
    remove_column :gliders, :favorite_courses_level_6
    remove_column :gliders, :favored_courses
  end
end
