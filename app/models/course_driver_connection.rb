class CourseDriverConnection < ApplicationRecord
    belongs_to :course
    belongs_to :driver

    validates :driver_id, uniqueness: { scope: :course_id }
end
