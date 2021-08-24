# frozen_string_literal: true

class LevelSixCourseGliderConnection < ApplicationRecord
  belongs_to :course
  belongs_to :glider
end
