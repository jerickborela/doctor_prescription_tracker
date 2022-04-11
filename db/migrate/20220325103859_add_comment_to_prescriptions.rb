class AddCommentToPrescriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :prescriptions, :comment, :string
  end
end
