class CourseDriverConnection < ApplicationRecord
    belongs_to :driver
    belongs_to :course
end
