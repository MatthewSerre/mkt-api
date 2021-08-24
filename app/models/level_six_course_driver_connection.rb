# frozen_string_literal: true

class LevelSixCourseDriverConnection < ApplicationRecord
  belongs_to :course
  belongs_to :driver
end
