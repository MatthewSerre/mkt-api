class CourseSerializer < ActiveModel::Serializer
  attributes :name, :debut_tour, :date_added, :debut_game, :debut_system, :is_ranked_week_1, :is_ranked_week_2, :is_reverse, :is_trick, :level_one_top_shelf_drivers, :level_three_top_shelf_drivers, :level_six_top_shelf_drivers
end