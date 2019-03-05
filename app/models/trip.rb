class Trip < ApplicationRecord
  belongs_to :group
  belongs_to :user
  validates :description, :destination, presence: true
  validates :price, presence: true
end
