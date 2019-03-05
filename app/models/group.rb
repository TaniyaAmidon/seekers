class Group < ApplicationRecord
  has_many :users, through: :group_members
end
