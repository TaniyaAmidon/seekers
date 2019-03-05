class Group < ApplicationRecord
  has_many :trips
  has_many :users, through: :group_members
end
