# frozen_string_literal: true

class RemoveIsRankedFromCourses < ActiveRecord::Migration[6.1]
  def change
    remove_column :courses, :is_ranked
  end
end
