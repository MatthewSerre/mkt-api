class DriverSerializer < ActiveModel::Serializer
  attributes :position, :name, :rarity, :special_skill, :debut_tour, :date_added, :favorite_courses_base, :favorite_courses_level_3, :favorite_courses_level_6, :favored_courses, :baby, :crown, :daily_select, :dress, :earrings, :extended_tongue, :gloves, :hat, :helmet, :horns, :kong, :koopaling, :mustache, :ribbon, :shell, :short_sleeves, :three_hairs, :tie

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
