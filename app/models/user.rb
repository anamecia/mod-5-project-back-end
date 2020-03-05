class User < ApplicationRecord
    has_secure_password

    has_many :notes
    has_many :asthma_control_tests
    has_many :rxes
    has_many :medicines, through: :rxes

    validates :username, {presence: true, uniqueness: true, length: { minimum: 2 }}
    validates :password, length: {minimum: 6}
    validates :date_of_birth, {presence: true}
    validate :date_of_birth_can_not_be_in_the_future
    

    def date_of_birth_can_not_be_in_the_future
        if date_of_birth
            if date_of_birth > Time.now
                errors.add(:date_of_birth, "can't be in the future")
            end
        end
    end 
end
