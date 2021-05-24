class CourseSerializer < ActiveModel::Serializer
  cache key: 'course', expires_in: 24.hours

  attributes :name, :debut_tour, :date_added, :debut_game, :debut_system, :is_ranked, :is_reverse, :is_trick, :top_shelf_drivers_base, :top_shelf_drivers_level_3, :top_shelf_drivers_level_6, :mid_shelf_drivers
end