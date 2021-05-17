class Driver < ApplicationRecord
    has_many :course_driver_connections
    has_many :courses, :through => :course_driver_connections

    def self.find_driver_and_favorite_courses(driver_name, level)
        driver = Driver.find_by(name: driver_name)
        level = level
        binding.pry
        case level
        when 6..7
            level6 = CourseDriverConnection.where(driver_id: driver.id, is_favorite_at_level_6: true)
            level3 = CourseDriverConnection.where(driver_id: driver.id, is_favorite_at_level_3: true)
            base = CourseDriverConnection.where(driver_id: driver.id, is_favorite: true)
            connections = level6 + level3 + base
        when 3..5
            level3 = CourseDriverConnection.where(driver_id: driver.id, is_favorite_at_level_3: true)
            base = CourseDriverConnection.where(driver_id: driver.id, is_favorite: true)
            connections = level3 + base
        else
            connections = CourseDriverConnection.where(driver_id: driver.id, is_favorite: true)
        end
        favorite_courses = []
        connections.each do |connection|
            course = Course.find(connection.course.id)
            favorite_courses << course
        end
        favorite_courses.sort_by {|obj| obj.id}
    end
end