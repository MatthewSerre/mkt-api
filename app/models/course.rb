# frozen_string_literal: true

class Course < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  # Driver connections
  has_many :course_driver_connections, dependent: :restrict_with_exception
  has_many :drivers, through: :course_driver_connections, source: :driver

  # Kart connections
  has_many :course_kart_connections, class_name: "CourseKartConnection", dependent: :restrict_with_exception
  has_many :karts, through: :course_kart_connections, source: :kart

  # Glider connections
  has_many :course_glider_connections, class_name: "CourseGliderConnection", dependent: :restrict_with_exception
  has_many :gliders, through: :course_glider_connections, source: :glider

  # Class methods

  def self.debut_system(blah)
    where("debut_system LIKE ?", blah).order(:name)
  end

  # Instance methods

  def level_one_favorite_drivers
    course_driver_connections.where(level: 1).map(&:driver)
  end

  def level_three_favorite_drivers
    course_driver_connections.where(level: 3, favorite: true).map(&:driver)
  end

  def level_six_favorite_drivers
    course_driver_connections.where(level: 6, favorite: true).map(&:driver)
  end

  def level_eight_favorite_drivers
    course_driver_connections.where(level: 8, favorite: true).map(&:driver)
  end
end
