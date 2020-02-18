class User < ApplicationRecord
    has_secure_password

    has_many :notes
    has_many :asthma_control_tests
    has_many :rxes
    has_many :medicines, through: :rxes
end
