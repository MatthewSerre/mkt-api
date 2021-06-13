class CourseSerializer < ActiveModel::Serializer
  attributes :name, :debut_tour, :date_added, :debut_game, :debut_system, :is_ranked, :is_reverse, :is_trick, :top_shelf_drivers_level_1, :top_shelf_drivers_level_3, :top_shelf_drivers_level_6
end