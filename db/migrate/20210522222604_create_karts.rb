class CreateKarts < ActiveRecord::Migration[6.1]
  def change
    create_table :karts do |t|
      t.string :name
      t.string :rarity
      t.string :special_skill
      t.text :favorite_courses_base, array: true, default: []
      t.text :favorite_courses_level_3, array: true, default: []
      t.text :favorite_courses_level_6, array: true, default: []
      t.text :favored_courses, array: true, default: []
      t.boolean :is_daily_select

      t.timestamps
    end
  end
end
