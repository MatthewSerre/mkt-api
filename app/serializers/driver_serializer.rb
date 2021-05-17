class DriverSerializer < ActiveModel::Serializer
  # def attributes(*args)
  #   object.attributes.symbolize_keys
  # end

  attributes :default_favorite_courses, :favored_courses

  def default_favorite_courses
    object.favorite_courses(1)
  end

  def favored_courses
    object.favored_courses
  end

end
