class Trip < ApplicationRecord
  belongs_to :group
  belongs_to :user
  belongs_to :activity
  validates :title, :description, :destination, presence: true
  monetize :price_cents
  geocoded_by :destination
  after_validation :geocode, if: :will_save_change_to_destination?
end
