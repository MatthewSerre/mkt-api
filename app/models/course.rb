class Course < ApplicationRecord
    validates :name, uniqueness: true, presence: true
end
