# frozen_string_literal: true

class LevelThreeCourseDriverConnection < ApplicationRecord
  belongs_to :course
  belongs_to :driver
end
