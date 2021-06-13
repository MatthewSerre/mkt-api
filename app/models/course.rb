class Course < ApplicationRecord
    validates :name, uniqueness: true, presence: true
    has_many :course_driver_connections, :class_name => "CourseDriverConnection"
    has_many :course_driver_connection_level3s, :class_name => "CourseDriverConnectionLevel3"
    has_many :course_driver_connection_level6s, :class_name => "CourseDriverConnectionLevel6"
    has_many :top_shelf_drivers_level_1, :through => :course_driver_connections, :source => :driver
    has_many :top_shelf_drivers_level_3, :through => :course_driver_connections, :source => :driver
    has_many :top_shelf_drivers_level_6, :through => :course_driver_connections, :source => :driver

    has_many :top_shelf_karts_level_1, :class_name => "Kart"
    has_many :top_shelf_karts_level_3, :class_name => "Kart"
    has_many :top_shelf_karts_level_6, :class_name => "Kart"

    has_many :top_shelf_gliders_level_1, :class_name => "Glider"
    has_many :top_shelf_gliders_level_3, :class_name => "Glider"
    has_many :top_shelf_gliders_level_6, :class_name => "Glider"
end
