# frozen_string_literal: true

class KartSerializer < ActiveModel::Serializer
  attributes :position, :name, :rarity, :special_skill, :is_daily_select, :debut_tour, :date_added, :is_in_pipes
end
