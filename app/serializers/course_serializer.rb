class CourseSerializer < ActiveModel::Serializer
  cache key: 'course', expires_in: 24.hours

  attributes :name, :debut_tour, :date_added, :debut_game, :debut_system, :is_reverse, :is_trick
  # :top_shelf_drivers_base, :top_shelf_drivers_level_3, :top_shelf_drivers_level_6, :mid_shelf_drivers

  def top_shelf_drivers_base
    object.top_shelf_driver_names(1)
  end

  def top_shelf_drivers_level_3
    object.top_shelf_driver_names(3)
  end

  def top_shelf_drivers_level_6
    object.top_shelf_driver_names(6)
  end

  def mid_shelf_drivers
    object.mid_shelf_driver_names
  end
end