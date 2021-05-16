class CreateCourseDriverConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :course_driver_connections do |t|
      t.belongs_to :course
      t.belongs_to :driver
      t.boolean :is_favored, default: false
      t.boolean :is_favorite, default: false
      t.boolean :is_favorite_at_level_3, default: false
      t.boolean :is_favorite_at_level_6, default: false
      t.timestamps
    end
  end
end
