class AddCountToPrescriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :prescriptions, :count, :integer
  end
end
