# frozen_string_literal: true

class LevelThreeCourseGliderConnection < ApplicationRecord
  belongs_to :course
  belongs_to :glider
end
