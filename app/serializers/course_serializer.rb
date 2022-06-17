# frozen_string_literal: true

class CourseSerializer < ActiveModel::Serializer
  attributes :name, :debut_tour, :date_added, :debut_game, :debut_system, :is_ranked_week_one, :is_ranked_week_two,
             :is_reverse, :is_trick, :level_one_favorite_drivers, :level_three_favorite_drivers,
             :level_six_favorite_drivers
end
