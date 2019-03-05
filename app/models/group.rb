class Group < ApplicationRecord
  has_many :group_members
  has_many :users, through: :group_members
end
