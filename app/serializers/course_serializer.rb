class CourseSerializer < ActiveModel::Serializer
  attributes :id, :drivers

  def top_shelf_drivers
    object.top_shelf_driver_names
  end
end
