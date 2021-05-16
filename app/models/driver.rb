class Driver < ApplicationRecord
    has_many :course_driver_connections
    has_many :courses, :through => :course_driver_connections
end