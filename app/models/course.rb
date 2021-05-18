class Course < ApplicationRecord
    has_many :course_driver_connections
    has_many :drivers, :through => :course_driver_connections

    def top_shelf_driver_names(level = 0)
        case level
        when 6..7
            connections = CourseDriverConnection.where(is_favorite_at_level_6: true)
        when 3..5
            connections = CourseDriverConnection.where(is_favorite_at_level_3: true)
        when 1..2
            connections = CourseDriverConnection.where(is_favorite: true)
        else
            level_6 = CourseDriverConnection.where(is_favorite_at_level_6: true)
            level_3 = CourseDriverConnection.where(is_favorite_at_level_3: true)
            base = CourseDriverConnection.where(is_favorite: true)
            connections = level_6 + level_3 + base
        end
        top_shelf_driver_names = []
        connections.each do |connection|
            driver = Driver.find(connection.driver.id)
            top_shelf_driver_names << driver.name
        end
        top_shelf_driver_names.sort
    end

    def mid_shelf_driver_names
        connections = CourseDriverConnection.where(course_id: self.id, is_favored: true)
        mid_shelf_driver_names = []
        connections.each do |connection|
            driver = Driver.find(connection.driver.id)
            mid_shelf_driver_names << driver.name
        end
        mid_shelf_driver_names.sort
    end
end
