class GliderSerializer < ActiveModel::Serializer
  attributes :position, :name, :debut_tour, :date_added, :is_daily_select, :is_in_pipes, :special_skill, :favorite_courses_base, :favorite_courses_level_3, :favorite_courses_level_6, :favored_courses
end
