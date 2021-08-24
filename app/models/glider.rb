# frozen_string_literal: true

class Glider < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :level_one_course_glider_connections, class_name: "LevelOneCourseGliderConnection"
  has_many :level_three_course_glider_connections, class_name: "LevelThreeCourseGliderConnection"
  has_many :level_six_course_glider_connections, class_name: "LevelSixCourseGliderConnection"
  has_many :level_one_favorite_courses, through: :level_one_course_glider_connections, source: :course
  has_many :level_three_favorite_courses, through: :level_three_course_glider_connections, source: :course
  has_many :level_six_favorite_courses, through: :level_six_course_glider_connections, source: :course
end
