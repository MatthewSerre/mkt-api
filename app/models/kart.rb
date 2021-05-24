class Kart < ApplicationRecord
    validates :name, uniqueness: true, presence: true
end
