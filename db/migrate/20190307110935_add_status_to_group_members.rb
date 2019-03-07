class AddStatusToGroupMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :group_members, :status, :string
  end
end
