class AddMessageToOrganiserToGroupMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :group_members, :message_to_organiser, :text
  end
end
