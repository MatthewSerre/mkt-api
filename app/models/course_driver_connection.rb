# frozen_string_literal: true

class CourseDriverConnection < ApplicationRecord
  belongs_to :course
  belongs_to :driver

  validates :level, inclusion: { in: [1, 3, 6, 8] }
end
