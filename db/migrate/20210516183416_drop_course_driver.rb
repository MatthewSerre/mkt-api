class DropCourseDriver < ActiveRecord::Migration[6.1]
  def up
    drop_table :courses_drivers
  end
end
