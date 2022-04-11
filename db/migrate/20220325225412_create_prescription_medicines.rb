class CreatePrescriptionMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :prescription_medicines do |t|
      t.references :medicine, null: false, foreign_key: true
      t.references :prescription, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
