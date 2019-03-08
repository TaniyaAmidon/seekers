class AddGroupToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_reference :chat_rooms, :group, foreign_key: true
  end
end
