class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :debut_tour, :date_added, :debut_game, :debut_system, :is_reverse, :is_trick, :default_top_shelf_drivers, :mid_shelf_drivers

  def default_top_shelf_drivers
    object.top_shelf_driver_names
  end

  def mid_shelf_drivers
    object.mid_shelf_driver_names
  end
end
