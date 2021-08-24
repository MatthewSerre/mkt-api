# frozen_string_literal: true

class AddFavoriteCoursesBaseToDrivers < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :favorite_courses_base, :text, array: true, default: []
  end
end
