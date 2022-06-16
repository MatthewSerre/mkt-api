class CreateCourseKartConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :course_kart_connections do |t|
      t.references :course, null: false, foreign_key: true
      t.references :kart, null: false, foreign_key: true
      t.integer :level
      t.boolean :favorite

      t.timestamps
    end
  end
end
