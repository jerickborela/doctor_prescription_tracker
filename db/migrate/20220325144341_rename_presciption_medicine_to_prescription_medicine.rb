class RenamePresciptionMedicineToPrescriptionMedicine < ActiveRecord::Migration[6.1]
  def change
    rename_table :presciption_medicines, :prescription_medicines
  end
end
