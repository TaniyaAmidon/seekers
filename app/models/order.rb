class Order < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  monetize :amount_cents
end
