class CreateGliders < ActiveRecord::Migration[6.1]
  def change
    create_table :gliders do |t|
      t.string :name
      t.string :debut_tour
      t.datetime :date_added
      t.boolean :is_daily_select
      t.boolean :is_all_clear_pipe
      t.string :special_skill
      t.text :favorite_courses_base, array: true, default: []
      t.text :favorite_courses_level_3, array: true, default: []
      t.text :favorite_courses_level_6, array: true, default: []
      t.text :favored_courses

      t.timestamps
    end
  end
end
