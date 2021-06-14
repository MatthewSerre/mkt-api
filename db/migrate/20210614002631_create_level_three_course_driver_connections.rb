class CreateLevelThreeCourseDriverConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :level_three_course_driver_connections do |t|
      t.integer :course_id
      t.integer :driver_id
      t.timestamps
    end
  end
end
