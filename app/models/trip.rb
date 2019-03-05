class Trip < ApplicationRecord
  belongs_to :group
  belongs_to :user
  validates :description, :destination, presence: true
  monetize :price_cents
end
