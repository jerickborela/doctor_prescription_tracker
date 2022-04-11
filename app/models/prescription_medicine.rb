class PrescriptionMedicine < ApplicationRecord
  belong :medicine
  belongs_to :prescription

  accepts_nested_attributes_for :medicine
end
