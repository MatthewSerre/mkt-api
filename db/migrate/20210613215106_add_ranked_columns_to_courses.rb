# frozen_string_literal: true

class AddRankedColumnsToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :is_ranked_week_one, :boolean, default: false
    add_column :courses, :is_ranked_week_two, :boolean, default: false
  end
end
