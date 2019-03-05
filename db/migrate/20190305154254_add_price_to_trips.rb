class AddPriceToTrips < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :price
    add_monetize :trips, :price, currency: { present: false }
  end
end
