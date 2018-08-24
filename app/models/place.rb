class Place < ApplicationRecord
    has_many :hotels
    has_many :attractions
end
