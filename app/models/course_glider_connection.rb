# frozen_string_literal: true

class CourseGliderConnection < ApplicationRecord
  belongs_to :course
  belongs_to :glider

  validates :level, inclusion: { in: [1, 3, 6, 8] }
end
