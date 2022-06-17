# frozen_string_literal: true

class GliderSerializer < ActiveModel::Serializer
  attributes :position, :name, :debut_tour, :date_added, :is_daily_select, :is_in_pipes, :special_skill,
             :favored_courses
end
