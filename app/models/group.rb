class Group < ApplicationRecord
  has_many :trips
  has_many :group_members
  has_many :users, through: :group_members
  has_many :chat_rooms
end
