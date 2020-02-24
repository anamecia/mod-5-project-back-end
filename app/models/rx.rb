class Rx < ApplicationRecord
    belongs_to :user
    belongs_to :medicine 
    has_many :taken_doses
end
