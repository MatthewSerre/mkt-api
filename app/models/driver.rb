# frozen_string_literal: true

class Driver < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  has_many :course_driver_connections, class_name: "CourseDriverConnection", dependent: :restrict_with_exception
  has_many :courses, through: :course_driver_connections, source: :course

  def level_one_favorite_courses
    course_driver_connections.where(level: 1).map(&:course)
  end

  def level_three_favorite_courses
    course_driver_connections.where(level: 3).map(&:course)
  end

  def level_six_favorite_courses
    course_driver_connections.where(level: 6).map(&:course)
  end

  def level_eight_favorite_courses
    course_driver_connections.where(level: 8).map(&:course)
  end
end
