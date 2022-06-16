class AddFavoriteToCourseDriverConnection < ActiveRecord::Migration[6.1]
  def change
    add_column :course_driver_connections, :favorite, :boolean
  end
end
