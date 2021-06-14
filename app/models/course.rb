class Course < ApplicationRecord
    validates :name, uniqueness: true, presence: true
    has_many :level_one_course_driver_connections, :class_name => "LevelOneCourseDriverConnection"
    has_many :level_three_course_driver_connections, :class_name => "LevelThreeCourseDriverConnection"
    has_many :level_six_course_driver_connections, :class_name => "LevelSixCourseDriverConnection"
    has_many :level_one_top_shelf_drivers, :through => :level_one_course_driver_connections, :source => :driver
    has_many :level_three_top_shelf_drivers, :through => :level_three_course_driver_connections, :source => :driver
    has_many :level_six_top_shelf_drivers, :through => :level_six_course_driver_connections, :source => :driver

    has_many :top_shelf_karts_level_1, :class_name => "Kart"
    has_many :top_shelf_karts_level_3, :class_name => "Kart"
    has_many :top_shelf_karts_level_6, :class_name => "Kart"

    has_many :top_shelf_gliders_level_1, :class_name => "Glider"
    has_many :top_shelf_gliders_level_3, :class_name => "Glider"
    has_many :top_shelf_gliders_level_6, :class_name => "Glider"
end
