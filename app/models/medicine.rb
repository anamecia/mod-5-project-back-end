class Medicine < ApplicationRecord
    has_many :rxes
    has_many :users, through: :rxes
end
