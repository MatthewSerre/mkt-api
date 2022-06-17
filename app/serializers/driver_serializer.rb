# frozen_string_literal: true

class DriverSerializer < ActiveModel::Serializer
  attributes :position, :name, :rarity, :special_skill, :debut_tour, :date_added, :level_one_favorite_courses,
             :level_three_favorite_courses, :level_six_favorite_courses, :is_daily_select, :is_in_pipes, :baby, :crown,
             :dress, :earrings, :extended_tongue, :gloves, :hat, :helmet, :horns, :kong, :koopaling, :mustache,
             :ribbon, :shell, :short_sleeves, :three_hairs, :tie
end
