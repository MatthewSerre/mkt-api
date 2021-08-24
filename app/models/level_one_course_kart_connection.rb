# frozen_string_literal: true

class LevelOneCourseKartConnection < ApplicationRecord
  belongs_to :course
  belongs_to :kart
end
