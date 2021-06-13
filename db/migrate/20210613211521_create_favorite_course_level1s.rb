class CreateFavoriteCourseLevel1s < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_course_level1s do |t|

      t.timestamps
    end
  end
end
