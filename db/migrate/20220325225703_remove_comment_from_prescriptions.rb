class RemoveCommentFromPrescriptions < ActiveRecord::Migration[6.1]
  def change
    remove_column :prescriptions, :comment, :string
  end
end
