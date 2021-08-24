# frozen_string_literal: true

class LevelThreeCourseKartConnection < ApplicationRecord
  belongs_to :course
  belongs_to :kart
end
