class AddRankedColumnsToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :is_ranked_week_1, :boolean, default: false
    add_column :courses, :is_ranked_week_2, :boolean, default: false
  end
end
