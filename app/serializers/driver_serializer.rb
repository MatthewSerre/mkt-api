class DriverSerializer < ActiveModel::Serializer
  attributes :name, :rarity, :special_skill, :debut_tour, :date_added, :favorite_courses_base, :favorite_courses_level_3, :favorite_courses_level_6, :favored_courses, :has_extended_tongue, :has_horns, :has_mustache, :has_shell, :has_three_hairs, :is_baby, :is_daily_select, :is_kong, :is_koopaling, :wears_crown, :wears_dress, :wears_earrings, :wears_gloves, :wears_hat, :wears_helment, :wears_ribbon, :wears_short_sleeves, :wears_tie, :created_at, :updated_at

  def favorite_courses_base
    object.favorite_courses(1)
  end

  def favorite_courses_level_3
    object.favorite_courses(3)
  end

  def favorite_courses_level_6
    object.favorite_courses(6)
  end

  def favored_courses
    object.favored_courses
  end

end
