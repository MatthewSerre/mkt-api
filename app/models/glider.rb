class Glider < ApplicationRecord
    validates :name, uniqueness: true, presence: true
end
