class Course < ApplicationRecord
    has_many :course_driver_connections
    has_many :drivers, :through => :course_driver_connections

    validates :name, uniqueness: true
end
