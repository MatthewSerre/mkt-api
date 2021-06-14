class CreateLevelOneCourseKartConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :level_one_course_kart_connections do |t|
      t.integer :course_id
      t.integer :kart_id

      t.timestamps
    end
  end
end
