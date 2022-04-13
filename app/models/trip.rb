class Trip < ApplicationRecord
    belongs_to :user
    validates :location, uniqueness: true
end