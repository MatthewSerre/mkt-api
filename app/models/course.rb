# frozen_string_literal: true

class Course < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  # Driver connections
  has_many :level_one_course_driver_connections, class_name: "LevelOneCourseDriverConnection"
  has_many :level_three_course_driver_connections, class_name: "LevelThreeCourseDriverConnection"
  has_many :level_six_course_driver_connections, class_name: "LevelSixCourseDriverConnection"
  has_many :level_one_top_shelf_drivers, through: :level_one_course_driver_connections, source: :driver
  has_many :level_three_top_shelf_drivers, through: :level_three_course_driver_connections, source: :driver
  has_many :level_six_top_shelf_drivers, through: :level_six_course_driver_connections, source: :driver

  # Kart connections
  has_many :level_one_course_kart_connections, class_name: "LevelOneCourseKartConnection"
  has_many :level_three_course_kart_connections, class_name: "LevelThreeCourseKartConnection"
  has_many :level_six_course_kart_connections, class_name: "LevelSixCourseKartConnection"
  has_many :level_one_top_shelf_karts, through: :level_one_course_kart_connections, source: :kart
  has_many :level_three_top_shelf_karts, through: :level_three_course_kart_connections, source: :kart
  has_many :level_six_top_shelf_karts, through: :level_six_course_kart_connections, source: :kart

  # Glider connections
  has_many :level_one_course_glider_connections, class_name: "LevelOneCourseGliderConnection"
  has_many :level_three_course_glider_connections, class_name: "LevelThreeCourseGliderConnection"
  has_many :level_six_course_glider_connections, class_name: "LevelSixCourseGliderConnection"
  has_many :level_one_top_shelf_gliders, through: :level_one_course_glider_connections, source: :glider
  has_many :level_three_top_shelf_gliders, through: :level_three_course_glider_connections, source: :glider
  has_many :level_six_top_shelf_gliders, through: :level_six_course_glider_connections, source: :glider
end
