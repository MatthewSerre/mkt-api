class Driver < ApplicationRecord
    has_many :course_driver_connections
    has_many :courses, :through => :course_driver_connections

    validates :name, uniqueness: true

    def favorite_courses(level = 0)
        case level
        when 6..7
            connections = CourseDriverConnection.where(driver_id: self.id, is_favorite_at_level_6: true)
        when 3..5
            connections = CourseDriverConnection.where(driver_id: self.id, is_favorite_at_level_3: true)
        when 1..2
            connections = CourseDriverConnection.where(driver_id: self.id, is_favorite: true)
        else
            level_6 = CourseDriverConnection.where(driver_id: self.id, is_favorite_at_level_6: true)
            level_3 = CourseDriverConnection.where(driver_id: self.id, is_favorite_at_level_3: true)
            base = CourseDriverConnection.where(driver_id: self.id, is_favorite: true)
            connections = level_6 + level_3 + base
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