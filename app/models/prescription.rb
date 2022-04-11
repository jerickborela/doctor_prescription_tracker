class Prescription < ApplicationRecord
  belongs_to :doctor
  has_many :medicine

  accepts_nested_attributes_for :medicine
end
