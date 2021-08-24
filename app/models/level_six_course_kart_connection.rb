# frozen_string_literal: true

class LevelSixCourseKartConnection < ApplicationRecord
  belongs_to :course
  belongs_to :kart
end
