class Trip < ApplicationRecord
  belongs_to :group
  belongs_to :user
  belongs_to :activity
  validates :title, :description, :destination, presence: true
  monetize :price_cents
end
