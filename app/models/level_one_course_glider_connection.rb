# frozen_string_literal: true

class LevelOneCourseGliderConnection < ApplicationRecord
  belongs_to :course
  belongs_to :glider
end
