# frozen_string_literal: true

class KartSerializer < ActiveModel::Serializer
  attributes :position, :name, :rarity, :special_skill, :favorite_courses_base, :favorite_courses_level_3, :favorite_courses_level_6, :favored_courses, :is_daily_select, :debut_tour, :date_added, :is_in_pipes
end
