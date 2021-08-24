# frozen_string_literal: true

class CreateLevelSixCourseGliderConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :level_six_course_glider_connections do |t|
      t.integer :course_id
      t.integer :glider_id

      t.timestamps
    end
  end
end
