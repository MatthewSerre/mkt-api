# frozen_string_literal: true

class Kart < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  has_many :course_kart_connections, class_name: "CourseKartConnection"
  has_many :courses, through: :course_kart_connections, source: :course

  def level_one_favorite_courses
    course_kart_connections.where(level: 1, favorite: true).map(&:course)
  end

  def level_three_favorite_courses
    course_kart_connections.where(level: 3, favorite: true).map(&:course)
  end

  def level_six_favorite_courses
    course_kart_connections.where(level: 6, favorite: true).map(&:course)
  end

  def level_eight_favorite_courses
    course_kart_connections.where(level: 8, favorite: true).map(&:course)
  end

  def level_one_favored_courses
    course_kart_connections.where(level: 1, favorite: false).map(&:course)
  end

  def level_three_favored_courses
    course_kart_connections.where(level: 3, favorite: false).map(&:course)
  end

  def level_six_favored_courses
    course_kart_connections.where(level: 6, favorite: false).map(&:course)
  end

  def level_eight_favored_courses
    course_kart_connections.where(level: 8, favorite: false).map(&:course)
  end
end
