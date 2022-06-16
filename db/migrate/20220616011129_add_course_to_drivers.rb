class AddCourseToDrivers < ActiveRecord::Migration[6.1]
  def change
    add_reference :drivers, :course, foreign_key: true
  end
end
