class AddCommentsToPrescriptionMedicines < ActiveRecord::Migration[6.1]
  def change
    add_column :prescription_medicines, :comment, :string
  end
end
