class Driver < ApplicationRecord
    validates :name, uniqueness: true, presence: true
    has_many :course_driver_connections, :class_name => "CourseDriverConnection"
    has_many :course_driver_connection_level3s, :class_name => "CourseDriverConnectionLevel3"
    has_many :course_driver_connection_level6s, :class_name => "CourseDriverConnectionLevel6"
    has_many :favorite_courses_level_1, :through => :course_driver_connections, :source => :course
    has_many :favorite_courses_level_3, :through => :course_driver_connection_level3s, :source => :course
    has_many :favorite_courses_level_6, :through => :course_driver_connection_level6s, :source => :course
end