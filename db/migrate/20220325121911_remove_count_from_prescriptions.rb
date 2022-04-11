class RemoveCountFromPrescriptions < ActiveRecord::Migration[6.1]
  def change
    remove_column :prescriptions, :count, :integer
  end
end
