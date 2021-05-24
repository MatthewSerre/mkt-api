class Driver < ApplicationRecord
    validates :name, uniqueness: true, presence: true
end