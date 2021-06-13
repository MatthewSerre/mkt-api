class CreateCourseDriverConnectionLevel6s < ActiveRecord::Migration[6.1]
  def change
    create_table :course_driver_connection_level6s do |t|
      t.integer :course_id
      t.integer :driver_id

      t.timestamps
    end
  end
end
