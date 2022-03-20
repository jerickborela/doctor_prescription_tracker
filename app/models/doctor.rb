class Doctor < ApplicationRecord
    validate :name, presence: true
end
