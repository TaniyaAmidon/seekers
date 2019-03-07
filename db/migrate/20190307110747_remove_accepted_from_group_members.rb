class RemoveAcceptedFromGroupMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :group_members, :accepted, :boolean
  end
end
