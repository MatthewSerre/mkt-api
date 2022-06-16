class CreateCourseDriverConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :course_driver_connections do |t|
      t.references :course, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
