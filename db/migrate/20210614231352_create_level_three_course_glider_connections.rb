# frozen_string_literal: true

class CreateLevelThreeCourseGliderConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :level_three_course_glider_connections do |t|
      t.integer :course_id
      t.integer :glider_id

      t.timestamps
    end
  end
end
