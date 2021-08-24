# frozen_string_literal: true

class LevelOneCourseDriverConnection < ApplicationRecord
  belongs_to :course
  belongs_to :driver
end
