class AddIsRankedToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :is_ranked, :boolean, default: false
  end
end
