# frozen_string_literal: true

class RemoveColumnsFromKarts < ActiveRecord::Migration[6.1]
  def change
    remove_column :karts, :favorite_courses_base
    remove_column :karts, :favorite_courses_level_3
    remove_column :karts, :favorite_courses_level_6
    remove_column :karts, :favored_courses
  end
end
