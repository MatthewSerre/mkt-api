# frozen_string_literal: true

class Driver < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :level_one_course_driver_connections, class_name: 'LevelOneCourseDriverConnection'
  has_many :level_three_course_driver_connections, class_name: 'LevelThreeCourseDriverConnection'
  has_many :level_six_course_driver_connections, class_name: 'LevelSixCourseDriverConnection'
  has_many :level_one_favorite_courses, through: :level_one_course_driver_connections, source: :course
  has_many :level_three_favorite_courses, through: :level_three_course_driver_connections, source: :course
  has_many :level_six_favorite_courses, through: :level_six_course_driver_connections, source: :course
end
