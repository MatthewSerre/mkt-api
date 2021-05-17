class Driver < ApplicationRecord
    has_many :course_driver_connections
    has_many :courses, :through => :course_driver_connections

    def favorite_courses(level)
        case level
        when 6..7
            level6 = CourseDriverConnection.where(driver_id: self.id, is_favorite_at_level_6: true)
            level3 = CourseDriverConnection.where(driver_id: self.id, is_favorite_at_level_3: true)
            base = CourseDriverConnection.where(driver_id: self.id, is_favorite: true)
            connections = level6 + level3 + base
        when 3..5
            level3 = CourseDriverConnection.where(driver_id: self.id, is_favorite_at_level_3: true)
            base = CourseDriverConnection.where(driver_id: self.id, is_favorite: true)
            connections = level3 + base
        else
            connections = CourseDriverConnection.where(driver_id: self.id, is_favorite: true)
        end
        favorite_courses = []
        connections.each do |connection|
            course = Course.find(connection.course.id)
            favorite_courses << course
        end
        favorite_courses.sort_by {|obj| obj.id}
    end

    def favored_courses
        connections = CourseDriverConnection.where(driver_id: self.id, is_favored: true)
        favored_courses = []
        connections.each do |connection|
            course = Course.find(connection.course.id)
            favorite_courses << course
        end
        favored_courses.sort_by {|obj| obj.id}
    end
end