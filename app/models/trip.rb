class Trip < ApplicationRecord
  belongs_to :group
  belongs_to :user
  belongs_to :activity
  validates :description, :destination, presence: true
  monetize :price_cents
end
