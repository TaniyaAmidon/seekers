class AddAcceptedToGroupMember < ActiveRecord::Migration[5.2]
  def change
     add_column :group_members, :accepted, :boolean, default: false
  end
end
