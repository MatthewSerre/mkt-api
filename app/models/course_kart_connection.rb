# frozen_string_literal: true

class CourseKartConnection < ApplicationRecord
  belongs_to :course
  belongs_to :kart

  validates :level, inclusion: { in: [1, 3, 6, 8] }
end
