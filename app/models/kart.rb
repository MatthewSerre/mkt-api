class Kart < ApplicationRecord
    validates :name, uniqueness: true, presence: true
    has_many :level_one_course_kart_connections, :class_name => "LevelOneCourseKartConnection"
    has_many :level_three_course_kart_connections, :class_name => "LevelThreeCourseKartConnection"
    has_many :level_six_course_kart_connections, :class_name => "LevelSixCourseKartConnection"
    has_many :level_one_favorite_courses, :through => :level_one_course_kart_connections, :source => :course
    has_many :level_three_favorite_courses, :through => :level_three_course_kart_connections, :source => :course
    has_many :level_six_favorite_courses, :through => :level_six_course_kart_connections, :source => :course
end
